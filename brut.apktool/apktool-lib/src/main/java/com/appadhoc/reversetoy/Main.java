package com.appadhoc.reversetoy;

import brut.androlib.Androlib;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.common.BrutException;
import com.appadhoc.reversetoy.exception.AarFileNotExistException;
import com.appadhoc.reversetoy.exception.ApkFileNotExistException;
import com.appadhoc.reversetoy.inject.AbstractSmaliOper;
import com.appadhoc.reversetoy.inject.InjectManagerFactory;
import com.appadhoc.reversetoy.sign.SignTool;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Logger;

public class Main {
    private static final Logger logger = Logger.getLogger(Main.class.getName());

    public static void main(String[] args) throws BrutException, IOException {
        try {
            HashMap map = new HashMap();
            map.put("cfu","asdfahttp://asdf");
            test_reverse("jar", "app-keyaasdf",map);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void test_reverse(String jar, String appkey,HashMap map) throws Exception {

        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        File file = new File("/Users/jiaozhengxiang/Desktop/apk-blue/reader.apk");
        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
        decoder.setApkFile(file);
        decoder.setOutDir(apkOutFile);
        AbstractManager manager = null;
        if (jar.equals("jar")) {
            manager = ManagerFactory.getIToyManager("/Users/jiaozhengxiang/Desktop/aar-1/libs");
        } else {
            manager = ManagerFactory.getIToyManager("/Users/jiaozhengxiang/Desktop/aar-1/abtest-release.aar");
        }
        manager.setSdkType("eguan");
        decoder.decode(manager);
        manager.setHostDir(apkOutFile);
        logger.info("##########解压apk文件[完成]##########");
        manager.addIDs2HostFile(apkOutFile);
        logger.info("##########添加IDS到IDS.xml[完成]##########");
        File smaliFile = manager.smaliClassFilesAndModifyids(apkOutFile);
        logger.info("##########重新编排ID并拷贝文件到宿主文件夹[完成]##########");
        AbstractSmaliOper oper = InjectManagerFactory.createOper(manager.getSdkType());
        oper.setOptions(map);
//        oper.setAppkey(appkey);
        oper.addOrModifyApplicationSmali(apkOutFile, smaliFile);
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        File unsignfile = buildApk(apkOutFile);
        logger.info("##########打包合并后的文件生成未签名文件[完成]##########");
        File signFile = SignTool.sign(unsignfile, apkOutFile);
        logger.info("##########签名 apk代码[完成]##########");
        logger.info("#########################################################");
        logger.info("##########" + signFile.getAbsolutePath() + "##########");
        logger.info("########################################################");
    }

    public static void reverse(File apkfile, File aar, String sdktype, String appkey, HashMap operOptions) throws Exception {
        if (!apkfile.exists()) {
            throw new ApkFileNotExistException("apk file not exist or can not read");
        }
        if (!aar.exists()) {
            throw new AarFileNotExistException("aar/jar file not exist or can not read");
        }
        //-----------decoder setting--------------
        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        logger.info("apk file name " + apkfile.getAbsolutePath());
        File apkOutFile = new File(apkfile.getParentFile(), Utils.getNameRemovedSuffix(apkfile.getName()));
        decoder.setApkFile(apkfile);
        decoder.setOutDir(apkOutFile);

        // pre decode file, unzip aar or jar file
        AbstractManager manager = ManagerFactory.getIToyManager(aar.getAbsolutePath());
        manager.setSdkType(sdktype);
        decoder.decode(manager);
        manager.setHostDir(apkOutFile);
        logger.info("解压apk文件[完成]");
        manager.addIDs2HostFile(apkOutFile);
        logger.info("添加IDS到IDS.xml[完成]");
        File smaliFile = manager.smaliClassFilesAndModifyids(apkOutFile);
        logger.info("重新编排ID并拷贝文件到宿主文件夹[完成]");
        AbstractSmaliOper oper = InjectManagerFactory.createOper(manager.getSdkType());
        oper.setAppkey(appkey);
        oper.setOptions(operOptions);
        oper.addOrModifyApplicationSmali(apkOutFile, smaliFile);
        logger.info("添加或者修改Application smali代码[完成]");
        File unsignfile = buildApk(apkOutFile);
        logger.info("打包合并后的文件生成未签名文件[完成]");
        File signFile = SignTool.sign(unsignfile, apkOutFile);
        logger.info("签名apk文件[完成]");
        logger.info("#############################################");
        logger.info("合并后文件" + signFile.getAbsolutePath());
        logger.info("#############################################");
    }

    public static File buildApk(File hostdir) {
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        options.debugMode = true;

        File unsignFile = new File(hostdir, "unsign-merged.apk");
        try {
            new Androlib(options).build(hostdir, unsignFile);
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return unsignFile;
    }
}
