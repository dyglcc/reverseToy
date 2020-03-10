package com.appadhoc.reversetoy;

import brut.androlib.Androlib;
import brut.androlib.AndrolibException;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.common.BrutException;
import brut.directory.ZipUtils;
import com.appadhoc.reversetoy.exception.AarFileNotExistException;
import com.appadhoc.reversetoy.exception.ApkFileNotExistException;
import com.appadhoc.reversetoy.inject.EguanReflectionOper;
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
            test_reverse(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/meishe.apk");
        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
        buildApk(apkOutFile);

        File fileRaw = new File("/Users/dongyuangui/Desktop/apk-blue/abc0000");
        File outApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/output_abc0000.apk");
        ZipUtils.zipFolders(fileRaw,outApkfile, null, null);
    }

    public static void test_reverse(HashMap map) throws Exception {

        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = false;
//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug.apk");
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/fiexd9patch.apk");
//        File file = new File("/Users/dongyuangui/Desktop/toy/apks/meishe.apk");
//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
        decoder.setApkFile(file);
        decoder.setOutDir(apkOutFile);
        decoder.setDecodeResources(ApkDecoder.DECODE_RESOURCES_FULL);
//        decoder.setDecodeResources(ApkDecoder.DECODE_RESOURCES_NONE);
        decoder.setDecodeAssets(ApkDecoder.DECODE_ASSETS_NONE);
        decoder.setDecodeSources(ApkDecoder.DECODE_SOURCES_SMALI_ONLY_MAIN_CLASSES);
        decoder.setForceDecodeManifest(ApkDecoder.FORCE_DECODE_MANIFEST_FULL);
        // init decoder -----------oper

        String filePath = "/Users/dongyuangui/Desktop/aar-1/abtest-release.aar";

        // aar oper
        MultiSDKs multi = new MultiSDKs();
        multi.dealWithSDKpackages("eguan",new File(filePath),apkOutFile,decoder);

        // smali oper --------------------
        EguanReflectionOper oper = new EguanReflectionOper();
        oper.setOptions(map);
//        oper.setAppkey(appkey);
        oper.addOrModifyApplicationSmali(apkOutFile, multi.getSmaliFolder());
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        File unsignfile = buildApk(apkOutFile);
        logger.info("##########打包合并后的文件生成未签名文件[完成]##########");
        File signFile = SignTool.sign(unsignfile, apkOutFile);
        logger.info("##########签名 apk代码[完成]##########");
        logger.info("#########################################################");
        logger.info("##########" + signFile.getAbsolutePath() + "##########");
        logger.info("########################################################");
    }

    public static void reverse(File apkfile, File aar, String sdktype, HashMap operOptions) throws Exception {
        if (!apkfile.exists()) {
            throw new ApkFileNotExistException("apk file not exist or can not read");
        }
        if (!aar.exists()) {
            throw new AarFileNotExistException("aar/jar file not exist or can not read");
        }
//        if (!json.exists()) {
//            throw new AarFileNotExistException("aar/jar file not exist or can not read");
//        }
        //-----------decoder setting--------------
        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        ApkOptions options = new ApkOptions();
        options.verbose = true;
        decoder.setDecodeSources(ApkDecoder.DECODE_SOURCES_SMALI_ONLY_MAIN_CLASSES);
        logger.info("apk file name " + apkfile.getAbsolutePath());
        File apkOutFile = new File(apkfile.getParentFile(), Utils.getNameRemovedSuffix(apkfile.getName()));
        decoder.setApkFile(apkfile);
        decoder.setOutDir(apkOutFile);

        // aar oper
        MultiSDKs multi = new MultiSDKs();
        multi.dealWithSDKpackages(sdktype,aar,apkOutFile,decoder);


        EguanReflectionOper oper = new EguanReflectionOper();
        oper.setOptions(operOptions);
//        oper.setJson(json);
        oper.addOrModifyApplicationSmali(apkOutFile, multi.getSmaliFolder());
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
        options.verbose = false;
        options.debugMode = false;
//        options.useAapt2 = true;

        File unsignFile = new File(hostdir, "unsign-merged.apk");
        try {
            new Androlib(options).build(hostdir, unsignFile);
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return unsignFile;
    }

    public static void testDecode() throws AndrolibException {
        ApkDecoder decoder = new ApkDecoder();
        decoder.setForceDelete(true);
        decoder.setDecodeSources(ApkDecoder.DECODE_SOURCES_NONE);
        ApkOptions options = new ApkOptions();
        options.useAapt2 = true;
        options.verbose = true;
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/aweme_aweGW_v9.2.0_cb8ae11.apk");

        logger.info("apk file name " + file.getAbsolutePath());
        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
        decoder.setApkFile(file);
        decoder.setOutDir(apkOutFile);
    }
}
