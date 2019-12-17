package com.appadhoc.reversetoy.inject;

import brut.util.OS;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.InputStream;
import java.util.Objects;
import java.util.logging.Logger;
import java.util.regex.Matcher;

public abstract class AbstractSmaliOper {
        private static final String APPKEY = "2709692586aa3e42"; // default appkey
    private final static Logger LOGGER = Logger.getLogger(AbstractSmaliOper.class.getName());
    String stubDir = "com.reverse.stub";
    String sdktype;


    public void setAppkey(String appkey) throws Exception {
        this.appkey = appkey;
        LOGGER.info("appkey is " + appkey);
        if (appkey != null) {
            if (appkey.trim().equals("")) {
                throw new Exception("appkey is empty");
            }
        }
    }

    String appkey;


    public void addOrModifyApplicationSmali(File hostDir, File newSmaliFolder) throws Exception {

        deleteOldSdkSmaliFile(this.getSDKdir(), hostDir, newSmaliFolder);
        String appName = Utils.XmlUtils.setApplicationName(hostDir, getStubApplicationName());
        if (appName.equals(getStubApplicationName())) {
            copyStubSmali2HostDir(stubDir, newSmaliFolder);
        } else {
            modifyExistAppSmali(hostDir, appName);
        }
    }

    protected abstract InputStream getAssetsAppStubSmaliFile();

    protected abstract InputStream getAssetsCodeMethodInit();

    protected abstract String getSDKdir();

    protected abstract String getStubApplicationName();

    protected abstract String replaceAppkey(String appkey, String code) throws Exception;

    AbstractSmaliOper(String sdktype) {
        this.sdktype = sdktype;
    }

    private String getSmaliApplicationName() {
        String fupath = getStubApplicationName();
        String[] names = fupath.split("\\.");
        return names[names.length - 1] + ".smali";
    }

    protected void modifyExistAppSmali(File hostdir, String hostAppName) throws Exception {
        if (!hostdir.exists()) {
            throw new Exception("host dir not exist");
        }
        if (hostAppName == null || hostAppName.equals("")) {
            throw new Exception("hostAppName must be not  null");
        }
        String hostAppNameFileName = hostAppName.replaceAll("\\.", File.separator) + ".smali";
//            invoke-direct {p0}, Lcom/reverse/stub/App;->initSDK()V
        String callMethodCode = "invoke-direct {p0}, L" + hostAppName.replaceAll("\\.", "/") + ";->initSDK()V";
        InputStream codePieceFileIputSream = getAssetsCodeMethodInit();

        String methodCode = Utils.FileUtils.readStringFromStream(codePieceFileIputSream).toString();

        if (appkey != null && !appkey.equals("")) {
            methodCode = replaceAppkey(appkey, methodCode);
        }
        String methodCodeReplaceMent = Matcher.quoteReplacement(methodCode);
        LOGGER.info("change result is " + methodCodeReplaceMent);
        File needModiFile = null;
        for (File subSmaiFolder : hostdir.listFiles()) {
            if (subSmaiFolder.isDirectory() && subSmaiFolder.getName().startsWith("smali")) {
                File file = new File(subSmaiFolder, hostAppNameFileName);
                if (file.exists()) {
                    needModiFile = file;
                    break;
                }
            }
        }
        if (needModiFile == null) {
            throw new Exception("can not find src Application smali file ,file name path " + hostAppName);
        }
        System.out.println(needModiFile.getAbsolutePath());
        String srcStr = Utils.FileUtils.readStringFromFile(needModiFile).toString();
        srcStr = srcStr.replaceFirst(".method\\s+public\\s+constructor\\s+<init>\\(\\)V(.*\\n)+?.end\\s+method", "$0\n\n" + methodCodeReplaceMent);
        srcStr = srcStr.replaceFirst(".method\\s+public\\s+(final\\s+)?onCreate\\(\\)V(.*\\n)+?\\s*.locals\\s+\\d+", "$0\n\n" + callMethodCode);
        Utils.FileUtils.writeString2File(needModiFile, srcStr);
        boolean replaceSuccess = srcStr.contains("method private initSDK");
        boolean replaceCallSuccess = srcStr.contains("->initSDK()V");
        if (!replaceCallSuccess || !replaceSuccess) {
            throw new Exception("modify " + hostAppName + " smali modify failed");
        }
    }

    protected void copyStubSmali2HostDir(String appName, File aarSmaliFolder) throws Exception {

        // copy App.smali file 2 host smali folder
        File stubDir = new File(aarSmaliFolder, appName.replaceAll("\\.", File.separator));
        if (!stubDir.exists()) {
            stubDir.mkdirs();
        }
        InputStream stubAppSmaliFile = getAssetsAppStubSmaliFile();
        String code = Utils.FileUtils.readStringFromStream(stubAppSmaliFile).toString();

        if (appkey != null && !appkey.equals("")) {
            code = replaceAppkey(appkey, code);
        }
        LOGGER.info("change result is copy" + code);
        String fileName = getSmaliApplicationName();
        File saveApplicationFile = new File(stubDir, fileName);
        Utils.FileUtils.writeString2File(saveApplicationFile, code);
    }

    // 删除旧sdk 的smali文件 // upgrade sdk may be useful
    protected void deleteOldSdkSmaliFile(String path, File hostdir, File exclude) throws Exception {

//        System.out.println("old sdk path " + path);
        if (path == null || path.equals("")) {
            throw new Exception("旧的SDK路径不存在");
        }
        if (!hostdir.exists()) {
            throw new Exception("host dir 不存在");
        }
        if (!exclude.exists()) {
            throw new Exception("SDK smali 文件夹不存在");
        }
        path = path.replaceAll("\\.", File.separator);
        for (File file : Objects.requireNonNull(hostdir.listFiles())) {
            String fileName = file.getName();
            if (fileName.startsWith("smali") && !fileName.equals(exclude.getName())) { // 新生成的sdk smali不删除
                File existOldSdkdir = new File(file, path);
                if (existOldSdkdir.exists()) {
                    LOGGER.info("删除旧的SDK目录" + existOldSdkdir.getAbsolutePath());
                    OS.rmdir(existOldSdkdir);
                }
            }
        }
    }
}
