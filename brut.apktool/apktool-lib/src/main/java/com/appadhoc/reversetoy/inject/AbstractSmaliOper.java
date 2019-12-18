package com.appadhoc.reversetoy.inject;

import brut.util.OS;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.InputStream;
import java.util.Objects;
import java.util.logging.Logger;
import java.util.regex.Matcher;

public abstract class AbstractSmaliOper {
    private final static Logger LOGGER = Logger.getLogger(AbstractSmaliOper.class.getName());
    String stubDir = "com.reverse.stub";
    String sdktype;
//    设置 debug 模式，值：0、1、2
    int debugMode = 2;
    String appkey= "2709692586aa3e42";
    String channel="AnalsysyDemo";

    boolean autoProfilel = true;
//    EMPTY(0),
//    AES(1),
//    AES_CBC(2);
    int encryptType = 1;
    boolean allowTimeCheck = true;
    long maxDiffTimeInterval = 5*60;
    boolean autoInstallation = true;
    boolean autoHeatMap = false;
    boolean autoTrackPageView = true;
    boolean autoTrackFragmentPageView = false;
    boolean autoTrackClick = false;
    boolean enableException = true;

    String uploadUrl = "https://arkpaastest.analysys.cn:4089";
    String debugUrl ="wss://arkpaastest.analysys.cn:4091";
    String configUrl ="https://arkpaastest.analysys.cn:4089";
    public void setDebugMode(int debugMode) throws Exception {
        this.debugMode = debugMode;
        LOGGER.info("debugMode is " + debugMode);
    }
    public void setAppkey(String appkey) throws Exception {
        this.appkey = appkey;
        LOGGER.info("appkey is " + appkey);
        if (appkey != null) {
            if (appkey.trim().equals("")) {
                throw new Exception("appkey is empty");
            }
        }
    }

    public void setChannel(String channel) throws Exception {
        this.channel = channel;
        LOGGER.info("channel is " + channel);
        if (channel != null) {
            if (channel.trim().equals("")) {
                throw new Exception("channel is empty");
            }
        }
    }

    public void setAutoProfilel(boolean autoProfilel) throws Exception {
        this.autoProfilel = autoProfilel;
        LOGGER.info("autoProfilel is " + autoProfilel);
    }

    public void setEncryptType(int encryptType) throws Exception {
        this.encryptType = encryptType;
        LOGGER.info("encryptType is " + encryptType);
    }

    public void setAllowTimeCheck(boolean allowTimeCheck) throws Exception {
        this.allowTimeCheck = allowTimeCheck;
        LOGGER.info("allowTimeCheck is " + allowTimeCheck);
    }

    public void setMaxDiffTimeInterval(int maxDiffTimeInterval) throws Exception {
        this.maxDiffTimeInterval = maxDiffTimeInterval;
        LOGGER.info("allowTimeCheck is " + maxDiffTimeInterval);
    }

    public void setAutoInstallation(boolean autoInstallation) throws Exception {
        this.autoInstallation = autoInstallation;
        LOGGER.info("autoInstallation is " + autoInstallation);
    }

    public void setAutoHeatMap(boolean autoHeatMap) throws Exception {
        this.autoHeatMap = autoHeatMap;
        LOGGER.info("autoHeatMap is " + autoHeatMap);
    }

    public void setAutoTrackPageView(boolean autoTrackPageView) throws Exception {
        this.autoTrackPageView = autoTrackPageView;
        LOGGER.info("autoInstallation is " + autoTrackPageView);
    }

    public void setAutoTrackFragmentPageView(boolean autoTrackFragmentPageView) throws Exception {
        this.autoTrackFragmentPageView = autoTrackFragmentPageView;
        LOGGER.info("autoTrackFragmentPageView is " + autoTrackFragmentPageView);
    }

    public void setAutoTrackClick(boolean autoTrackClick) throws Exception {
        this.autoTrackClick = autoTrackClick;
        LOGGER.info("autoTrackFragmentPageView is " + autoTrackClick);
    }

    public void setEnableException(boolean enableException) throws Exception {
        this.enableException = enableException;
        LOGGER.info("enableException is " + enableException);
    }

    public void setUploadUrl(String uploadUrl) throws Exception {
        this.uploadUrl = uploadUrl;
        LOGGER.info("uploadUrl is " + uploadUrl);
        if (uploadUrl != null) {
            if (uploadUrl.trim().equals("")) {
                throw new Exception("appkey is empty");
            }
        }
    }

    public void setVisitorDebugUrl(String debugUrl) throws Exception {
        this.debugUrl = debugUrl;
        LOGGER.info("debugUrl is " + debugUrl);
        if (debugUrl != null) {
            if (debugUrl.trim().equals("")) {
                throw new Exception("debugUrl is empty");
            }
        }
    }

    public void setVisitorConfigUrl(String configUrl) throws Exception {
        this.configUrl = configUrl;
        LOGGER.info("configUrl is " + configUrl);
        if (configUrl != null) {
            if (configUrl.trim().equals("")) {
                throw new Exception("configUrl is empty");
            }
        }
    }

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

    protected abstract String replaceDebugMode(int debugMode, String code) throws Exception;
    protected abstract String replaceAppkey(String appkey, String code) throws Exception;

    protected abstract String replaceChannel(String channel, String code) throws Exception;

    protected abstract String replaceAutoProfilel(boolean autoProfilel, String code) throws Exception;

    protected abstract String replaceEncryptType(int type, String code) throws Exception;

    protected abstract String replaceAllowTimeCheck(boolean allowTimeCheck, String code) throws Exception;

    protected abstract String replaceMaxDiffTimeInterval(long maxDiffTimeInterval, String code) throws Exception;

    protected abstract String replaceAutoInstallation(boolean autoInstallation, String code) throws Exception;

    protected abstract String replaceAutoHeatMap(boolean autoHeatMap, String code) throws Exception;

    protected abstract String replaceAutoTrackPageView(boolean autoTrackPageView, String code) throws Exception;

    protected abstract String replaceAutoTrackFragmentPageView(boolean autoTrackFragmentPageView, String code) throws Exception;

    protected abstract String replaceAutoTrackClick(boolean autoTrackClick, String code) throws Exception;

    protected abstract String replaceEnableException(boolean enableException, String code) throws Exception;

    protected abstract String replaceUploadUrl(String uploadUrl, String code) throws Exception;

    protected abstract String replaceVisitorDebugUrl(String debugUrl, String code) throws Exception;

    protected abstract String replaceVisitorConfigUrl(String configUrl, String code) throws Exception;


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
//            invoke-direct {p0}, Lcom/reverse/stub/App;->initReverseSDK()V
        String callMethodCode = "invoke-direct {p0}, L" + hostAppName.replaceAll("\\.", "/") + ";->initReverseSDK()V";
        InputStream codePieceFileIputSream = getAssetsCodeMethodInit();

        String methodCode = Utils.FileUtils.readStringFromStream(codePieceFileIputSream).toString();

//        if (appkey != null && !appkey.equals("")) {
//            methodCode = replaceAppkey(appkey, methodCode);
//        }
        methodCode = replacePara(methodCode);
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
        boolean replaceSuccess = srcStr.contains("method private initReverseSDK");
        boolean replaceCallSuccess = srcStr.contains("->initReverseSDK()V");
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

//        if (appkey != null && !appkey.equals("")) {
//            code = replaceAppkey(appkey, code);
//        }
        code = replacePara(code);
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

    private String replacePara(String code) throws Exception {
        Utils.SmaliUtils.checkExistSmaliCode(code);
        code = replaceDebugMode(debugMode,code);
        code = replaceAppkey(appkey,code);
        code = replaceChannel(channel,code);
        code = replaceAutoProfilel(autoProfilel,code);
        code = replaceEncryptType(encryptType,code);
        code = replaceAllowTimeCheck(allowTimeCheck,code);
        code = replaceMaxDiffTimeInterval(maxDiffTimeInterval,code);
        code = replaceAutoInstallation(autoInstallation,code);
        code = replaceAutoHeatMap(autoHeatMap,code);
        code = replaceAutoTrackPageView(autoTrackPageView,code);
        code = replaceAutoTrackFragmentPageView(autoTrackFragmentPageView,code);
        code = replaceAutoTrackClick(autoTrackClick,code);
        code =  replaceEnableException(enableException,code);

        code = replaceUploadUrl(uploadUrl,code);
        code = replaceVisitorDebugUrl(debugUrl,code);
        code  = replaceVisitorConfigUrl(configUrl,code);
        return code;
    }
}
