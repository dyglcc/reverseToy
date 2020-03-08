package com.appadhoc.reversetoy.aar;

import brut.androlib.AndrolibException;
import brut.androlib.res.data.*;
import brut.androlib.res.decoder.StringBlock;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class HeadCalc {

    public static int getSingleSpectCount(ResTypeSpec spec) {

        return spec.getEntryCount() * 4 + new WriterNp.ResTable_typeSpec().calcCount();
    }

    public int calcRestableSize(ResTable data) {
        int size = new WriterNp.ResTableHeader().calcCount();
        int globalStringPoolSize = getGlobalStringPoolSize(data);
        System.out.println("globalStringPoolSize is :" + globalStringPoolSize);
        int packageSize = getPackageSize(data);
        int allCount = size + globalStringPoolSize + packageSize;
        System.out.println("write count  is :" + allCount);
        return allCount;
    }

    private int getPackageSize(ResTable data) {
        int allPackageSize = 0;
        Map<Integer, ResPackage> map = data.getmPackagesById();
        System.out.println("package size is " + map.size());
        for (Map.Entry entry : map.entrySet()) {
//            Integer key = (Integer) entry.getKey();
//            if (key == 1) {
//                continue;
//            }
            ResPackage pa = (ResPackage) entry.getValue();
            int singlePackageSize = getSinglePackageSize(pa);
            System.out.println("package string all count " + singlePackageSize);
            allPackageSize += singlePackageSize;

        }
        return allPackageSize;
    }

    public static int getBytesCountByStringBlock(StringBlock block) {

        WriterNp.ResStringPool_header header = new WriterNp.ResStringPool_header();
        int count = header.calcCount();
        if (block.getM_styleOffsets() != null) {
            count += block.getM_styleOffsets().length * 4;
        }
        if (block.getM_stringOffsets() != null) {
            count += block.getM_stringOffsets().length * 4;
        }
        if (block.getM_styles() != null) {
            count += block.getM_styles().length * 4;
        }
        if (block.getM_strings() != null) {
            count += block.getM_strings().length;
        }
        if (block.getRemining() != 0) {
            count += block.getRemining();
        }
        return count;

    }

    public static int getSinglePackageSize(ResPackage mResPackage) {
        int count = 0;
        WriterNp.ResTable_package resTable_package = new WriterNp.ResTable_package();
        count += resTable_package.calcCount();
        // 资源类型名称字符串池
        int specStringPool = getBytesCountByStringBlock(mResPackage.getmTypeNames());
        // 资源项关键字字符串池
        int typeStringPool = getBytesCountByStringBlock(mResPackage.getmSpecNames());
        count += specStringPool;
//        System.out.println("package string 类型名称 count " + specStringPool);
        count += typeStringPool;
//        System.out.println("package string key 资源项 count " + typeStringPool);
//        System.out.println("package string all count " + count);
        int countSpecType = getSpecTypeCount(mResPackage);
        count += countSpecType;
        return count;
    }

    public static int getSpecTypeCount(ResPackage mResPackage) {
        int count = 0;
        Map<String, ResTypeSpec> mTypes = mResPackage.getmTypes();
        for (Map.Entry entry : mTypes.entrySet()) {
            ResTypeSpec value = (ResTypeSpec) entry.getValue();
            WriterNp.ResTable_typeSpec typeSpecHeader = new WriterNp.ResTable_typeSpec();
            count += typeSpecHeader.calcCount();
            count += value.getEntryCount() * 4;
        }
        int countTypes = getAllResTypes(mResPackage);
        System.out.println("spec count is " + count);
        count += countTypes;
        return count;
    }

    public static int getAllResTypes(ResPackage value) {
        int count = 0;
        LinkedHashMap<ConfigFlagRaw, List<ResResource>> mResSpecs = value.getConfigFlagRawListLinkedHashMap();
        for (Map.Entry entry : mResSpecs.entrySet()) {
            ConfigFlagRaw raw = (ConfigFlagRaw) entry.getKey();
            List<ResResource> list = (List<ResResource>) entry.getValue();
            int type_count = getSingleTypeTypeSize(raw,list);
//            System.out.println(rawConfig.getConfigName() + " count is " + type_count + " offset array len " + rawConfig.getEntryCount() * 4);
            count += type_count;
        }
//        System.out.println("all type_type count is " + count);
        return count;
    }

    public static int getSingleTypeTypeSize(ConfigFlagRaw rawConfig, List<ResResource> listResResource) {
        int type_count = 0;
        WriterNp.ResTable_type type = new WriterNp.ResTable_type();
        type_count += type.calcCount();
        ResConfigFlags flags = rawConfig.getConfigFlags();
        type_count += flags.getRawConfig().length;
        type_count += rawConfig.getEntryCount() * 4;
        return type_count + getResEntryCount(listResResource);
    }

    public static int getResEntryCount(List<ResResource> list) {
        int count = 0;

        for (ResResource res : list) {
            count += res.getRawBytes().length;
        }
        return count;
    }

    private int getGlobalStringPoolSize(ResTable data) {

        return getBytesCountByStringBlock(getGlobalStringBlock(data));

    }

    public static StringBlock getGlobalStringBlock(ResTable data) {
        StringBlock block = null;
        try {
            block = data.getPackage(127).getGlobalStringBlock();
        } catch (AndrolibException e) {
            e.printStackTrace();
        }
        return block;
    }
}
