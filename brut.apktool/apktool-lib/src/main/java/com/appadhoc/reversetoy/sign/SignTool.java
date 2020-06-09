package com.appadhoc.reversetoy.sign;

import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public class SignTool {
    private static final Logger LOGGER = Logger.getLogger(SignTool.class.getName());

    public static File sign(File file, File hostdir, Map<String, String> paras) throws Exception {

        if (!file.exists()) {
            throw new Exception("unsign file not exist");
        }
        if (hostdir == null || !hostdir.exists()) {
            hostdir = file.getParentFile().getAbsoluteFile();
        }
        List<String> cmd = new ArrayList<>();
//        jarsigner -verbose -keystore /Users/jiaozhengxiang/adhoc_android/adhoc_key.jks -storepass 123456 -signedjar  signed.apk emptyapplication-debug.apk  reverse

//        java -jar apksigner.jar sign  --ks key.jks  --ks-key-alias releasekey  --ks-pass pass:pp123456  --key-pass pass:pp123456  --out output.apk  input.apk

        File signfile = Utils.BuildPackage.getSigner(SignTool.class);
        File passfile = Utils.BuildPackage.getSignatureFile(SignTool.class);
        if (!signfile.exists()) {
            throw new Exception("jar package jarsigner not exist");
        }
        if (!passfile.exists()) {
            throw new Exception("Signature File not exist");
        }
        cmd.add("java");
        cmd.add("-jar");
        cmd.add(signfile.getAbsolutePath());
        cmd.add("sign");
        cmd.add("--ks");
        cmd.add(passfile.getAbsolutePath());

        if (paras != null) {
            for (Map.Entry<String, String> entry : paras.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                cmd.add(key);
                cmd.add(value);
            }
        }
        cmd.add("--ks-key-alias");
        cmd.add("androiddebugkey");

        cmd.add("--ks-pass");
        cmd.add("pass:android");

        cmd.add("--key-pass");
        cmd.add("pass:android");

        cmd.add("--out");
        File apk = new File(hostdir, "signed" + System.currentTimeMillis() + ".apk");
        cmd.add(apk.getAbsolutePath());
        cmd.add(file.getAbsolutePath());


        Utils.OSCMD.runCMD(cmd);
//        try {
//            OS.exec(cmd.toArray(new String[0]));
//            LOGGER.fine("command ran: ");
//            LOGGER.info(cmd.toString());
//        } catch (BrutException ex) {
//            throw new AndrolibException(ex);
//        }
//        File newSignfile = new File("signed---.apk");
        LOGGER.info("[reverseToy]完成合并");
        LOGGER.info("APK文件地址：" + apk.getAbsolutePath());
        return apk;
    }

    public static void main(String[] args) {
        File fileapk = new File("/Users/dongyuangui/Desktop/apk-blue/com.qiyi.video_81350/signed1585307434239.apk");
        File file = null;
        try {
            file = SignTool.sign(fileapk, null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(file.getAbsolutePath());
    }
}
