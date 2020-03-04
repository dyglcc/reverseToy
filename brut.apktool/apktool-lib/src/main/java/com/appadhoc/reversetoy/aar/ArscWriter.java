package com.appadhoc.reversetoy.aar;
/**
 * Copyright (C) 2019 Ryszard Wiśniewski <brut.alll@gmail.com>
 * Copyright (C) 2019 Connor Tumbleson <connor.tumbleson@gmail.com>
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import android.util.TypedValue;
import brut.androlib.AndrolibException;
import brut.androlib.res.data.*;
import brut.androlib.res.data.value.*;
import brut.androlib.res.decoder.StringBlock;
import brut.util.Duo;
import brut.androlib.res.data.ResTable;
import com.appadhoc.reversetoy.utils.Utils;
import com.google.common.io.LittleEndianDataInputStream;

import java.io.*;
import java.math.BigInteger;
import java.util.*;
import java.util.logging.Logger;

import com.mindprod.ledatastream.LEDataInputStream;
import com.mindprod.ledatastream.LEDataOutputStream;
//import com.tencent.mm.androlib.res.decoder.ARSCDecoder;
import com.tencent.mm.util.ExtDataOutput;
import com.tencent.mm.util.ExtDataInput;
import org.apache.commons.io.input.CountingInputStream;

/**
 * @author Ryszard Wiśniewski <brut.alll@gmail.com>
 */
public class ArscWriter {
//    public static ARSCData decode(InputStream arscStream, boolean findFlagsOffsets, boolean keepBroken, ResTable resTable)
//            throws AndrolibException {
//        return decode(arscStream, findFlagsOffsets, keepBroken, new ResTable());
//    }


//    public static ArscWriter INSTANCE = new ArscWriter();

//    public static ArscWriter getInstance() {
//        return INSTANCE;
//    }

    public ARSCData decode(ResPackage[] pkgs, ResTable resTable, ArscWriter writer) {

        return new ARSCData(pkgs, writer.mFlagsOffsets == null
                ? null
                : writer.mFlagsOffsets.toArray(new FlagsOffset[0]), resTable);

    }

    //    mIn = new ExtDataInput(new LEDataInputStream(arscStream));
//    mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(mApkDecoder.getOutTempARSCFile(), false)));
//    mPkgs = pkgs;
//    mPkgsLenghtChange = new int[pkgs.length];
    public ArscWriter(InputStream arscStream_, ResTable resTable, boolean storeFlagsOffsets, boolean keepBroken, File arscOutFile) throws FileNotFoundException {
        BufferedInputStream bfi = new BufferedInputStream(arscStream_);
        mCountIn = new CountingInputStream(bfi);
        if (storeFlagsOffsets) {
            mFlagsOffsets = new ArrayList<FlagsOffset>();
        } else {
            mFlagsOffsets = null;
        }
        // We need to explicitly cast to DataInput as otherwise the constructor is ambiguous.
        // We choose DataInput instead of InputStream as ExtDataInput wraps an InputStream in
        // a DataInputStream which is big-endian and ignores the little-endian behavior.
        mIn = new ExtDataInput((DataInput) new LittleEndianDataInputStream(mCountIn));
        mResTable = resTable;
        mKeepBroken = keepBroken;
        // add by dyg
        mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(arscOutFile, false)));
        this.arscOutFile = arscOutFile;
    }

    public void setPackages(ResPackage[] mPkgs) {
        this.mPkgs = mPkgs;
        mPkgsLenghtChange = new int[mPkgs.length];
    }

    public ResPackage[] readTableHeader() throws IOException, AndrolibException {
        nextChunkCheckType(Header.TYPE_TABLE);
        int packageCount = mIn.readInt();

        mTableStrings = StringBlock.read(mIn);


        ResPackage[] packages = new ResPackage[packageCount];

        nextChunk();
        for (int i = 0; i < packageCount; i++) {
            mTypeIdOffset = 0;
            packages[i] = readTablePackage();
        }
        return packages;
    }

    private ResPackage readTablePackage() throws IOException, AndrolibException {
        checkChunkType(Header.TYPE_PACKAGE);
        int id = mIn.readInt();

        if (id == 0) {
            // This means we are dealing with a Library Package, we should just temporarily
            // set the packageId to the next available id . This will be set at runtime regardless, but
            // for Apktool's use we need a non-zero packageId.
            // AOSP indicates 0x02 is next, as 0x01 is system and 0x7F is private.
            id = 2;
            if (mResTable.getPackageOriginal() == null && mResTable.getPackageRenamed() == null) {
                mResTable.setSharedLibrary(true);
            }
        }

        String name = mIn.readNullEndedString(128, true);
        /* typeStrings */
        mIn.skipInt();
        /* lastPublicType */
        mIn.skipInt();
        /* keyStrings */
        mIn.skipInt();
        /* lastPublicKey */
        mIn.skipInt();

        // TypeIdOffset was added platform_frameworks_base/@f90f2f8dc36e7243b85e0b6a7fd5a590893c827e
        // which is only in split/new applications.
        int splitHeaderSize = (2 + 2 + 4 + 4 + (2 * 128) + (4 * 5)); // short, short, int, int, char[128], int * 4
        if (mHeader.headerSize == splitHeaderSize) {
            mTypeIdOffset = mIn.readInt();
        }

        if (mTypeIdOffset > 0) {
            LOGGER.warning("Please report this application to Apktool for a fix: https://github.com/iBotPeaches/Apktool/issues/1728");
        }

        mTypeNames = StringBlock.read(mIn);
        mSpecNames = StringBlock.read(mIn);

        mResId = id << 24;
        mPkg = new ResPackage(mResTable, id, name);

        // add stringpool
        mPkg.setmTypeNames(mTypeNames);
        mPkg.setmSpecNames(mSpecNames);

        nextChunk();
        while (mHeader.type == Header.TYPE_LIBRARY) {
            readLibraryType();
        }

        while (mHeader.type == Header.TYPE_SPEC_TYPE) {
            readTableTypeSpec();
        }

        return mPkg;
    }

    private void readLibraryType() throws AndrolibException, IOException {
        checkChunkType(Header.TYPE_LIBRARY);
        int libraryCount = mIn.readInt();

        int packageId;
        String packageName;

        for (int i = 0; i < libraryCount; i++) {
            packageId = mIn.readInt();
            packageName = mIn.readNullEndedString(128, true);
            LOGGER.info(String.format("Decoding Shared Library (%s), pkgId: %d", packageName, packageId));
        }

        while (nextChunk().type == Header.TYPE_TYPE) {
            readTableTypeSpec();
        }
    }

    private void readTableTypeSpec() throws AndrolibException, IOException {
        mTypeSpec = readSingleTableTypeSpec();
        addTypeSpec(mTypeSpec);

        int type = nextChunk().type;
        ResTypeSpec resTypeSpec;

        while (type == Header.TYPE_SPEC_TYPE) {
            resTypeSpec = readSingleTableTypeSpec();
            addTypeSpec(resTypeSpec);
            type = nextChunk().type;

            // We've detected sparse resources, lets record this so we can rebuild in that same format (sparse/not)
            // with aapt2. aapt1 will ignore this.
            if (!mResTable.getSparseResources()) {
                mResTable.setSparseResources(true);
            }
        }

        while (type == Header.TYPE_TYPE) {
            readTableType();

            // skip "TYPE 8 chunks" and/or padding data at the end of this chunk
            if (mCountIn.getCount() < mHeader.endPosition) {
                LOGGER.warning("Unknown data detected. Skipping: " + (mHeader.endPosition - mCountIn.getCount()) + " byte(s)");
                mCountIn.skip(mHeader.endPosition - mCountIn.getCount());
            }

            type = nextChunk().type;

            addMissingResSpecs();
        }
    }

    private ResTypeSpec readSingleTableTypeSpec() throws AndrolibException, IOException {
        checkChunkType(Header.TYPE_SPEC_TYPE);
        int id = mIn.readUnsignedByte();
        mIn.skipBytes(3);
        int entryCount = mIn.readInt();

        if (mFlagsOffsets != null) {
            mFlagsOffsets.add(new FlagsOffset(mCountIn.getCount(), entryCount));
        }

        /* flags */
        mIn.skipBytes(entryCount * 4);
        mTypeSpec = new ResTypeSpec(mTypeNames.getString(id - 1), mResTable, mPkg, id, entryCount);
        mPkg.addType(mTypeSpec);
        return mTypeSpec;
    }

    private ResType readTableType() throws IOException, AndrolibException {
        checkChunkType(Header.TYPE_TYPE);
        int typeId = mIn.readUnsignedByte() - mTypeIdOffset;
        if (mResTypeSpecs.containsKey(typeId)) {
            mResId = (0xff000000 & mResId) | mResTypeSpecs.get(typeId).getId() << 16;
            mTypeSpec = mResTypeSpecs.get(typeId);
        }

        int typeFlags = mIn.readByte();
        /* reserved */
        mIn.skipBytes(2);
        int entryCount = mIn.readInt();
        int entriesStart = mIn.readInt();
        mMissingResSpecs = new boolean[entryCount];
        Arrays.fill(mMissingResSpecs, true);

        ResConfigFlags flags = readConfigFlags();
        int position = (mHeader.startPosition + entriesStart) - (entryCount * 4);

        // For some APKs there is a disconnect between the reported size of Configs
        // If we find a mismatch skip those bytes.
        if (position != mCountIn.getCount()) {
            LOGGER.warning("Invalid data detected. Skipping: " + (position - mCountIn.getCount()) + " byte(s)");
            mIn.skipBytes(position - mCountIn.getCount());
        }

        if (typeFlags == 1) {
            LOGGER.info("Sparse type flags detected: " + mTypeSpec.getName());
        }
        int[] entryOffsets = mIn.readIntArray(entryCount);

        if (flags.isInvalid) {
            String resName = mTypeSpec.getName() + flags.getQualifiers();
            if (mKeepBroken) {
                LOGGER.warning("Invalid config flags detected: " + resName);
            } else {
                LOGGER.warning("Invalid config flags detected. Dropping resources: " + resName);
            }
        }

        mType = flags.isInvalid && !mKeepBroken ? null : mPkg.getOrCreateConfig(flags);
        HashMap<Integer, EntryData> offsetsToEntryData = new HashMap<Integer, EntryData>();

        for (int offset : entryOffsets) {
            if (offset == -1 || offsetsToEntryData.containsKey(offset)) {
                continue;
            }

            offsetsToEntryData.put(offset, readEntryData());
        }

        for (int i = 0; i < entryOffsets.length; i++) {
            if (entryOffsets[i] != -1) {
                mMissingResSpecs[i] = false;
                mResId = (mResId & 0xffff0000) | i;
                EntryData entryData = offsetsToEntryData.get(entryOffsets[i]);
                readEntry(entryData);
            }
        }

        return mType;
    }


    private EntryData readEntryData() throws IOException, AndrolibException {
        short size = mIn.readShort();
        if (size < 0) {
            throw new AndrolibException("Entry size is under 0 bytes.");
        }

        short flags = mIn.readShort();
        int specNamesId = mIn.readInt();
        ResValue value = (flags & ENTRY_FLAG_COMPLEX) == 0 ? readValue() : readComplexEntry();
        EntryData entryData = new EntryData();
        entryData.mFlags = flags;
        entryData.mSpecNamesId = specNamesId;
        entryData.mValue = value;
        return entryData;
    }

    private void readEntry(EntryData entryData) throws AndrolibException {
        int specNamesId = entryData.mSpecNamesId;
        ResValue value = entryData.mValue;

        if (mTypeSpec.isString() && value instanceof ResFileValue) {
            value = new ResStringValue(value.toString(), ((ResFileValue) value).getRawIntValue());
        }
        if (mType == null) {
            return;
        }

        ResID resId = new ResID(mResId);
        ResResSpec spec;
        if (mPkg.hasResSpec(resId)) {
            spec = mPkg.getResSpec(resId);

            if (spec.isDummyResSpec()) {
                removeResSpec(spec);

                spec = new ResResSpec(resId, mSpecNames.getString(specNamesId), mPkg, mTypeSpec);
                mPkg.addResSpec(spec);
                mTypeSpec.addResSpec(spec);
            }
        } else {
            spec = new ResResSpec(resId, mSpecNames.getString(specNamesId), mPkg, mTypeSpec);
            mPkg.addResSpec(spec);
            mTypeSpec.addResSpec(spec);
        }
        ResResource res = new ResResource(mType, spec, value);

        try {
            mType.addResource(res);
            spec.addResource(res);
        } catch (AndrolibException ex) {
            if (mKeepBroken) {
                mType.addResource(res, true);
                spec.addResource(res, true);
                LOGGER.warning(String.format("Duplicate Resource Detected. Ignoring duplicate: %s", res.toString()));
            } else {
                throw ex;
            }
        }
        mPkg.addResource(res);
    }

    private ResBagValue readComplexEntry() throws IOException, AndrolibException {
        int parent = mIn.readInt();
        int count = mIn.readInt();

        ResValueFactory factory = mPkg.getValueFactory();
        Duo<Integer, ResScalarValue>[] items = new Duo[count];
        ResIntBasedValue resValue;
        int resId;

        for (int i = 0; i < count; i++) {
            resId = mIn.readInt();
            resValue = readValue();

            if (resValue instanceof ResScalarValue) {
                items[i] = new Duo<Integer, ResScalarValue>(resId, (ResScalarValue) resValue);
            } else {
                resValue = new ResStringValue(resValue.toString(), resValue.getRawIntValue());
                items[i] = new Duo<Integer, ResScalarValue>(resId, (ResScalarValue) resValue);
            }
        }

        return factory.bagFactory(parent, items, mTypeSpec);
    }

    private ResIntBasedValue readValue() throws IOException, AndrolibException {
        /* size */
        mIn.skipCheckShort((short) 8);
        /* zero */
        mIn.skipCheckByte((byte) 0);
        byte type = mIn.readByte();
        int data = mIn.readInt();

        return type == TypedValue.TYPE_STRING
                ? mPkg.getValueFactory().factory(mTableStrings.getHTML(data), data)
                : mPkg.getValueFactory().factory(type, data, null);
    }

    private ResConfigFlags readConfigFlags() throws IOException, AndrolibException {
        int size = mIn.readInt();
        int read = 28;

        if (size < 28) {
            throw new AndrolibException("Config size < 28");
        }

        boolean isInvalid = false;

        short mcc = mIn.readShort();
        short mnc = mIn.readShort();

        char[] language = this.unpackLanguageOrRegion(mIn.readByte(), mIn.readByte(), 'a');
        char[] country = this.unpackLanguageOrRegion(mIn.readByte(), mIn.readByte(), '0');

        byte orientation = mIn.readByte();
        byte touchscreen = mIn.readByte();

        int density = mIn.readUnsignedShort();

        byte keyboard = mIn.readByte();
        byte navigation = mIn.readByte();
        byte inputFlags = mIn.readByte();
        /* inputPad0 */
        mIn.skipBytes(1);

        short screenWidth = mIn.readShort();
        short screenHeight = mIn.readShort();

        short sdkVersion = mIn.readShort();
        /* minorVersion, now must always be 0 */
        mIn.skipBytes(2);

        byte screenLayout = 0;
        byte uiMode = 0;
        short smallestScreenWidthDp = 0;
        if (size >= 32) {
            screenLayout = mIn.readByte();
            uiMode = mIn.readByte();
            smallestScreenWidthDp = mIn.readShort();
            read = 32;
        }

        short screenWidthDp = 0;
        short screenHeightDp = 0;
        if (size >= 36) {
            screenWidthDp = mIn.readShort();
            screenHeightDp = mIn.readShort();
            read = 36;
        }

        char[] localeScript = null;
        char[] localeVariant = null;
        if (size >= 48) {
            localeScript = readScriptOrVariantChar(4).toCharArray();
            localeVariant = readScriptOrVariantChar(8).toCharArray();
            read = 48;
        }

        byte screenLayout2 = 0;
        byte colorMode = 0;
        if (size >= 52) {
            screenLayout2 = mIn.readByte();
            colorMode = mIn.readByte();
            mIn.skipBytes(2); // reserved padding
            read = 52;
        }

        if (size >= 56) {
            mIn.skipBytes(4);
            read = 56;
        }

        int exceedingSize = size - KNOWN_CONFIG_BYTES;
        if (exceedingSize > 0) {
            byte[] buf = new byte[exceedingSize];
            read += exceedingSize;
            mIn.readFully(buf);
            BigInteger exceedingBI = new BigInteger(1, buf);

            if (exceedingBI.equals(BigInteger.ZERO)) {
                LOGGER.fine(String
                        .format("Config flags size > %d, but exceeding bytes are all zero, so it should be ok.",
                                KNOWN_CONFIG_BYTES));
            } else {
                LOGGER.warning(String.format("Config flags size > %d. Size = %d. Exceeding bytes: 0x%X.",
                        KNOWN_CONFIG_BYTES, size, exceedingBI));
                isInvalid = true;
            }
        }

        int remainingSize = size - read;
        if (remainingSize > 0) {
            mIn.skipBytes(remainingSize);
        }

        return new ResConfigFlags(mcc, mnc, language, country,
                orientation, touchscreen, density, keyboard, navigation,
                inputFlags, screenWidth, screenHeight, sdkVersion,
                screenLayout, uiMode, smallestScreenWidthDp, screenWidthDp,
                screenHeightDp, localeScript, localeVariant, screenLayout2,
                colorMode, isInvalid, size);
    }

    private char[] unpackLanguageOrRegion(byte in0, byte in1, char base) throws AndrolibException {
        // check high bit, if so we have a packed 3 letter code
        if (((in0 >> 7) & 1) == 1) {
            int first = in1 & 0x1F;
            int second = ((in1 & 0xE0) >> 5) + ((in0 & 0x03) << 3);
            int third = (in0 & 0x7C) >> 2;

            // since this function handles languages & regions, we add the value(s) to the base char
            // which is usually 'a' or '0' depending on language or region.
            return new char[]{(char) (first + base), (char) (second + base), (char) (third + base)};
        }
        return new char[]{(char) in0, (char) in1};
    }

    private String readScriptOrVariantChar(int length) throws AndrolibException, IOException {
        StringBuilder string = new StringBuilder(16);

        while (length-- != 0) {
            short ch = mIn.readByte();
            if (ch == 0) {
                break;
            }
            string.append((char) ch);
        }
        mIn.skipBytes(length);

        return string.toString();
    }

    private void addTypeSpec(ResTypeSpec resTypeSpec) {
        mResTypeSpecs.put(resTypeSpec.getId(), resTypeSpec);
    }

    private void addMissingResSpecs() throws AndrolibException {
        int resId = mResId & 0xffff0000;

        for (int i = 0; i < mMissingResSpecs.length; i++) {
            if (!mMissingResSpecs[i]) {
                continue;
            }

            ResResSpec spec = new ResResSpec(new ResID(resId | i), "APKTOOL_DUMMY_" + Integer.toHexString(i), mPkg, mTypeSpec);

            // If we already have this resID dont add it again.
            if (!mPkg.hasResSpec(new ResID(resId | i))) {
                mPkg.addResSpec(spec);
                mTypeSpec.addResSpec(spec);

                if (mType == null) {
                    mType = mPkg.getOrCreateConfig(new ResConfigFlags());
                }

                ResValue value = new ResBoolValue(false, 0, null);
                ResResource res = new ResResource(mType, spec, value);

                mPkg.addResource(res);
                mType.addResource(res);
                spec.addResource(res);
            }
        }
    }

    private void removeResSpec(ResResSpec spec) throws AndrolibException {
        if (mPkg.hasResSpec(spec.getId())) {
            mPkg.removeResSpec(spec);
            mTypeSpec.removeResSpec(spec);
        }
    }

    private Header nextChunk() throws IOException {
        return mHeader = Header.read(mIn, mCountIn);
    }

    private void checkChunkType(int expectedType) throws AndrolibException {
        if (mHeader.type != expectedType) {
            throw new AndrolibException(String.format("Invalid chunk type: expected=0x%08x, got=0x%08x",
                    expectedType, mHeader.type));
        }
    }

    private void nextChunkCheckType(int expectedType) throws IOException, AndrolibException {
        nextChunk();
        checkChunkType(expectedType);
    }

    private ExtDataInput mIn;
    //    add by dyg
    private ExtDataOutput mOut;

    public ResTable getmResTable() {
        return mResTable;
    }

    private ResTable mResTable;
    private CountingInputStream mCountIn;
    private List<FlagsOffset> mFlagsOffsets;
    private boolean mKeepBroken;

    private Header mHeader;

    public StringBlock getmTableStrings() {
        return mTableStrings;
    }

    public StringBlock getmTypeNames() {
        return mTypeNames;
    }

    public StringBlock getmSpecNames() {
        return mSpecNames;
    }

    private StringBlock mTableStrings;
    private StringBlock mTypeNames;
    private StringBlock mSpecNames;
    private ResPackage mPkg;
    private ResTypeSpec mTypeSpec;
    private ResType mType;
    private int mResId;
    private int mTypeIdOffset = 0;
    private boolean[] mMissingResSpecs;
    private HashMap<Integer, ResTypeSpec> mResTypeSpecs = new HashMap<>();

    private final static short ENTRY_FLAG_COMPLEX = 0x0001;
    private final static short ENTRY_FLAG_PUBLIC = 0x0002;
    private final static short ENTRY_FLAG_WEAK = 0x0004;
    private ARSCData aarData;

    public void mergeArsc(InputStream zipFile, File outPutArscFile, File srcApkfile,ARSCData aarData) throws FileNotFoundException {
        if (mCountIn != null) {
            mCountIn.resetCount();
        }
        this.aarData = aarData;
        BufferedInputStream bfi = new BufferedInputStream(zipFile);
        mCountIn = new CountingInputStream(bfi);
        mIn = new ExtDataInput((DataInput) new LittleEndianDataInputStream(mCountIn));
        mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(outPutArscFile, false)));
        try {
            writeTable(srcApkfile);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (AndrolibException e) {
            e.printStackTrace();
        } catch (com.tencent.mm.androlib.AndrolibException e) {
            e.printStackTrace();
        }
    }

    public static class Header {
        public final short type;
        public final int headerSize;
        public final int chunkSize;
        public final int startPosition;
        public final int endPosition;

        public Header(short type, int headerSize, int chunkSize, int headerStart) {
            this.type = type;
            this.headerSize = headerSize;
            this.chunkSize = chunkSize;
            this.startPosition = headerStart;
            this.endPosition = headerStart + chunkSize;
        }

        public static Header read(ExtDataInput in, CountingInputStream countIn) throws IOException {
            short type;
            int start = countIn.getCount();
            try {
                type = in.readShort();
            } catch (EOFException ex) {
                return new Header(TYPE_NONE, 0, 0, countIn.getCount());
            }
            return new Header(type, in.readShort(), in.readInt(), start);
        }

        public static Header readAndWriteHeader(ExtDataInput in, ExtDataOutput out, int diffSize, CountingInputStream countIn)
                throws IOException, AndrolibException {
            int start = countIn.getCount();
            short type;
            int size;

            short count;
            try {
                type = in.readShort();
                out.writeShort(type);
                count = in.readShort();
                out.writeShort(count);
                size = in.readInt();
                size -= diffSize;
                if (size <= 0) {
                    throw new AndrolibException(String.format("readAndWriteHeader size < 0: size=%d", size));
                }
                out.writeInt(size);
            } catch (EOFException ex) {
                return new Header(TYPE_NONE, 0, 0, start);
            }
            return new Header(type, count, size, start);
        }

        public final static short TYPE_NONE = -1, TYPE_TABLE = 0x0002,
                TYPE_PACKAGE = 0x0200, TYPE_TYPE = 0x0201, TYPE_SPEC_TYPE = 0x0202, TYPE_LIBRARY = 0x0203;
    }


//    public static class Header {
//
//        public final short type;
//        public final int chunkSize;
//
//        public Header(short type, int size) {
//            this.type = type;
//            this.chunkSize = size;
//        }
//
//        public static ARSCDecoder.Header read(com.tencent.mm.util.ExtDataInput in) throws IOException {
//            short type;
//            try {
//                type = in.readShort();
//                short count = in.readShort();
//                int size = in.readInt();
//                return new ARSCDecoder.Header(type, size);
//            } catch (EOFException ex) {
//                return new ARSCDecoder.Header(TYPE_NONE, 0);
//            }
//        }
//        public final static short TYPE_NONE = -1, TYPE_TABLE = 0x0002, TYPE_PACKAGE = 0x0200, TYPE_TYPE = 0x0201,
//                TYPE_SPEC_TYPE = 0x0202, TYPE_LIBRARY = 0x0203;
//        public static ARSCDecoder.Header readAndWriteHeader(com.tencent.mm.util.ExtDataInput in, ExtDataOutput out, int diffSize)
//                throws IOException, AndrolibException {
//            short type;
//            int size;
//            try {
//                type = in.readShort();
//                out.writeShort(type);
//                short count = in.readShort();
//                out.writeShort(count);
//                size = in.readInt();
//                size -= diffSize;
//                if (size <= 0) {
//                    throw new AndrolibException(String.format("readAndWriteHeader size < 0: size=%d", size));
//                }
//                out.writeInt(size);
//            } catch (EOFException ex) {
//                return new ARSCDecoder.Header(TYPE_NONE, 0);
//            }
//            return new ARSCDecoder.Header(type, size);
//        }
//
//    }


    public static class FlagsOffset {
        public final int offset;
        public final int count;

        public FlagsOffset(int offset, int count) {
            this.offset = offset;
            this.count = count;
        }
    }

    private class EntryData {
        public short mFlags;
        public int mSpecNamesId;
        public ResValue mValue;
    }

    private static final Logger LOGGER = Logger.getLogger(ArscWriter.class.getName());
    private static final int KNOWN_CONFIG_BYTES = 56;

    public static class ARSCData {

        public ARSCData(ResPackage[] packages, FlagsOffset[] flagsOffsets, ResTable resTable) {
            mPackages = packages;
            mFlagsOffsets = flagsOffsets;
            mResTable = resTable;
        }

        public FlagsOffset[] getFlagsOffsets() {
            return mFlagsOffsets;
        }

        public ResPackage[] getPackages() {
            return mPackages;
        }

        public ResPackage getOnePackage() throws AndrolibException {
            if (mPackages.length <= 0) {
                throw new AndrolibException("Arsc file contains zero packages");
            } else if (mPackages.length != 1) {
                int id = findPackageWithMostResSpecs();
                LOGGER.info("Arsc file contains multiple packages. Using package "
                        + mPackages[id].getName() + " as default.");

                return mPackages[id];
            }
            return mPackages[0];
        }

        public int findPackageWithMostResSpecs() {
            int count = mPackages[0].getResSpecCount();
            int id = 0;

            for (int i = 0; i < mPackages.length; i++) {
                if (mPackages[i].getResSpecCount() >= count) {
                    count = mPackages[i].getResSpecCount();
                    id = i;
                }
            }
            return id;
        }

        public ResTable getResTable() {
            return mResTable;
        }

        public ResPackage[] getmPackages() {
            return mPackages;
        }

        private final ResPackage[] mPackages;
        private final FlagsOffset[] mFlagsOffsets;
        private final ResTable mResTable;

        public StringBlock getmTableStrings() {
            return mTableStrings;
        }

        public void setmTableStrings(StringBlock mTableStrings) {
            this.mTableStrings = mTableStrings;
        }


        private StringBlock mTableStrings;

    }

    /// -------------------------write restable----------------------------------------------
    public static Map<Integer, String> mTableStringsResguard = new LinkedHashMap<>();
    private int mCurEntryID = -1;
    private int[] mPkgsLenghtChange;
    private ResPackage[] mPkgs;
    private int mTableLenghtChange = 0;
    private int mCurPackageID = -1;

    private File arscOutFile = null;

    public void writeTable(File tmpApkFile) throws IOException, AndrolibException, com.tencent.mm.androlib.AndrolibException {
        System.out.printf("writing new resources.arsc \n");
        mTableLenghtChange = 0;
        writeNextChunkCheck(Header.TYPE_TABLE, 0);
        int packageCount = mIn.readInt();
        mOut.writeInt(packageCount);

        mTableLenghtChange += com.tencent.mm.androlib.res.decoder.StringBlock.writeTableNameStringBlock(mIn, mOut, mTableStringsResguard,aarData);
        writeNextChunk(0);
        if (packageCount != mPkgs.length) {
            throw new AndrolibException(String.format("writeTable package count is different before %d, now %d",
                    mPkgs.length,
                    packageCount
            ));
        }
        for (int i = 0; i < packageCount; i++) {
            mCurPackageID = i;
            writePackage();
        }
        // 最后需要把整个的size重写回去
        reWriteTable(tmpApkFile);
    }

    private ArscWriter.Header writeNextChunkCheck(int expectedType, int diffSize) throws IOException, AndrolibException {
        mHeader = ArscWriter.Header.readAndWriteHeader(mIn, mOut, diffSize, mCountIn);
        if (mHeader.type != expectedType) {
            throw new AndrolibException(String.format("Invalid chunk type: expected=%d, got=%d", expectedType, mHeader.type));
        }
        return mHeader;
    }

    private Header writeNextChunk(int diffSize) throws IOException, AndrolibException {
        mHeader = Header.readAndWriteHeader(mIn, mOut, diffSize, mCountIn);
        return mHeader;
    }

    private void reWriteTable(File srcApkFile) throws AndrolibException, IOException {

        InputStream inputStream = Utils.FileUtils.getZipFile("resources.arsc", srcApkFile);
        BufferedInputStream bfi = new BufferedInputStream(inputStream);
        mCountIn = new CountingInputStream(bfi);
        mIn = new ExtDataInput(new LEDataInputStream(mCountIn));
        mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(arscOutFile, false)));

        writeNextChunkCheck(Header.TYPE_TABLE, mTableLenghtChange);
        int packageCount = mIn.readInt();
        mOut.writeInt(packageCount);
        com.tencent.mm.androlib.res.decoder.StringBlock.writeAll(mIn, mOut);

        for (int i = 0; i < packageCount; i++) {
            mCurPackageID = i;
            writeNextChunk(mPkgsLenghtChange[mCurPackageID]);
            mOut.writeBytes(mIn, mHeader.chunkSize - 8);
        }
//        mApkDecoder.getOutTempARSCFile().delete();
    }

    private void writePackage() throws IOException, AndrolibException {
        checkChunkType(Header.TYPE_PACKAGE);
        int id = (byte) mIn.readInt();
        mOut.writeInt(id);
        mResId = id << 24;
        //char_16的，一共256byte
        mOut.writeBytes(mIn, 256);
        /* typeNameStrings */
        mOut.writeInt(mIn.readInt());
        /* typeNameCount */
        mOut.writeInt(mIn.readInt());
        /* specNameStrings */
        mOut.writeInt(mIn.readInt());
        /* specNameCount */
        mOut.writeInt(mIn.readInt());
        com.tencent.mm.androlib.res.decoder.StringBlock.writeAll(mIn, mOut);

//        if (mPkgs[mCurPackageID].isCanResguard()) {
//            int specSizeChange = com.tencent.mm.androlib.res.decoder.StringBlock.writeSpecNameStringBlock(mIn,
//                    mOut,
//                    mPkgs[mCurPackageID].getSpecNamesBlock(),
//                    mCurSpecNameToPos
//            );
//            mPkgsLenghtChange[mCurPackageID] += specSizeChange;
//            mTableLenghtChange += specSizeChange;
//        } else {
        com.tencent.mm.androlib.res.decoder.StringBlock.writeAll(mIn, mOut);
//        }
        writeNextChunk(0);
        while (mHeader.type == Header.TYPE_LIBRARY) {
            writeLibraryType();
        }
        while (mHeader.type == Header.TYPE_SPEC_TYPE) {
            writeTableTypeSpec();
        }
    }

    private void writeLibraryType() throws AndrolibException, IOException {
        checkChunkType(Header.TYPE_LIBRARY);
        int libraryCount = mIn.readInt();
        mOut.writeInt(libraryCount);
        for (int i = 0; i < libraryCount; i++) {
            mOut.writeInt(mIn.readInt());/*packageId*/
            mOut.writeBytes(mIn, 256); /*packageName*/
        }
        writeNextChunk(0);
        while (mHeader.type == Header.TYPE_TYPE) {
            writeTableTypeSpec();
        }
    }

    private void writeTableTypeSpec() throws AndrolibException, IOException {
        checkChunkType(Header.TYPE_SPEC_TYPE);
        byte id = mIn.readByte();
        mOut.writeByte(id);
        mResId = (0xff000000 & mResId) | id << 16;
        mOut.writeBytes(mIn, 3);
        int entryCount = mIn.readInt();
        mOut.writeInt(entryCount);
        // 对，这里是用来描述差异性的！！！
        ///* flags */mIn.skipBytes(entryCount * 4);
        int[] entryOffsets = mIn.readIntArray(entryCount);
        mOut.writeIntArray(entryOffsets);

        while (writeNextChunk(0).type == Header.TYPE_TYPE) {
            writeConfig();
        }
    }

//    private void readConfig() throws IOException, AndrolibException {
//        checkChunkType(Header.TYPE_TYPE);
//        /* typeId */
//        mIn.skipInt();
//        int entryCount = mIn.readInt();
//        int entriesStart = mIn.readInt();
//        readConfigFlags();
//        int[] entryOffsets = mIn.readIntArray(entryCount);
//        for (int i = 0; i < entryOffsets.length; i++) {
//            mCurEntryID = i;
//            if (entryOffsets[i] != -1) {
//                mResId = (mResId & 0xffff0000) | i;
//                readEntry();
//            }
//        }
//    }

    private void writeConfig() throws IOException, AndrolibException {
        checkChunkType(Header.TYPE_TYPE);
        /* typeId */
        mOut.writeInt(mIn.readInt());
        /* entryCount */
        int entryCount = mIn.readInt();
        mOut.writeInt(entryCount);
        /* entriesStart */
        mOut.writeInt(mIn.readInt());

        writeConfigFlags();
        int[] entryOffsets = mIn.readIntArray(entryCount);
        mOut.writeIntArray(entryOffsets);

        for (int i = 0; i < entryOffsets.length; i++) {
            if (entryOffsets[i] != -1) {
                mResId = (mResId & 0xffff0000) | i;
                writeEntry();
            }
        }
    }

    private void writeConfigFlags() throws IOException, AndrolibException {
        //总的有多大
        int size = mIn.readInt();
        if (size < 28) {
            throw new AndrolibException("Config size < 28");
        }
        mOut.writeInt(size);

        mOut.writeBytes(mIn, size - 4);
    }

    private void writeComplexEntry() throws IOException, AndrolibException {
        mOut.writeInt(mIn.readInt());
        int count = mIn.readInt();
        mOut.writeInt(count);
        for (int i = 0; i < count; i++) {
            mOut.writeInt(mIn.readInt());
            writeValue();
        }
    }


    private void writeEntry() throws IOException, AndrolibException {
        /* size */
        mOut.writeBytes(mIn, 2);
        short flags = mIn.readShort();
        mOut.writeShort(flags);
        int specNamesId = mIn.readInt();
//        ResPackage pkg = mPkgs[mCurPackageID];
//        if (pkg.isCanResguard()) {
//            specNamesId = mCurSpecNameToPos.get(pkg.getSpecRepplace(mResId));
//            if (specNamesId < 0) {
//                throw new AndrolibException(String.format("writeEntry new specNamesId < 0 %d", specNamesId));
//            }
//        }
        mOut.writeInt(specNamesId);

        if ((flags & ENTRY_FLAG_COMPLEX) == 0) {
            writeValue();
        } else {
            writeComplexEntry();
        }
    }

    private void writeValue() throws IOException, AndrolibException {
        /* size */
        mOut.writeCheckShort(mIn.readShort(), (short) 8);
        /* zero */
        mOut.writeCheckByte(mIn.readByte(), (byte) 0);
        byte type = mIn.readByte();
        mOut.writeByte(type);
        int data = mIn.readInt();
        mOut.writeInt(data);
    }

//    private void readEntry() throws IOException, AndrolibException {
//        mIn.skipBytes(2);
//        short flags = mIn.readShort();
//        int specNamesId = mIn.readInt();
//
//        if (mPkg.isCanResguard()) {
//            // 混淆过或者已经添加到白名单的都不需要再处理了
//            if (!mResguardBuilder.isReplaced(mCurEntryID) && !mResguardBuilder.isInWhiteList(mCurEntryID)) {
//                Configuration config = mApkDecoder.getConfig();
//                boolean isWhiteList = false;
//                if (config.mUseWhiteList) {
//                    isWhiteList = dealWithWhiteList(specNamesId, config);
//                }
//
//                if (!isWhiteList) {
//                    dealWithNonWhiteList(specNamesId, config);
//                }
//            }
//        }
//
//        if ((flags & ENTRY_FLAG_COMPLEX) == 0) {
//            readValue(true, specNamesId);
//        } else {
//            readComplexEntry(false, specNamesId);
//        }
//    }
}
