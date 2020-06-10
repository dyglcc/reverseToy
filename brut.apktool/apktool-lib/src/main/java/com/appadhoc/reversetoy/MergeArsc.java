package com.appadhoc.reversetoy;

import android.util.TypedValue;
import brut.androlib.AndrolibException;
import brut.androlib.res.AndrolibResources;
import brut.androlib.res.data.*;
import brut.androlib.res.decoder.StringBlock;
import brut.common.BrutException;
import brut.directory.ExtFile;
import brut.directory.ZipUtils;
import brut.util.OS;
import com.appadhoc.reversetoy.aar.*;
import com.appadhoc.reversetoy.sign.SignTool;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.logging.Logger;
import static luyao.parser.utils.Reader.log;
import static brut.androlib.res.decoder.ARSCDecoder.ENTRY_FLAG_COMPLEX;

public class MergeArsc {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());
    public static LinkedHashMap<Integer, Duo_int> mapping = new LinkedHashMap<>();

    public static void main(String[] args) throws Exception {

        ResTable hostTableTable = merge2Arsc();
        File outputFile = createApk(hostTableTable);
        readNew(outputFile);
//        readNew(new File("/Users/dongyuangui/Desktop/apk-blue/signed1591786893545.apk"));
//        readOldApk(null);
//        readWriteRead();
    }

    private static void readWriteRead() throws Exception {
//        AndrolibResources resources = new AndrolibResources();
//        ResTable aarTable = resources.getResTable(new ExtFile("/Users/dongyuangui/work/aar-520-release/aar/tmpcb3fd/aar_tmp.apk"));
////        ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/GITHUB/adhoc_android/app-debug-message.apk"));
//        File outputFile =  createApk(aarTable);
//        readNew(outputFile);
        readNew(new File("/Users/dongyuangui/Desktop/apk-blue/signed1591786893545.apk"));
    }

    public static ResTable merge2Arsc() throws Exception {
        AndrolibResources resources = new AndrolibResources();
////            --------------------------
//////             读取host apk return hostable
//        ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/GITHUB/adhoc_android/app-debug-message.apk"));
        ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/GITHUB/adhoc_android/android-tongdao-app_liepinpc_dev_4.15.0_20190918161802.apk"));
//        System.out.println("host table is " + hostTableTable.getmMainPackages().size());
//
//            // 读取aar apk return restable
        ResTable aarTable = resources.getResTable(new ExtFile("/Users/dongyuangui/work/aar-520-release/aar/tmpcb3fd/aar_tmp.apk"));
        mergeAarTable2HostTable(hostTableTable, aarTable);
//        System.out.println("aar table is " + aarTable.getmMainPackages().size());
        return hostTableTable;

    }

    public static File createApk(ResTable hostTableTable) throws Exception {
        long t1 = System.currentTimeMillis();
        File outArsc = new File("/Users/dongyuangui/Desktop/apk-blue/abc0000/resources.arsc");
        if (outArsc.exists()) {
            OS.rmfile(outArsc.getAbsolutePath());
        }
        WriterArsc.write(outArsc, hostTableTable);
        long t0 = System.currentTimeMillis();
//        System.out.println("write file 耗时" + (t0 - t1));
        // copy 新的arsc文件到abc0000
        File outApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/output_abc0000.apk");
        ZipUtils.zipFolders(new File("/Users/dongyuangui/Desktop/apk-blue/abc0000"), outApkfile, null, null);
        Map<String,String> map = new HashMap<>();
        map.put("--min-sdk-version","14");
        File outputFile = SignTool.sign(outApkfile, new File("/Users/dongyuangui/Desktop/apk-blue/output_abc0000-sign.apk"),map);

        long t2 = System.currentTimeMillis();

//        System.out.println("zip 签名 耗时d" + (t2 - t0));
        return outputFile;
    }

    public static void readNew(File outputFile) throws AndrolibException {
        AndrolibResources resources = new AndrolibResources();
        ResTable mytable = resources.getResTable(new ExtFile(outputFile));
        System.out.println("host table is " + mytable.getmMainPackages().size());
    }

    public static void readNewApk(String path) throws AndrolibException {
        AndrolibResources resources = new AndrolibResources();
        ResTable mytable = resources.getResTable(new ExtFile(path));
//        System.out.println("host table is " + mytable.getmMainPackages().size());
    }

    public static void readOldApk(File outputFile) throws AndrolibException {
        AndrolibResources resources = new AndrolibResources();
        ResTable mytable = resources.getResTable(new ExtFile("/Users/dongyuangui/GITHUB/adhoc_android/android-tongdao-app_liepinpc_dev_4.15.0_20190918161802/signed1591785603139.apk"));
//        ResTable mytable = resources.getResTable(new ExtFile(outputFile));
        System.out.println("old table is " + mytable.getmMainPackages().size());
    }

    public static ResTable mergeAarTable2HostTable(ResTable hostTableTable, ResTable aarTable) throws Exception {

        // merge GlobalStringBlock

        mergelStringBlock(hostTableTable.getGlobalStringBlock(), aarTable.getGlobalStringBlock());
        // merge spec


        mergePackage(hostTableTable.getPackage(127), aarTable.getPackage(127), hostTableTable);

        // merge type
        return hostTableTable;

    }

    private static void removeDuplicateSpec(List<ResResource> hostDefaultConfigResList,
                                            List<ResResource> aarList, ConfigFlagRaw aarRaw,
                                            String typeName) {
        if (hostDefaultConfigResList != null) {
            for (int i = 0; i < aarList.size(); i++) {
                ResResource aarResource = aarList.get(i);
                ResResSpec resResSpec = aarResource.getResSpec();
                String keyNameAar = resResSpec.getName();
                ResResSpec hostDupSpec = cheIfDuplicateInHost(keyNameAar, hostDefaultConfigResList);
                if (hostDupSpec != null) {
                    ResID resID = resResSpec.getId();
                    mapping.put(resID.id, new Duo_int(resID.id, hostDupSpec.getId().id));
                    int[] offsets = aarRaw.getEntryOffsets();
                    short id = (short) resID.id;
                    offsets[id] = -1;
                    LOGGER.info("remove duplicate spec name " + keyNameAar + "  " + typeName);
                }
            }
        }
    }

    private static void mergePackage(ResPackage hostPackage, ResPackage aarPackage, ResTable hostTable) throws Exception {
        LinkedHashMap<ConfigFlagRaw, List<ResResource>> host = hostPackage.getConfigFlagRawListLinkedHashMap();
        LinkedHashMap<ConfigFlagRaw, List<ResResource>> aar = aarPackage.getConfigFlagRawListLinkedHashMap();

        for (Map.Entry aarEntry : aar.entrySet()) {
            List<ResResource> aarList = (List<ResResource>) aarEntry.getValue();

            ConfigFlagRaw aarRaw = (ConfigFlagRaw) aarEntry.getKey();
            String keyName = aarRaw.getConfigName();

            String[] strings = keyName.split("&&");
            String typeName = strings[1];
            // 去重 keyName和host 资源项的keyName相同了。
            List<ResResource> hostDefaultConfigResList = getListFromHost(typeName, host);
            removeDuplicateSpec(hostDefaultConfigResList, aarList, aarRaw, typeName);
        }


        mergelStringBlock(hostPackage.getmTypeNames(), aarPackage.getmTypeNames());
        mergelStringBlock(hostPackage.getmSpecNames(), aarPackage.getmSpecNames());
        StringBlock type = hostPackage.getmTypeNames();
        hostPackage.setKeyStrings(hostPackage.getTypeString() + ArscHeadCalc.getBytesCountByStringBlock(type));

        mergeLibrary();


        // merge other
        mergeSpecTypes(hostPackage.getmTypes(), aarPackage.getmTypes());

        mergeAllTypes(host, aar, hostTable);


    }

    private static void mergeAllTypes(LinkedHashMap<ConfigFlagRaw, List<ResResource>> host,
                                      LinkedHashMap<ConfigFlagRaw, List<ResResource>> aar, ResTable hostTable) throws Exception {
        ResPackage hostPackage = hostTable.getPackage(127);

        // 已经存在的需要合并，注意合并offset
        for (Map.Entry aarEntry : aar.entrySet()) {
            List<ResResource> aarList = (List<ResResource>) aarEntry.getValue();

            ConfigFlagRaw aarRaw = (ConfigFlagRaw) aarEntry.getKey();
            String keyName = aarRaw.getConfigName();

            String[] strings = keyName.split("&&");
            String typeName = strings[1];
            String configName = strings[0];


            ConfigFlagRaw hostRaw = checkContainKeyName(host, keyName);
            ResTypeSpec typeSpec = hostPackage.getmTypes().get(typeName);
            if (hostRaw != null) {
                // 都存在的config
                log("exist" + hostRaw.getConfigName());
                mergeSingleSameType(hostRaw, aarRaw, host.get(hostRaw), aar.get(aarRaw), typeSpec.getId());
            } else {
                // 不存在的config
                mergeNotExistInHost(host, aarRaw, aarList, typeSpec.getId(), configName, typeName);
            }
        }
        // 替换key和value的index值,找到正确的名称和文件路径
        // 产生了mapping 文件，再遍历所有resResource文件 替换替换原来resValue的引用。
        // 应用替换有resVale的值，和bag value complexEntry 的parent和id需要更换
        StringBlock globalString = hostTable.getGlobalStringBlock();
        // entry name string index 的偏移需要加上 host的name的偏移，同理specType 也应该如此
        StringBlock specName = hostPackage.getmSpecNames();
        for (Map.Entry entry : aar.entrySet()) {
            List<ResResource> list = (List<ResResource>) entry.getValue();
            for (int a = 0; a < list.size(); a++) {
                ResResource resResource = list.get(a);

                byte[] rawBytes = resResource.getRawBytes();

                int keyNameIndex = Utils.ByteUtils.getInt(rawBytes, 4);
                Utils.ByteUtils.replaceInt(rawBytes, 4, keyNameIndex + specName.oldHostBlockStringCount);

                short flags = Utils.ByteUtils.getShort(rawBytes, 2);
                if ((flags & ENTRY_FLAG_COMPLEX) == 0) { // not bag values
                    replaceStringIndex(rawBytes, 8, globalString.oldHostBlockStringCount);
                } else {
                    int parent = Utils.ByteUtils.getInt(rawBytes, 8);
                    if (mapping.get(parent) != null) {
                        Utils.ByteUtils.replaceInt(rawBytes, 0, mapping.get(parent).idNew);
                    }
                    int count = Utils.ByteUtils.getInt(rawBytes, 12);
                    for (int c = 0, start = 16; c < count; c++, start += 12) {
                        int resOldId = Utils.ByteUtils.getInt(rawBytes, start);
                        if (mapping.get(resOldId) != null) {
                            Utils.ByteUtils.replaceInt(rawBytes, start, mapping.get(resOldId).idNew);
                        }
                        replaceStringIndex(rawBytes, start + 4, globalString.oldHostBlockStringCount);
                    }
                }
            }
        }
    }

    private static List<ResResource> getListFromHost(String typeName, LinkedHashMap<ConfigFlagRaw, List<ResResource>> host) {
        for (Map.Entry entry : host.entrySet()) {
            ConfigFlagRaw flagRaw = (ConfigFlagRaw) entry.getKey();
            if (flagRaw.getConfigName().equals("[DEFAULT]&&" + typeName)) {
                return (List<ResResource>) entry.getValue();
            }
        }
        return null;
    }

    private static ResResSpec cheIfDuplicateInHost(String keyName, List<ResResource> hostResResources) {
        if (keyName == null) {
            return null;
        }
        for (int i = 0; i < hostResResources.size(); i++) {
            ResResource resResource = hostResResources.get(i);
            ResResSpec spec = resResource.getResSpec();
            if (spec.getName().equals(keyName)) {
                return spec;
            }
        }
        return null;
    }


    private static final int NEW_TYPE = 0;
    private static final int NEW_CONFIGRATION = 1;

    private static void mergeNotExistInHost(LinkedHashMap<ConfigFlagRaw, List<ResResource>> host,
                                            ConfigFlagRaw aarRaw,
                                            List<ResResource> aarList,
                                            int typeId, String configName, String typeName) throws Exception {
        int newType = checkNewType(typeName, host);
        log("new Type is "+ newType);

        if (newType == NEW_CONFIGRATION) {
            // 需要需要找到default的ConfigRaw，获取到entryOffsetCount
//            String typeName = splits[1];
//            String keyName = "[DEFAULT]" + "&&" + typeName;
            ConfigFlagRaw hostConfig = findAModelConfigRawFromHost(typeName, host);
            if (hostConfig == null) {
                throw new Exception("find configRaw npe ");
            }
            int hostCount = hostConfig.getEntryCount();
            int[] hostOffset = new int[hostCount];
            Arrays.fill(hostOffset, -1);
            int[] aarOffset = aarRaw.getEntryOffsets();
            int[] newOffset = new int[hostCount + aarOffset.length];
            System.arraycopy(hostOffset, 0, newOffset, 0, hostCount);
            System.arraycopy(aarOffset, 0, newOffset, hostCount, aarOffset.length);
            aarRaw.setEntryOffsets(newOffset);
            aarRaw.setEntryCount(newOffset.length);

            addMapping(aarList, typeId, hostCount);

        } else if (newType == NEW_TYPE) {
            // new type id 不用担心，用的是ResSpecType的id
            // new type 的 entry name 不用担心 entryOffset,已经处理了key的偏移，已经处理引用id问题。
            addMapping(aarList, typeId, 0);
        }
        host.put(aarRaw, aarList);
    }

    private static void addMapping(List<ResResource> aarList,
                                   int typeId, int offset) {
        for (int i = 0; i < aarList.size(); i++) {
            ResResource resResource = aarList.get(i);
            ResID oldId = resResource.getResSpec().getId();
            // save mapping
            int newId = 0x7f << 24 | typeId << 16 | i + offset;
            mapping.put(oldId.id, new Duo_int(oldId.id, newId));
        }
    }

    private static int checkNewType(String type, LinkedHashMap<ConfigFlagRaw, List<ResResource>> host) {
        for (Map.Entry entry : host.entrySet()) {
            ConfigFlagRaw raw = (ConfigFlagRaw) entry.getKey();
            String keyName = raw.getConfigName();
            if (keyName.endsWith("&&" + type)) {
                return NEW_CONFIGRATION;
            }
        }
        return NEW_TYPE;
    }

    private static ConfigFlagRaw findAModelConfigRawFromHost(String type, LinkedHashMap<ConfigFlagRaw, List<ResResource>> host) {
        for (Map.Entry entry : host.entrySet()) {
            ConfigFlagRaw raw = (ConfigFlagRaw) entry.getKey();
            String keyName = raw.getConfigName();
            if (keyName.endsWith("&&" + type)) {
                return raw;
            }
        }
        return null;
    }

    private static void replaceStringIndex(byte[] rawBytes, int start, int globalStringOffset) throws Exception {

        byte dataType = Utils.ByteUtils.getByte(rawBytes, start + 3);
        if (dataType == TypedValue.TYPE_STRING) {
            int data = Utils.ByteUtils.getInt(rawBytes, start + 4);
            Utils.ByteUtils.replaceInt(rawBytes, start + 4, data + globalStringOffset);
        }
    }

    // merge exist type.
    private static void mergeSingleSameType(ConfigFlagRaw hostRaw, ConfigFlagRaw aarRaw,
                                            List<ResResource> resResources,
                                            List<ResResource> aarResource, int specTypeID) {
        // offset 需要合并
        // 同时list也需要合并
        int[] hostOffsetEntry = hostRaw.getEntryOffsets();
        int[] aarOffsetEntry = aarRaw.getEntryOffsets();
        int hosEndPosition = findEndPosition(hostOffsetEntry);
        hosEndPosition += resResources.get(resResources.size() - 1).getRawBytes().length;
        // offset value merge
        for (int i = 0; i < aarOffsetEntry.length; i++) {
            if (aarOffsetEntry[i] != -1) {
                aarOffsetEntry[i] += hosEndPosition;
            }
        }
        int[] newHostOffsetEntry = new int[hostOffsetEntry.length + aarOffsetEntry.length];
        System.arraycopy(hostOffsetEntry, 0, newHostOffsetEntry, 0, hostOffsetEntry.length);
        System.arraycopy(aarOffsetEntry, 0, newHostOffsetEntry, hostOffsetEntry.length, aarOffsetEntry.length);
        hostRaw.setEntryOffsets(newHostOffsetEntry);
        hostRaw.setEntryCount(hostOffsetEntry.length + aarOffsetEntry.length);


        addMapping(aarResource, specTypeID, hostOffsetEntry.length);
        for (int i = 0; i < aarResource.size(); i++) {
            resResources.add(aarResource.get(i));
        }
    }

    private static int findEndPosition(int[] hostOffsetEntry) {
        for (int i = hostOffsetEntry.length - 1; i > 0; i--) {
            if (hostOffsetEntry[i] != -1) {
                return hostOffsetEntry[i];
            }
        }
        return 0;
    }

    private static ConfigFlagRaw checkContainKeyName(LinkedHashMap<ConfigFlagRaw, List<ResResource>> host, String keyName) {
        for (Map.Entry entry : host.entrySet()) {
            ConfigFlagRaw raw = (ConfigFlagRaw) entry.getKey();
            if (raw.getConfigName().equals(keyName)) {
                return raw;
            }
        }
        return null;
    }

    private static void mergeLibrary() {
        // todo
    }


    private static void mergeSpecTypes(Map<String, ResTypeSpec> hostTypes, Map<String, ResTypeSpec> aarTypes) {
        for (Map.Entry aarEntry : aarTypes.entrySet()) {

            String typeName = (String) aarEntry.getKey();

            ResTypeSpec aarSpec = (ResTypeSpec) aarEntry.getValue();

            if (hostTypes.containsKey(typeName)) {
                // entryCount 合并
                ResTypeSpec hostSpec = hostTypes.get(typeName);
                int allCount = hostSpec.getEntryCount() + aarSpec.getEntryCount();
                hostSpec.setEntryCount(allCount);
                // aarTypes 的name 的 index 加上偏移
                // id一样不需要加上偏移。
                // rawbytes byte[] 数组的合并。
                byte[] hostArray = hostSpec.getSkipRawBytes();
                byte[] aarArray = aarSpec.getSkipRawBytes();
                byte[] newSkipArray = new byte[hostArray.length + aarArray.length];
                System.arraycopy(hostArray, 0, newSkipArray, 0, hostArray.length);
                System.arraycopy(aarArray, 0, newSkipArray, hostArray.length, aarArray.length);
                hostSpec.setSkipRawBytes(newSkipArray);

            } else {
                int oldId = aarSpec.getId();
                aarSpec.setId(oldId + hostTypes.size());
                // aarTypes 的name 的 index 加上偏移
                // id这里不一样了需要加上偏移。
                hostTypes.put(typeName, aarSpec);
            }
        }

    }

    public static void mergelStringBlock(StringBlock hostStringBlock, StringBlock aarStringBlock) throws Exception {
        int flags = hostStringBlock.getFlags();
        int flagsAar = aarStringBlock.getFlags();


        if (flags != flagsAar) {
            if (flags == 256) { // utf8
                reEncode2UTF8(aarStringBlock);
            } else {
                reEncode2UTF16(aarStringBlock);
            }
        }

        // combine merge offset
        mergeStringOffset(hostStringBlock, aarStringBlock);

        // combine style offset

        mergeStylesOffset(hostStringBlock, aarStringBlock);

        mergeStrings(hostStringBlock, aarStringBlock);


        mergeStyles(hostStringBlock, aarStringBlock);


    }

    public static int addSingleString2StringBlockTail(StringBlock hostStringBlock, String str) throws Exception {
        int flags = hostStringBlock.getFlags();
        byte[] strBytes;
        byte[] m_stringsOld = hostStringBlock.getM_strings();
        int[] m_stringOffsetOld = hostStringBlock.getM_stringOffsets();
        int[] newStringOffset = new int[m_stringOffsetOld.length + 1];
        byte[] newStrings;
        System.arraycopy(m_stringOffsetOld, 0, newStringOffset, 0, m_stringOffsetOld.length);
        int remain = 0;
        if (flags == 256) { // utf8
            strBytes = str.getBytes(StandardCharsets.UTF_8);
            int allLen = m_stringsOld.length + strBytes.length + 3;
            if (allLen % 4 != 0) {
                remain = 4 - (allLen % 4);
                allLen += remain;
            }
            newStrings = new byte[allLen];
            System.arraycopy(m_stringsOld, 0, newStrings, 0, m_stringsOld.length);

            writeSingleStrBytesUTF8(strBytes, newStrings, m_stringsOld.length, str.length());
        } else {
            strBytes = str.getBytes(StandardCharsets.UTF_16LE);
            int allLen = m_stringsOld.length + strBytes.length + 4;
            if (allLen % 4 != 0) {
                remain = 4 - (allLen % 4);
                allLen += remain;
            }
            newStrings = new byte[allLen];
            System.arraycopy(m_stringsOld, 0, newStrings, 0, m_stringsOld.length);

            writeSingleStrBytesUTF16LE(strBytes, newStrings, m_stringsOld.length, str.length());
        }
        // offsets
        newStringOffset[m_stringOffsetOld.length] = m_stringsOld.length;
        // combine merge offset
        hostStringBlock.setM_strings(newStrings);
        hostStringBlock.setM_stringOffsets(newStringOffset);
        return m_stringOffsetOld.length;
    }


    public static void reEncode2UTF16(StringBlock aarStringBlock) {
        int[] offsets = aarStringBlock.getM_stringOffsets();
        String[] strings = new String[offsets.length];
        int byteCounts = offsets.length * 4;
        for (int i = 0; i < offsets.length; i++) {
            strings[i] = aarStringBlock.getString(i);
            byteCounts += strings[i].getBytes(StandardCharsets.UTF_16LE).length;
        }
        byte[] newStrings = new byte[byteCounts];
        int[] newOffset = new int[offsets.length];
        for (int i = 0, offset = 0; i < newOffset.length; i++) {
            newOffset[i] = offset;
            byte[] strBytes = strings[i].getBytes(StandardCharsets.UTF_16LE);
            writeSingleStrBytesUTF16LE(strBytes, newStrings, offset, strings[i].length());
            offset += strBytes.length + 4;
        }
        aarStringBlock.setM_strings(newStrings);
        aarStringBlock.setM_stringOffsets(newOffset);
        aarStringBlock.setFlags(0);
        aarStringBlock.m_isUTF8 = false;
    }

    public static void reEncode2UTF8(StringBlock aarStringBlock) {
        int[] offsets = aarStringBlock.getM_stringOffsets();
        String[] strings = new String[offsets.length];
        int byteCounts = offsets.length * 3;
        for (int i = 0; i < offsets.length; i++) {
            strings[i] = aarStringBlock.getString(i);
            byteCounts += strings[i].getBytes(StandardCharsets.UTF_8).length;
        }
        byte[] newStrings = new byte[byteCounts];
        int[] newOffset = new int[offsets.length];
        for (int i = 0, offset = 0; i < newOffset.length; i++) {
            newOffset[i] = offset;
            byte[] strBytes = strings[i].getBytes(StandardCharsets.UTF_8);
            writeSingleStrBytesUTF8(strBytes, newStrings, offset, strings[i].length());
            offset += strBytes.length + 3;
        }
        aarStringBlock.setM_strings(newStrings);
        aarStringBlock.setM_stringOffsets(newOffset);
        aarStringBlock.setFlags(256);
        aarStringBlock.m_isUTF8 = true;
    }

    private static void writeSingleStrBytesUTF16LE(byte[] strBytes, byte[] newStrings, int offset, int nameLen) {
        int len = strBytes.length;
        byte high = (byte) ((nameLen & 0xff) >> 8);
        byte low = (byte) nameLen;
        newStrings[offset] = low;
        newStrings[offset + 1] = high;
        System.arraycopy(strBytes, 0, newStrings, offset + 2, strBytes.length);
        newStrings[offset + len + 2] = 0;
        newStrings[offset + len + 3] = 0;
    }

    private static void writeSingleStrBytesUTF8(byte[] strBytes, byte[] newStrings, int offset, int charLen) {
        int len = strBytes.length;
        newStrings[offset] = (byte) charLen;
        newStrings[offset + 1] = (byte) charLen;
        System.arraycopy(strBytes, 0, newStrings, offset + 2, strBytes.length);
        newStrings[offset + len + 2] = 0;
    }

    public static byte[] test(StringBlock sb, int start, int len) {
        byte[] cp = new byte[len];
        byte[] arra = sb.getM_strings();
        System.arraycopy(arra, start, cp, 0, len);
        return cp;
    }

    private static void mergeStyles(StringBlock hostStringBlock, StringBlock aarStringBlock) {
        int[] hostStyles = hostStringBlock.getM_styles();
        int[] aarStyles = aarStringBlock.getM_styles();
        if (hostStyles == null && aarStyles == null) {
            return;
        }
        int len_O_host = hostStyles == null ? 0 : hostStyles.length;
        int len_0_aar = aarStyles == null ? 0 : aarStyles.length;

        int[] newStyles = new int[len_O_host + len_0_aar];

        if (hostStyles != null) {
            System.arraycopy(hostStyles, 0, newStyles, 0, len_O_host);
        }
        if (aarStyles != null) {
            System.arraycopy(aarStyles, 0, newStyles, len_O_host, len_0_aar);
        }
        hostStringBlock.setM_styles(newStyles);
    }

    private static void mergeStrings(StringBlock hostStringBlock, StringBlock aarStringBlock) {
        byte[] hostStrings = hostStringBlock.getM_strings();
        byte[] aarStrings = aarStringBlock.getM_strings();
        int allLen = hostStrings.length + aarStrings.length;
        int remain = 0;
        if (allLen % 4 != 0) {
            remain = 4 - (allLen % 4);
            allLen += remain;
        }
        byte[] newStrings = new byte[allLen];
        System.arraycopy(hostStrings, 0, newStrings, 0, hostStrings.length);
        System.arraycopy(aarStrings, 0, newStrings, hostStrings.length, aarStrings.length);
        hostStringBlock.setM_strings(newStrings);
        for (int i = 0; i < remain; i++) {
            newStrings[hostStrings.length + aarStrings.length + i] = 0;
        }

    }

    private static void mergeStylesOffset(StringBlock hostStringBlock, StringBlock aarStringBlock) {
        int[] hostStylesOffset = hostStringBlock.getM_styleOffsets();
        int[] aarStylesOffset = aarStringBlock.getM_styleOffsets();
        if (hostStylesOffset == null && aarStylesOffset == null) {
            return;
        }
        if (aarStylesOffset != null) {
            offsetValueAddHostStringArrayLength(aarStylesOffset, hostStringBlock.getM_styles() == null ? 0 : hostStringBlock.getM_styles().length);
        }
        int lenO_host = hostStylesOffset == null ? 0 : hostStylesOffset.length;
        int lenO_aar = aarStylesOffset == null ? 0 : aarStylesOffset.length;

        if ((lenO_host + lenO_aar) == 0) {
            return;
        }
        int[] newStyleOffsets = new int[lenO_host + lenO_aar];
        if (hostStylesOffset != null) {
            System.arraycopy(hostStylesOffset, 0, newStyleOffsets, 0, lenO_host);
        }
        if (aarStylesOffset != null) {
            System.arraycopy(aarStylesOffset, 0, newStyleOffsets, lenO_host, lenO_aar);
        }
        hostStringBlock.oldHostStyleIndexOffset = lenO_host;
        hostStringBlock.setM_styleOffsets(newStyleOffsets);
    }

    private static void mergeStringOffset(StringBlock hostStringBlock, StringBlock aarStringBlock) throws Exception {
        int[] hostStringBlockOffset = hostStringBlock.getM_stringOffsets();
        int[] aarStringBlockOffset = aarStringBlock.getM_stringOffsets();
        if (hostStringBlockOffset == null || aarStringBlockOffset == null) {
            throw new Exception("hostStringBlockOffset || aarStringBlockOffset is null");
        }

        offsetValueAddHostStringArrayLength(aarStringBlockOffset, hostStringBlock.getM_strings().length);

        int[] newStringOffsets = new int[hostStringBlockOffset.length + aarStringBlockOffset.length];
        System.arraycopy(hostStringBlockOffset, 0, newStringOffsets, 0, hostStringBlockOffset.length);
        System.arraycopy(aarStringBlockOffset, 0, newStringOffsets, hostStringBlockOffset.length, aarStringBlockOffset.length);
        hostStringBlock.oldHostBlockStringCount = hostStringBlock.getCount();
        hostStringBlock.setM_stringOffsets(newStringOffsets);
    }

    private static void offsetValueAddHostStringArrayLength(int[] aarStringBlockOffset, int length) {
        for (int i = 0; i < aarStringBlockOffset.length; i++) {
            aarStringBlockOffset[i] += length;
        }
    }

}
