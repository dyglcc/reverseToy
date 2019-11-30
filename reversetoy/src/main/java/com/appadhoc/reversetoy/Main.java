package com.appadhoc.reversetoy;


import brut.androlib.Androlib;
import brut.androlib.AndrolibException;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.common.BrutException;
import brut.directory.DirectoryException;

import java.io.File;
import java.io.IOException;
//d /Users/jiaozhengxiang/Desktop/AbTestDemo-debug.apk -o /Users/jiaozhengxiang/Desktop/work
public class Main {
    public static void main(String[] args) throws BrutException, IOException {
        // -----------------------------decode  apk-------------------
        decodeApkTest();



        //------------------------------build apk---------------------
//        buildApkTest();

    }

    public static void decodeApkTest() throws AndrolibException, IOException, DirectoryException {
        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        File file = new File("/Users/jiaozhengxiang/Desktop/AbTestDemo-debug.apk");
        File outFile = new File("/Users/jiaozhengxiang/Desktop/apktool_workspace");
        decoder.setApkFile(file);
        decoder.setOutDir(outFile);
//        new Androlib(options).build(new File("."), outFile);
        decoder.decode();
    }

    public static void buildApkTest(){
        ApkOptions options = new ApkOptions();
        options.verbose=true;
        options.debugMode = true;
        try {
            new Androlib(options).build(new File("/Users/jiaozhengxiang/Desktop/apktool_workspace"), new File("helloBuildByapi.apk"));
        } catch (BrutException e) {
            e.printStackTrace();
        }
    }
}
