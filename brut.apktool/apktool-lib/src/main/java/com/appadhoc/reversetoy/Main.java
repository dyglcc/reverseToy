package com.appadhoc.reversetoy;

import brut.androlib.AndrolibException;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.androlib.res.AndrolibResources;
import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.directory.ExtFile;
import brut.directory.ZipUtils;
import brut.util.OS;
import com.appadhoc.reversetoy.exception.AarFileNotExistException;
import com.appadhoc.reversetoy.exception.ApkFileNotExistException;
import com.appadhoc.reversetoy.inject.ReflectionOper;
import com.appadhoc.reversetoy.sign.SignTool;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Logger;

public class Main {
    private static final Logger logger = Logger.getLogger(Main.class.getName());

    public static void main(String[] args) throws Exception {
//        try {
//            HashMap map = new HashMap();
//            map.put("cfu","asdfahttp://asdf");
//            map.put("ousc","com.adhoc");
//            map.put("hello","com.adhoc");
//            test_reverse(map);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
//        File apkOutFile = new File(srcApkfile.getParentFile(), Utils.getNameRemovedSuffix(srcApkfile.getName()));
//        unZipHostApk(srcApkfile,apkOutFile);

//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/meishe.apk");
//        File apkOutFile = new File(file.getParentFile(), Utils.getNameRemovedSuffix(file.getName()));
//        buildApk(apkOutFile);

        File fileRaw = new File("/Users/dongyuangui/Desktop/apk-blue/signed1584869817798");
        File outApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/output_abc0000.apk");
        ZipUtils.zipFolders(fileRaw,outApkfile, null, null);
        SignTool.sign(outApkfile, new File("/Users/dongyuangui/Desktop/apk-blue/output_lingdan-sign.apk"));
    }

    public static void test_reverse(HashMap map) throws Exception {
        AndrolibResources resources = new AndrolibResources();
        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/com.xunmeng.pinduoduo_47101.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/com.jingdong.app.mall_69021.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/meishe.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/com.xingin.xhs_6370100.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/com.qiyi.video_81350.apk");
        String filePath = "/Users/dongyuangui/Desktop/aar-1/abtest-release.aar";
//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/fiexd9patch.apk");
//        File file = new File("/Users/dongyuangui/Desktop/toy/apks/meishe.apk");
        File apkOutFile = new File(srcApkfile.getParentFile(), Utils.getNameRemovedSuffix(srcApkfile.getName()));

        unZipHostApk(srcApkfile,apkOutFile);

        ResTable hostTableTable = resources.getResTable(new ExtFile(srcApkfile));

        XmlParser parser =XmlParser.parse(new FileInputStream(new File(apkOutFile,"AndroidManifest.xml")));

        SmaliDecoderReverse smaliDecoderReverse = new SmaliDecoderReverse(srcApkfile,apkOutFile,parser);
        smaliDecoderReverse.decodeSmali();

        // aar oper
        MultiSDKs multi = new MultiSDKs(hostTableTable,parser,map);
        multi.dealWithSDKpackages(new File(filePath),apkOutFile);

        // smali oper --------------------
        ReflectionOper oper = new ReflectionOper();
        oper.setOptions(map);
//        oper.setAppkey(appkey);
        oper.deleteOldSdkSmaliFile(apkOutFile, multi.getSmaliFolder(),parser);
//        oper.addOrModifyApplicationSmali(apkOutFile, multi.getSmaliFolder(),parser);
        logger.info("##########添加或者修改Application smali代码[完成]##########");
        File unsignfile = buildApk(apkOutFile, smaliDecoderReverse);
        logger.info("##########打包合并后的文件生成未签名文件[完成]##########");
        File signFile = SignTool.sign(unsignfile, apkOutFile);
        logger.info("##########签名 apk代码[完成]##########");
        logger.info("#########################################################");
        logger.info("##########" + signFile.getAbsolutePath() + "##########");
        logger.info("########################################################");
    }

    public static void unZipHostApk(File srcApkfile, File apkOutFile) throws BrutException, IOException {
        if(apkOutFile.exists()){
            OS.rmdir(apkOutFile);
        }
        Utils.FileUtils.unzip(srcApkfile,apkOutFile);
    }

    public static void reverse(File apkfile, File aar, HashMap options) throws Exception {
        if (!apkfile.exists()) {
            throw new ApkFileNotExistException("apk file not exist or can not read");
        }
        if (!aar.exists()) {
            throw new AarFileNotExistException("aar/jar file not exist or can not read");
        }
//        if (!json.exists()) {
//            throw new AarFileNotExistException("aar/jar file not exist or can not read");
//        }
        AndrolibResources resources = new AndrolibResources();
        logger.info("apk file name " + apkfile.getAbsolutePath());
        File apkOutFile = new File(apkfile.getParentFile(), Utils.getNameRemovedSuffix(apkfile.getName()));
        unZipHostApk(apkfile,apkOutFile);

        ResTable hostTableTable = resources.getResTable(new ExtFile(apkfile));

        XmlParser hostParse =XmlParser.parse(new FileInputStream(new File(apkOutFile,"AndroidManifest.xml")));
        SmaliDecoderReverse smaliDecoderReverse = new SmaliDecoderReverse(apkfile,apkOutFile,hostParse);
        smaliDecoderReverse.decodeSmali();

        // aar oper
        MultiSDKs multi = new MultiSDKs(hostTableTable,hostParse,options);
        multi.dealWithSDKpackages(aar,apkOutFile);


        ReflectionOper oper = new ReflectionOper();
        oper.setOptions(options);
//        oper.setJson(json);
        oper.deleteOldSdkSmaliFile(apkOutFile, multi.getSmaliFolder(),hostParse);
//        oper.addOrModifyApplicationSmali();
        logger.info("添加或者修改Application smali代码[完成]");
        File unsignfile = buildApk(apkOutFile,smaliDecoderReverse);
        logger.info("打包合并后的文件生成未签名文件[完成]");
        File signFile = SignTool.sign(unsignfile, apkOutFile);
        logger.info("签名apk文件[完成]");
        logger.info("#############################################");
        logger.info("合并后文件" + signFile.getAbsolutePath());
        logger.info("#############################################");
    }

    public static File buildApk(File hostdir, SmaliDecoderReverse smaliDecoderReverse) throws BrutException, IOException {
//        ApkOptions options = new ApkOptions();
//        options.verbose = false;
//        options.debugMode = false;
////        options.useAapt2 = true;

//        File fileDist = new File(hostdir,"dist");
//        if(!fileDist.exists()){
//            fileDist.mkdirs();
//        }

        File unsignFile = new File(hostdir.getParentFile(), "unsign-merged.apk");
//        try {
//            new Androlib(options).build(hostdir, unsignFile);
//        } catch (BrutException e) {
//            e.printStackTrace();
//        }
        smaliDecoderReverse.buildSources(hostdir);
        smaliDecoderReverse.buildNonDefaultSources(new ExtFile(hostdir));
        ZipUtils.zipFolders(hostdir,unsignFile, null, null);
        return unsignFile;
    }
//    public static File buildApk(File hostdir) {
//        ApkOptions options = new ApkOptions();
//        options.verbose = false;
//        options.debugMode = false;
////        options.useAapt2 = true;
//
//        File unsignFile = new File(hostdir, "unsign-merged.apk");
//        try {
//            new Androlib(options).build(hostdir, unsignFile);
//        } catch (BrutException e) {
//            e.printStackTrace();
//        }
//        return unsignFile;
//    }

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
