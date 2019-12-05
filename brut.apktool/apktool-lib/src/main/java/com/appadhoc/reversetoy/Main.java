package com.appadhoc.reversetoy;


import brut.androlib.Androlib;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.common.BrutException;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.inject.InjectManager;
import com.appadhoc.reversetoy.sign.SignTool;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;

public class Main {
    private static final Logger logger = Logger.getLogger(Main.class.getName());

    public static void main(String[] args) throws BrutException, IOException {
        try {
            reverse();
//            File file = buildApk();
//            System.out.println(file.getAbsoluteFile());
//            File sign = SignTool.sign(file);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void reverse() throws Exception {

        //-----------decoder setting--------------
        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
        decoder.setApkFile(file);
        decoder.setOutDir(apkOutFile);

        //-----------------------------------------
        //-------AarManager setting----------------
//        AarManager manager = AarManager.getInstance().init("/Users/jiaozhengxiang/Desktop/work/aar-workspace/abtest-lite-v5.1.3-sp.aar");
        AarManager manager = AarManager.getInstance().init("/Users/dongyuangui/Desktop/aar-1/abtest-release.aar");
        decoder.decode(manager);
        logger.info("##########解压apk文件[完成]##########");
        manager.addIDs2HostFile(apkOutFile);
        logger.info("##########添加IDS到IDS.xml[完成]##########");
        File smaliFile = manager.smaliClassFilesAndModifyids(apkOutFile);
        logger.info("##########重新编排ID并拷贝文件到宿主文件夹[完成]##########");
        new InjectManager().addOrModifyApplicationSmali(apkOutFile,smaliFile);
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        File unsignfile = buildApk(apkOutFile);
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        File signFile = SignTool.sign(unsignfile,apkOutFile);
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        logger.info("#########################################################");
        logger.info("##########signfile path:"+signFile.getAbsolutePath()+"##########");
        logger.info("########################################################");
    }

    public static File buildApk(File hostdir) {
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        options.debugMode = true;

        File unsignFile = new File(hostdir, "helloBuildByapi.apk");
        try {
            new Androlib(options).build(hostdir, unsignFile);
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return unsignFile;
    }
}
