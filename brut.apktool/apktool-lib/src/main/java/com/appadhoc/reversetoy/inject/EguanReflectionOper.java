package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import java.util.regex.Matcher;

public class EguanReflectionOper {
    private final static Logger LOGGER = Logger.getLogger(EguanReflectionOper.class.getName());
    private HashMap<String, Object> options;
    String stubDir = "com.reverse.stub";
    private String SDK_DIR = "com.analysys";
    private String exclue = "track";
    private static final String appNameStub_Eguan = "com.reverse.stub.EguanApp";
//    private File jsonFile;

    public void addOrModifyApplicationSmali(File hostDir, List<File> newSmaliFolder) throws Exception {
        if (newSmaliFolder == null || newSmaliFolder.size() == 0) {
            throw new Exception("SDK smali 文件夹不存在");
        }
        deleteOldSdkSmaliFile(SDK_DIR, hostDir, newSmaliFolder, exclue);
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_Eguan);
        File lastFolder = newSmaliFolder.get(newSmaliFolder.size() - 1);
        if (appName.equals(appNameStub_Eguan)) {
            copyStubSmali2HostDir(stubDir, lastFolder);
        } else {
            modifyExistAppSmali(hostDir, appName);
        }
        copyJSON2HostAssets(hostDir);
        copyUtilsSmaliFile(stubDir, lastFolder);
    }

    private void copyJSON2HostAssets(File hostDir) throws IOException {

        String code = null;
        String jsonName = "reverse_code_json_default.txt";
        File assets = new File(hostDir, "assets");
        if (!assets.exists()) {
            assets.mkdirs();
        }
        if (options != null && options.containsKey("json")) {
            File jsonFile = new File((String) options.get("json"));
            code = Utils.FileUtils.readStringFromFile(jsonFile).toString();
        } else {
            InputStream inputStream = null;

            try {
                inputStream = Resource.getResourceAsStream("/brut/androlib/" + jsonName, getClass());
            } catch (BrutException e) {
                e.printStackTrace();
            }
            code = Utils.FileUtils.readStringFromStream(inputStream).toString();
        }
        LOGGER.info("copy utils file to folder" + jsonName);
        File saveApplicationFile = new File(assets, jsonName);
        Utils.FileUtils.writeString2File(saveApplicationFile, code);
    }

    private void copyUtilsSmaliFile(String appName, File aarSmaliFolder) throws IOException {
        File stubDir = new File(aarSmaliFolder, appName.replaceAll("\\.", File.separator));
        if (!stubDir.exists()) {
            stubDir.mkdirs();
        }
        ArrayList<String> files = new ArrayList<>();
        files.add("Utils$1.smali");
        files.add("Utils$CodeBean$Method_$Para.smali");
        files.add("Utils$CodeBean$Method_.smali");
        files.add("Utils$CodeBean$StaticField.smali");
        files.add("Utils$CodeBean.smali");
        files.add("Utils$JSONparse.smali");
        files.add("Utils$Reflection.smali");
        files.add("Utils.smali");
        copy(files, stubDir);

    }

    private void copyStubSmali2HostDir(String appName, File aarSmaliFolder) throws Exception {

        // copy App.smali file 2 host smali folder
        File stubDir = new File(aarSmaliFolder, appName.replaceAll("\\.", File.separator));
        if (!stubDir.exists()) {
            stubDir.mkdirs();
        }
        InputStream stubAppSmaliFile = getAssetsAppStubSmaliFile();
        String code = Utils.FileUtils.readStringFromStream(stubAppSmaliFile).toString();

        LOGGER.info("change result is copy" + code);
        String fileName = getSmaliApplicationName();
        File saveApplicationFile = new File(stubDir, fileName);
        Utils.FileUtils.writeString2File(saveApplicationFile, code);
    }

    private void modifyExistAppSmali(File hostdir, String hostAppName) throws Exception {
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


        String methodCodeReplaceMent = null;
        if (methodCode != null) {
            methodCodeReplaceMent = Matcher.quoteReplacement(methodCode);
        }
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

    private String getSmaliApplicationName() {
        String fupath = appNameStub_Eguan;
        String[] names = fupath.split("\\.");
        return names[names.length - 1] + ".smali";
    }

    private InputStream getAssetsAppStubSmaliFile() {
        InputStream inputStream = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    private InputStream getAssetsCodeMethodInit() {
        InputStream inputStream = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/Eguan-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    // 删除旧sdk 的smali文件 // upgrade sdk may be useful
    private void deleteOldSdkSmaliFile(String path, File hostdir, List<File> exclude, String excludeSDKdir) throws Exception {

//        System.out.println("old sdk path " + path);
        if (path == null || path.equals("")) {
            throw new Exception("旧的SDK路径不存在");
        }
        if (!hostdir.exists()) {
            throw new Exception("host dir 不存在");
        }
        path = path.replaceAll("\\.", File.separator);
        for (File file : Objects.requireNonNull(hostdir.listFiles())) {
            String fileName = file.getName();
            if (fileName.startsWith("smali") && !fileNameInList(fileName, exclude)) { // 新生成的sdk smali不删除
                File existOldSdkdir = new File(file, path);
                if (existOldSdkdir.exists()) {
                    for (File fileYiguan : Objects.requireNonNull(existOldSdkdir.listFiles())) {
                        if (!fileYiguan.getName().equals(excludeSDKdir)) {
                            LOGGER.info("删除旧的SDK目录" + existOldSdkdir.getAbsolutePath());
                            if (fileYiguan.isFile()) {
                                OS.rmfile(fileYiguan.getAbsolutePath());
                            } else {
                                OS.rmdir(fileYiguan);
                            }
                        }
                    }

                }
            }
        }
    }

    private boolean fileNameInList(String fileName, List<File> files) {
        boolean inFiles = false;
        for (File file : files) {
            if (file.getName().equals(fileName)) {
                inFiles = true;
                break;
            }
        }
        return inFiles;
    }

    private void copy(ArrayList<String> filesNames, File stubDir) throws IOException {
        for (int i = 0; i < filesNames.size(); i++) {
            InputStream inputStream = null;
            String fileName_ = filesNames.get(i);
            try {
                inputStream = Resource.getResourceAsStream("/brut/androlib/" + fileName_, getClass());
            } catch (BrutException e) {
                e.printStackTrace();
            }
            String code = Utils.FileUtils.readStringFromStream(inputStream).toString();
            LOGGER.info("copy utils file to folder" + fileName_);
            File saveApplicationFile = new File(stubDir, fileName_);
            Utils.FileUtils.writeString2File(saveApplicationFile, code);

        }
    }

    public void setOptions(HashMap opt) {
        options = opt;
    }

//    public void setJson(File json) {
//        this.jsonFile = json;
//    }
}