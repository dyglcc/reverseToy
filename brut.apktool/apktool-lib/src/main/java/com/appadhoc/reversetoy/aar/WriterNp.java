package com.appadhoc.reversetoy.aar;

import brut.androlib.AndrolibException;
import brut.androlib.res.data.*;
import brut.androlib.res.decoder.StringBlock;
import com.appadhoc.reversetoy.utils.Utils;
import com.mindprod.ledatastream.LEDataOutputStream;
import com.tencent.mm.util.ExtDataOutput;

import java.io.*;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class WriterNp {
    ExtDataOutput mOut;
    File arscOutFile;
    ResTable data;

    public static void main(String... args) {
    }

//    public WriterNp(File arscOutFile, ArscWriter.ARSCData data) throws FileNotFoundException {
//        this.arscOutFile = arscOutFile;
//        mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(arscOutFile, false)));
//        this.data = data;
//    }

    public WriterNp(File outArsc, ResTable resTable) {
        this.arscOutFile = outArsc;
        this.data = resTable;
        try {
            this.mOut = new ExtDataOutput(new LEDataOutputStream(new FileOutputStream(arscOutFile, false)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void write() throws IOException, AndrolibException {
        // write
        writeTableHeader();
        writeGlobalStringPool();
        writePackage();
    }

    private void writePackage() throws IOException, AndrolibException {

        Map<Integer, ResPackage> map = data.getmPackagesById();
        for (Map.Entry entry : map.entrySet()) {
            ResPackage pa = (ResPackage) entry.getValue();
            writeSinglePackage(pa);
        }

    }

    private void writeSinglePackage(ResPackage pa) throws IOException, AndrolibException {
        short packageType = Header.TYPE_PACKAGE;
        short packageHeaderSize = (short) new ResTable_package().calcCount();
        if (pa.getmTypeIdOffset() == -1) {
            packageHeaderSize -= 4;
        }
        int packageChunkSize = HeadCalc.getSinglePackageSize(pa);
        Header.writeHeader(mOut, packageType, packageHeaderSize, packageChunkSize);
        int id = pa.getId() >> 24;
        mOut.writeInt(id);
        //包名称
        byte[] nameBytes = getPackageNameBytes(pa.getName());
        mOut.write(nameBytes);
        //类型字符串资源池相对头部的偏移
        int typeStrings = pa.getTypeString();
        mOut.writeInt(typeStrings);
        //最后一个导出的Public类型字符串在类型字符串资源池中的索引，目前这个值设置为类型字符串资源池的元素个数。
        int lastPublicType = pa.getLastPublicType();
        mOut.writeInt(lastPublicType);
        //资源项名称字符串相对头部的偏移
        int keyStrings = pa.getKeyStrings();
        mOut.writeInt(keyStrings);
        //最后一个导出的Public资源项名称字符串在资源项名称字符串资源池中的索引，目前这个值设置为资源项名称字符串资源池的元素个数。
        int lastPublicKey = pa.getLastPublicKey();
        mOut.writeInt(lastPublicKey);
        // if(header.size > 288) 读取下面的int字段。
        if (pa.getmTypeIdOffset() != -1) {
            int typeOffsetId = pa.getmTypeIdOffset();
            mOut.writeInt(typeOffsetId);
        }
        // write string_pool
        StringBlock specName = pa.getmTypeNames();
        writeStringPool(specName);
        StringBlock typeNames = pa.getmSpecNames();
        writeStringPool(typeNames);
        // 如果有type_library_type的话
        writeTypeLibrary();
        // write type_spec
        writeTypeSpec(pa);

    }


    private void writeTypeSpec(ResPackage pa) throws IOException, AndrolibException {

        Map<String, ResTypeSpec> mTypes = pa.getmTypes();
        for (Map.Entry entry : mTypes.entrySet()) {
            ResTypeSpec value = (ResTypeSpec) entry.getValue();
            writeTypeSpecChunk(value, pa);
        }
    }

    private void writeTypeSpecChunk(ResTypeSpec spec, ResPackage mpk) throws IOException, AndrolibException {

        Header header;
        //标识资源的Type ID,Type ID是指资源的类型ID，从1开始。资源的类型有animator、anim、color、drawable、layout、menu、raw、string和xml等等若干种，每一种都会被赋予一个ID。
        byte id = (byte) spec.getId();
        //保留,始终为0
        byte res0 = 0;
        //保留,始终为0
        short res1 = 0;
        //等于本类型的资源项个数,指名称相同的资源项的个数。
        int entryCount = spec.getEntryCount();

        short type = Header.TYPE_SPEC_TYPE;
        short headerSize = 16;
        int size = HeadCalc.getSingleSpectCount(spec);
        Header.writeHeader(mOut, type, headerSize, size);
        mOut.writeByte(id);
        mOut.writeShort(res0);
        mOut.writeShort(res1);
        mOut.writeInt(entryCount);

        mOut.write(spec.getSkipRawBytes());

        writeSubTypeType(spec, mpk);

    }

    private void writeSubTypeType(ResTypeSpec spec, ResPackage mpk) throws IOException, AndrolibException {
        LinkedHashMap<ConfigFlagRaw, List<ResResource>> mResSpecs = mpk.getConfigFlagRawListLinkedHashMap();
        for (Map.Entry entry : mResSpecs.entrySet()) {
            ConfigFlagRaw rawConfig = (ConfigFlagRaw) entry.getKey();
            List<ResResource> list = (List<ResResource>) entry.getValue();
            if (checkIsExpectedType(rawConfig.getConfigName(),spec.toString())) {
                writeSingleTypeType(rawConfig, list, spec);
            }
        }
    }

    private boolean checkIsExpectedType(String configName, String toString) {
        if(!configName.contains("&&")){
            return false;
        }
        if(Utils.isEmpty(toString)){
            return false;
        }
        String[] types = configName.split("&&");
        if(types.length!=2){
            return false;
        }
        if(types[1].equals(toString)){
            return true;
        }
        return false;
    }

    private void writeSingleTypeType(ConfigFlagRaw raw, List<ResResource> list, ResTypeSpec spec) throws IOException, AndrolibException {

        short type = Header.TYPE_TYPE;
        short headerSize = (short) (new ResTable_type().calcCount() + raw.getConfigFlags().getRawConfig().length);
        int size = HeadCalc.getSingleTypeTypeSize(raw, list);

        Header.writeHeader(mOut, type, headerSize, size);
        byte id = (byte) spec.getId();
        //保留,始终为0
        byte res0 = 0;
        //保留,始终为0
        short res1 = 0;
        //等于本类型的资源项个数,指名称相同的资源项的个数。
        int entryCount = raw.getEntryCount();
        //等于资源项数据块相对头部的偏移值。
        int entriesStart = headerSize + raw.getConfigFlags().getRawConfig().length + entryCount * 4;
        //指向一个ResTable_config,用来描述配置信息,地区,语言,分辨率等
        mOut.writeByte(id);
        mOut.writeByte(res0);
        mOut.writeShort(res1);
        mOut.writeInt(entryCount);
        mOut.writeInt(entriesStart);
        mOut.write(raw.getConfigFlags().getRawConfig());
        mOut.writeIntArray(raw.getEntryOffsets());
        for (int i = 0; i < list.size(); i++) {
            ResResource resource = list.get(i);
            mOut.write(resource.getRawBytes());
        }
    }

    private void writeTypeLibrary() {
//        todo
    }

    private byte[] getPackageNameBytes(String name) {
        byte[] bytes = new byte[256];
        byte[] nameBytes = name.getBytes();
        System.arraycopy(nameBytes, 0, bytes, 0, nameBytes.length);
        return bytes;
    }


    private void writeGlobalStringPool() throws IOException, AndrolibException {
        StringBlock stringBlock = HeadCalc.getGlobalStringBlock(data);
//        stringBlock.
        writeStringPool(stringBlock);
    }

    private void writeStringPool(StringBlock stringBlock) throws IOException, AndrolibException {
        short stringBlockType = Header.TYPE_STRING_POOL;
        short stringHeaderSize = 0x1c;
        int stringChunkSize = getStringBlockChunkSize(stringBlock);
        int stringCount = stringBlock.getCount();
        int styleCount = stringBlock.getM_styleOffsets() == null ? 0 : stringBlock.getM_styleOffsets().length;
        int flags = stringBlock.isM_isUTF8() ? ResStringPool_header.UTF8_FLAG : ResStringPool_header.STORED_FLAG;
        int stringsOffset = stringHeaderSize + (stringBlock.getM_styleOffsets() == null ? 0 : stringBlock.getM_styleOffsets().length * 4) + stringBlock.getM_stringOffsets().length * 4;
        int stylesOffset = stringBlock.getM_styleOffsets() == null ? 0 : stringsOffset + stringBlock.getM_strings().length;
        Header.writeHeader(mOut, stringBlockType, stringHeaderSize, stringChunkSize);
        mOut.writeInt(stringCount);
        mOut.writeInt(styleCount);
        mOut.writeInt(flags);
        mOut.writeInt(stringsOffset);
        mOut.writeInt(stylesOffset);
        mOut.writeIntArray(stringBlock.getM_stringOffsets());
        if (stringBlock.getM_styleOffsets() != null) {
            mOut.writeIntArray(stringBlock.getM_styleOffsets());
        }
        mOut.write(stringBlock.getM_strings());
        if (stringBlock.getM_styles() != null) {
            mOut.writeIntArray(stringBlock.getM_styles());
        }
        if (stringBlock.getRemainingByte() != null) {
            mOut.write(stringBlock.getRemainingByte());
        }
    }

    private int getStringBlockChunkSize(StringBlock sb) {
        return HeadCalc.getBytesCountByStringBlock(sb);
    }

    private void writeTableHeader() throws IOException, AndrolibException {
        HeadCalc calc = new HeadCalc();
        short tableType = Header.TYPE_TABLE;
        Header.writeHeader(mOut, tableType, (short) 8, calc.calcRestableSize(data));
        mOut.writeInt(data.getmMainPackages().size());
    }

    public static class Header {


        public static void writeHeader(ExtDataOutput out, short type, short count, int size)
                throws IOException, AndrolibException {

            try {
                out.writeShort(type);
                out.writeShort(count);
                out.writeInt(size);
            } catch (EOFException ex) {
                throw new AndrolibException("write header error " + type);
            }
        }

        public final static short TYPE_NONE = -1, TYPE_TABLE = 0x0002, TYPE_STRING_POOL = 0x0001,
                TYPE_PACKAGE = 0x0200, TYPE_TYPE = 0x0201, TYPE_SPEC_TYPE = 0x0202, TYPE_LIBRARY = 0x0203;


    }


    public static class ResTableHeader implements calcCount {
        Header header;
        // package 个数
        int packageCount;

        @Override
        public int calcCount() {
            return 8 + 4;
        }
    }


    public static class ResStringPool_header implements calcCount {
        // If set, the string index is sorted by the string values (based on strcmp16()).
        public static final int STORED_FLAG = 1 << 0;
        // String pool is encoded in UTF-8
        public static final int UTF8_FLAG = 1 << 8;
        Header header;
        // Number of strings in this pool (number of uint32_t indices that follow in the data).
        int stringCount;
        // Number of style span arrays in the pool (number of uint32_t indices follow the string indices).
        int styleCount;
        //If flags is 0x0, string pool is encoded in UTF-16
        int flags;
        // Index from header of the string data.
        int stringsStart;
        // Index from header of the style data.
        int stylesStart;


        @Override
        public int calcCount() {
            return 8 + 4 * 5;
        }
    }


    public static class ResTable_package implements calcCount {
        Header header;
        int id;
        //包名称
        short[] name = new short[128];
        //类型字符串资源池相对头部的偏移
        int typeStrings;
        //最后一个导出的Public类型字符串在类型字符串资源池中的索引，目前这个值设置为类型字符串资源池的元素个数。
        int lastPublicType;
        //资源项名称字符串相对头部的偏移
        int keyStrings;
        //最后一个导出的Public资源项名称字符串在资源项名称字符串资源池中的索引，目前这个值设置为资源项名称字符串资源池的元素个数。
        int lastPublicKey;
        // if(header.size > 288) 读取下面的int字段。
        int typeOffsetId;


        @Override
        public int calcCount() {
            return 8 + 4 + 256 + 4 * 4 + 4;
        }
    }

    public static class ResTable_typeSpec implements calcCount {
        Header header;
        //标识资源的Type ID,Type ID是指资源的类型ID，从1开始。资源的类型有animator、anim、color、drawable、layout、menu、raw、string和xml等等若干种，每一种都会被赋予一个ID。
        byte id;
        //保留,始终为0
        byte res0;
        //保留,始终为0
        short res1;
        //等于本类型的资源项个数,指名称相同的资源项的个数。
        int entryCount;

        @Override
        public int calcCount() {
            return 8 + 1 + 1 + 2 + 4;
        }
    }

    public static class ResTable_type implements calcCount {
        private static final int NO_ENTRY = 0xFFFFFFFF;
        Header header;
        //标识资源的Type ID
        byte id;
        //保留,始终为0
        byte res0;
        //保留,始终为0
        short res1;
        //等于本类型的资源项个数,指名称相同的资源项的个数。
        int entryCount;
        //等于资源项数据块相对头部的偏移值。
        int entriesStart;
        //指向一个ResTable_config,用来描述配置信息,地区,语言,分辨率等
        ResTable_config config;

        @Override
        public int calcCount() {
            return 8 + 1 + 1 + 2 + 2 * 4;
        }
    }

    public static class ResTable_config implements calcCount {
        // Number of bytes in this structure.
        int size;


        // Mobile country code (from SIM).  0 means "any".
        short mcc;
        // Mobile network code (from SIM).  0 means "any".
        short mnc;
        int imsi;

        // \0\0 means "any".  Otherwise, en, fr, etc.
        char[] language = new char[2];
        // \0\0 means "any".  Otherwise, US, CA, etc.
        char[] country = new char[2];
        int locale;

        byte orientation;
        byte touchscreen;
        short density;
        int screenType;

        byte keyboard;
        byte navigation;
        byte inputFlags;
        byte inputPad0;
        int input;

        short screenWidth;
        short screenHeight;
        int screenSize;

        short sdkVersion;
        // For now minorVersion must always be 0!!!  Its meaning
        // is currently undefined.
        short minorVersion;
        int version;


        byte screenLayout;
        byte uiMode;
        short smallestScreenWidthDp;
        int screenConfig;

        short screenWidthDp;
        short screenHeightDp;
        int screenSizeDp;

        @Override
        public int calcCount() {
            return 4 + 2 * 2 + 4 + 2 * 2 + 2 * 2 + 4 + 1 * 2 + 2 + 4 + 1 * 4 + 4 + 2 * 2 + 4 + 2 * 2 + 4 + 1 * 2 + 2 + 4 + 2 * 2 + 4;
        }
    }

    public static class ResTable_entry implements calcCount {

        //如果flags此位为1,则ResTable_entry后跟随ResTable_map数组,为0则跟随一个Res_value。
        private static final short FLAG_COMPLEX = 0x0001;
        //如果此位为1,这个一个被引用的资源项
        private static final short FLAG_PUBLIC = 0x0002;
        //表示资源项头部大小。
        short size;

        //资源项标志位 如果flags此位为1,则ResTable_entry后跟随ResTable_map数组,为0则跟随一个Res_value。 如果此位为1,这个一个被引用的资源项
        short flags;
        //资源项名称在资源项名称字符串资源池的索引
        int key;

        @Override
        public int calcCount() {
            return 2 * 2 + 4;
        }
    }


    public static class ResTable_map_entry extends ResTable_entry {
        //指向父ResTable_map_entry的资源ID，如果没有父ResTable_map_entry，则等于0。
        int parent;
        //等于后面ResTable_map的数量

        int count;

        @Override
        public int calcCount() {
            return super.calcCount() + 2 * 4;
        }
    }

    public static class ResTable_map implements calcCount {
        //bag资源项ID
        int name;
        //bag资源项值
        Res_value value;

        @Override
        public int calcCount() {
            return 4 + value.calcCount();
        }
    }

    public static class Res_value implements calcCount {
        //Res_value头部大小
        short size;
        //保留,始终为0
        byte res0;

        private static final int
                TYPE_NULL = 0x00,
                TYPE_REFERENCE = 0x01,
                TYPE_ATTRIBUTE = 0x02,
                TYPE_STRING = 0x03,
                TYPE_FLOAT = 0x04,
                TYPE_DIMENSION = 0x05,
                TYPE_FRACTION = 0x06,
                TYPE_FIRST_INT = 0x10,
                TYPE_INT_DEC = 0x10,
                TYPE_INT_HEX = 0x11,
                TYPE_INT_BOOLEAN = 0x12,
                TYPE_FIRST_COLOR_INT = 0x1c,
                TYPE_INT_COLOR_ARGB8 = 0x1c,
        //                TYPE_INT_COLOR_ARGB8 = 0x1c,
        TYPE_INT_COLOR_RGB8 = 0x1d,
                TYPE_INT_COLOR_ARGB4 = 0x1e,
                TYPE_INT_COLOR_RGB4 = 0x1f,
                TYPE_LAST_COLOR_INT = 0x1f,
                TYPE_LAST_INT = 0x1f;
        //数据的类型,可以从上面的枚举类型中获取
        byte dataType;
        //数据对应的索引
        int data;

        @Override
        public int calcCount() {
            return 2 + 1 * 2 + 4;
        }
    }

    interface calcCount {
        int calcCount();
    }

//    interface writeHeader
}
