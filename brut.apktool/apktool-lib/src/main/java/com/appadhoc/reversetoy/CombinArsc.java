package com.appadhoc.reversetoy;

import brut.androlib.AndrolibException;
import brut.androlib.res.AndrolibResources;
import brut.androlib.res.data.ResPackage;
import brut.androlib.res.data.ResResource;
import brut.androlib.res.data.ResTable;
import brut.androlib.res.data.ResTypeSpec;
import brut.androlib.res.decoder.StringBlock;
import brut.directory.ExtFile;
import com.appadhoc.reversetoy.aar.ConfigFlagRaw;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CombinArsc {
    public static void main(String[] args) {
        System.out.println("start combin");
        AndrolibResources resources = new AndrolibResources();
        try {
            ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk"));
            System.out.println("host table is " + hostTableTable.getmMainPackages().size());

            ResTable aarTable = resources.getResTable(new ExtFile("/Users/dongyuangui/Desktop/aar-1/aar/tmp19275/aar_tmp.apk"));
            mergeAarTable2HostTable(hostTableTable, aarTable);
            System.out.println("aar table is " + aarTable.getmMainPackages().size());

        } catch (AndrolibException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void mergeAarTable2HostTable(ResTable hostTableTable, ResTable aarTable) throws Exception {

        // merge GlobalStringBlock
        mergelStringBlock(hostTableTable.getGlobalStringBlock(), aarTable.getGlobalStringBlock());
        // merge spec

        mergePackage(hostTableTable.getPackage(127), aarTable.getPackage(127));

        // merge type

    }

    private static void mergePackage(ResPackage hostPackage, ResPackage aarPackage) throws Exception {


        mergelStringBlock(hostPackage.getmTypeNames(), aarPackage.getmTypeNames());
        mergelStringBlock(hostPackage.getmSpecNames(), aarPackage.getmSpecNames());

        mergeLibrary();
        // merge other
        mergeParaTypes(hostPackage.getmTypes(), aarPackage.getmTypes());

        mergeAllTypes(hostPackage.getConfigFlagRawListLinkedHashMap(), aarPackage.getConfigFlagRawListLinkedHashMap());


    }

    private static void mergeAllTypes(LinkedHashMap<ConfigFlagRaw, List<ResResource>> host, LinkedHashMap<ConfigFlagRaw, List<ResResource>> aar) {
        for (Map.Entry aarEntry : aar.entrySet()) {
            ConfigFlagRaw aarRaw = (ConfigFlagRaw) aarEntry.getKey();
            List<ResResource> aarList = (List<ResResource>) aarEntry.getValue();
            String keyName = aarRaw.getConfigName();
            ConfigFlagRaw hostRaw = checkContainKeyName(host, keyName);
            if (hostRaw != null) {
                mergeSingleType(host.get(hostRaw),aar.get(aarRaw));
            } else {
                host.put(aarRaw, aarList);
            }
        }

    }

    // todo 替换id 啊，要不id冲突了
    private static void mergeSingleType(List<ResResource> resResources, List<ResResource> aar) {
        for(int i=0;i<aar.size();i++){
            resResources.add(aar.get(i));
        }
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
//        todo
    }

    private static void mergeParaTypes(Map<String, ResTypeSpec> hostTypes, Map<String, ResTypeSpec> aarTypes) {
        for (Map.Entry aarEntry : hostTypes.entrySet()) {
            String typeName = (String) aarEntry.getKey();
            if (!aarTypes.containsKey(typeName)) {
                hostTypes.put(typeName, (ResTypeSpec) aarEntry.getValue());
            }
        }

    }


    private static void mergelStringBlock(StringBlock hostStringBlock, StringBlock aarStringBlock) throws Exception {

        // combine merge offset
        mergeStringOffset(hostStringBlock, aarStringBlock);

        // combine style offset

        mergeStylesOffset(hostStringBlock, aarStringBlock);

        mergeStrings(hostStringBlock, aarStringBlock);


        mergeStyles(hostStringBlock, aarStringBlock);


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
        byte[] newStrings = new byte[hostStrings.length + aarStrings.length];
        System.arraycopy(hostStrings, 0, newStrings, 0, hostStrings.length);
        System.arraycopy(aarStrings, 0, newStrings, hostStrings.length, aarStrings.length);
        hostStringBlock.setM_strings(newStrings);
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

        if ((lenO_aar + lenO_host) == 0) {
            return;
        }
        int[] newStyleOffsets = new int[lenO_host + lenO_aar];
        if (hostStylesOffset != null) {
            System.arraycopy(hostStylesOffset, 0, newStyleOffsets, 0, hostStylesOffset.length);
        }
        if (aarStylesOffset != null) {
            System.arraycopy(aarStylesOffset, 0, newStyleOffsets, hostStylesOffset.length, aarStylesOffset.length);
        }
        hostStringBlock.hostGlobalBlockStyleIndexOffset = hostStylesOffset.length;
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
        hostStringBlock.hostGlobalBlockStringIndexOffset = hostStringBlockOffset.length;
        hostStringBlock.setM_stringOffsets(newStringOffsets);
    }

    private static void offsetValueAddHostStringArrayLength(int[] aarStringBlockOffset, int length) {
        for (int i = 0; i < aarStringBlockOffset.length; i++) {
            aarStringBlockOffset[i] += aarStringBlockOffset[i] + length;
        }
    }

}
