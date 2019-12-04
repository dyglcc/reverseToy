package com.appadhoc.reversetoy.sign;

import brut.androlib.AndrolibException;
import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class SignTool {
    private static final Logger LOGGER = Logger.getLogger(SignTool.class.getName());

    public static File sign(File file,File hostdir) throws Exception {

        if(!file.exists()){
            throw new Exception("unsign file not exist");
        }
        if(!hostdir.exists()){
            hostdir = file.getParentFile().getAbsoluteFile();
        }
        List<String> cmd = new ArrayList<>();
//        jarsigner -verbose -keystore /Users/jiaozhengxiang/adhoc_android/adhoc_key.jks -storepass 123456 -signedjar  signed.apk emptyapplication-debug.apk  reverse

//        java -jar apksigner.jar sign  --ks key.jks  --ks-key-alias releasekey  --ks-pass pass:pp123456  --key-pass pass:pp123456  --out output.apk  input.apk

        File signfile = Utils.BuildPackage.getSigner(SignTool.class);
        File passfile = Utils.BuildPackage.getSignatureFile(SignTool.class);
        if(!signfile.exists()){
            throw new Exception("jar package jarsigner not exist");
        }
        if(!passfile.exists()){
            throw new Exception("Signature File not exist");
        }
        cmd.add("java");
        cmd.add("-jar");
        cmd.add(signfile.getAbsolutePath());
        cmd.add("sign");
        cmd.add("--ks");
        cmd.add(passfile.getAbsolutePath());
        cmd.add("--ks-key-alias");
        cmd.add("reverse");

        cmd.add("--ks-pass");
        cmd.add("pass:123456");

        cmd.add("--key-pass");
        cmd.add("pass:123456");

        cmd.add("--out");
        File apk = new File(hostdir,"signed"+System.currentTimeMillis()+".apk");
        cmd.add(apk.getAbsolutePath());
        cmd.add(file.getAbsolutePath());


        try {
            OS.exec(cmd.toArray(new String[0]));
            LOGGER.fine("command ran: ");
            LOGGER.info(cmd.toString());
        } catch (BrutException ex) {
            throw new AndrolibException(ex);
        }
//        File newSignfile = new File("signed---.apk");
        LOGGER.info("##########签名APK完成##################");
        LOGGER.info("##########文件地址："+apk.getAbsolutePath()+"##################");
        return apk;
    }

    public static void main(String[] args){
        File fileapk = new File("/Users/jiaozhengxiang/adhoc_android/emptyapplication/build/outputs/apk/debug/emptyapplication-debug.apk");
        File file = null;
        try {
            file = SignTool.sign(fileapk,null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(file.getAbsolutePath());
    }
}
