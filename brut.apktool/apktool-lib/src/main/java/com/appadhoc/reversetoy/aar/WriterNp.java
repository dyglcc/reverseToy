package com.appadhoc.reversetoy.aar;

import brut.androlib.AndrolibException;
import brut.androlib.res.data.*;
import brut.androlib.res.decoder.StringBlock;
import com.mindprod.ledatastream.LEDataOutputStream;
import com.tencent.mm.util.ExtDataOutput;

import java.io.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class WriterNp {
    ExtDataOutput mOut;
    File arscOutFile;
    ResTable  data;

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

    public void wirte(ResTable data) {

        writeTableHeader();
//        writeGlobalStringPool();
//        writePackage();
    }

    private void writeTableHeader() {
        int size = 0x0c;
        int tableSize;
        int GlobalStringPoolSize = getGlobalStringPoolSize();
        int packageSize = getPackageSize();
//        Header tableHeader = new Header(Header.TYPE_TABLE, size, )
    }

    private int getPackageSize() {
        int allPackageSize = 0;
        Map<Integer, ResPackage> map = data.getmPackagesById();
        for(Map.Entry entry : map.entrySet()){
            ResPackage pa = (ResPackage) entry.getValue();
            int singlePackageSize = getSinglePackageSize(pa);
            allPackageSize += singlePackageSize;
        }
        return allPackageSize;
    }

    private int getBytesCountByStringBlock(StringBlock block) {

        ResStringPool_header header = new ResStringPool_header();

        return header.calcCount()
                + block.getM_styleOffsets().length * 4
                + block.getM_stringOffsets().length * 4
                + block.getM_styles().length * 4
                + block.getM_strings().length;

    }

    private int getSinglePackageSize(ResPackage mResPackage) {
        int count = 0;
        ResTable_package resTable_package = new ResTable_package();
        count += resTable_package.calcCount();
        // 资源类型名称字符串池

        int specStringPool = getBytesCountByStringBlock(mResPackage.getmTypeNames());
        // 资源项关键字字符串池
        int typeStringPool = getBytesCountByStringBlock(mResPackage.getmSpecNames());
        count += specStringPool;
        count += typeStringPool;
        int countSpecType = getSpecTypeCount(mResPackage);


        return count;

    }

    private int getSpecTypeCount(ResPackage mResPackage) {
        int count = 0;
        Map<String, ResTypeSpec> mTypes = mResPackage.getmTypes();
        for (Map.Entry entry : mTypes.entrySet()) {
            String name = (String) entry.getKey();
            ResTypeSpec value = (ResTypeSpec) entry.getValue();
            ResTable_typeSpec typeSpecHeader = new ResTable_typeSpec();
            count += typeSpecHeader.calcCount();
            int countTypes = getAllResTypes(value);
            count +=countTypes;

        }
        return count;
    }

    private int getAllResTypes(ResTypeSpec value) {

        int count = 0;
        ResTable_type type = new ResTable_type();
        count += type.calcCount();

        LinkedHashMap<String, ResResSpec> mResSpecs  = (LinkedHashMap<String, ResResSpec>) value.getmResSpecs();
        for(Map.Entry entry : mResSpecs.entrySet()){
            ResResSpec resResSpec = (ResResSpec) entry.getValue();
            int resEntryCount = getResEntryCount(resResSpec);

        }
        return 0;
    }

    private int getResEntryCount(ResResSpec resResSpec) {
        int count = 0;

        Map<ResConfigFlags, ResResource> resResourceMap = resResSpec.getmResources();
        for(Map.Entry entry: resResourceMap.entrySet()){
            ResTable_type header = new ResTable_type();
            count  += header.calcCount();


        }
        return 0;
    }

    private int getGlobalStringPoolSize() {

        StringBlock block = data.getGlobalStringBlock();

        return getBytesCountByStringBlock(block);

    }

    public static class Header {
        public final short type;
        public final int headerSize;
        public final int size;

        public Header(short type, int headerSize, int chunkSize) {
            this.type = type;
            this.headerSize = headerSize;
            this.size = chunkSize;
        }


        public static Header readAndWriteHeader(ExtDataOutput out, short type, short count, int size)
                throws IOException, AndrolibException {

            try {
                out.writeShort(type);
                out.writeShort(count);
                out.writeInt(size);
            } catch (EOFException ex) {
                return new Header(TYPE_NONE, 0, 0);
            }
            return new Header(type, count, size);
        }

        public final static short TYPE_NONE = -1, TYPE_TABLE = 0x0002,
                TYPE_PACKAGE = 0x0200, TYPE_TYPE = 0x0201, TYPE_SPEC_TYPE = 0x0202, TYPE_LIBRARY = 0x0203;


    }


    private class ResTableHeader implements calcCount {
        Header header;
        // package 个数
        int packageCount;

        @Override
        public int calcCount() {
            return 8 + 4;
        }
    }


    private class ResStringPool_header implements calcCount {
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


    private class ResTable_package implements calcCount {
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


        @Override
        public int calcCount() {
            return 8 + 4 + 256 + 4 * 4;
        }
    }

    private class ResTable_typeSpec implements calcCount {
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

    private class ResTable_type implements calcCount {
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
            return 8 + 1 + 1 + 2 + 2 * 4 + new ResTable_config().calcCount();
        }
    }

    private class ResTable_config implements calcCount {
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

    private class ResTable_entry implements calcCount {

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


    private class ResTable_map_entry extends ResTable_entry {
        //指向父ResTable_map_entry的资源ID，如果没有父ResTable_map_entry，则等于0。
        int parent;
        //等于后面ResTable_map的数量

        int count;

        @Override
        public int calcCount() {
            return super.calcCount() + 2 * 4;
        }
    }

    private class ResTable_map implements calcCount {
        //bag资源项ID
        int name;
        //bag资源项值
        Res_value value;

        @Override
        public int calcCount() {
            return 4 + value.calcCount();
        }
    }

    private class Res_value implements calcCount {
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
}
