package com.appadhoc.reversetoy;

import brut.androlib.AndrolibException;
import brut.androlib.res.AndrolibResources;
import brut.androlib.res.data.ResTable;
import brut.androlib.res.decoder.StringBlock;
import brut.directory.ExtFile;

public class CombinArsc {
    public static void main(String[] args) {
        System.out.println("start combin");
        AndrolibResources resources = new AndrolibResources();
        try {
            ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk"));
            System.out.println("host table is " + hostTableTable.getmMainPackages().size());

            ResTable aarTable = resources.getResTable(new ExtFile("/Users/dongyuangui/Desktop/aar-1/aar/tmp19275/aar_tmp.apk"));
            mergeAarTable2HostTable(hostTableTable,aarTable);
            System.out.println("aar table is " + aarTable.getmMainPackages().size());

        } catch (AndrolibException e) {
            e.printStackTrace();
        }
    }

    private static void mergeAarTable2HostTable(ResTable hostTableTable, ResTable aarTable) {

        // merge stringBlock
        mergeGlobalStringBlock(hostTableTable.getGlobalStringBlock(),aarTable.getGlobalStringBlock());
        // merge spec
        // merge type


    }

    private static void mergeGlobalStringBlock(StringBlock hostStringBlock, StringBlock aarStringBlock) {

        int[] hostStringBlockOffset = hostStringBlock.getM_stringOffsets();
        int[] aarStringBlockOffset = aarStringBlock.getM_stringOffsets();



        

    }

}
