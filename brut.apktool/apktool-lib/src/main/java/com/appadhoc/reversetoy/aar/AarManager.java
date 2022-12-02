package com.appadhoc.reversetoy.aar;


import brut.androlib.AndrolibException;
import brut.androlib.res.AndrolibResources;
import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.directory.Directory;
import brut.directory.DirectoryException;
import brut.directory.ExtFile;
import brut.directory.ZipRODirectory;
import brut.util.AaptManager;
import brut.util.OS;
import com.appadhoc.reversetoy.AbstractManager;
import com.appadhoc.reversetoy.MergeAndMestFile;
import com.appadhoc.reversetoy.MergeArsc;
import com.appadhoc.reversetoy.XmlResIDReplaceTool;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.XmlWriter;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.*;
import java.util.*;
import java.util.logging.Logger;

public class AarManager extends AbstractManager {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());
    private String aarPackageName;
    private Map<String, LinkedHashMap> ids;
    private File toyWorkspace;
    private File tmpDir;
    private File rFiledir;
    private String hostPackageName;
    private File aarFile;
    private File hostDir;
    private ResTable mHostTable;

    private String getAarFileName() {
        return aarFile == null ? "" : Utils.getNameRemovedSuffix(aarFile.getName());
    }

    public String getHostPackageName() {
        return hostPackageName;
    }

    public AarManager(String aarFile) {
        try {
            LOGGER.fine("aarFile  name " + aarFile + "");
            setWorkSpace(new File(aarFile).getParentFile().getAbsolutePath());
            setAarFile(aarFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setAarFile(String aarfile) throws Exception {
        aarFile = new File(aarfile);
        if (!aarFile.exists()) {
            throw new Exception("aar file not exist");
        }
    }

    private void setWorkSpace(String workSpaceDir) throws Exception {
        if (toyWorkspace == null || !toyWorkspace.exists()) {
            try {
                toyWorkspace = new File(workSpaceDir);
                toyWorkspace.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // 添加初始化tmp文件夹
        File file = new File(toyWorkspace, "aar/tmp" + UUID.randomUUID().toString().substring(0, 5));
        if (!file.exists()) {
            file.mkdirs();
        } else {
            // 清空tmp文件夹
            OS.rmdir(file);
        }

        this.tmpDir = file;
    }

    private File getRFileDir() {

        if (rFiledir == null || !rFiledir.exists()) {
            rFiledir = new File(tmpDir, "rFiles");
            rFiledir.mkdirs();
        }
        return rFiledir;
    }

    public void setHostPackageName(String hostPackageName) {
        this.hostPackageName = hostPackageName;
    }

    private File getAarManifest() {
        File unzipFile = new File(tmpDir, getAarFileName());
        File manifest = new File(unzipFile, "AndroidManifest.xml");
        return manifest;
    }

    private File getAarres() {
        File unzipFile = new File(tmpDir, getAarFileName());
        File res = new File(unzipFile, "res");
        if (!res.exists()) {
            res.mkdirs();
        }
        return res;
    }
    private File getAArJNIDir() {
        File unzipFile = new File(tmpDir, getAarFileName());
        File jni = new File(unzipFile, "jni");
        if (jni.exists()) {
            return jni;
        }
        return null;
    }

    // 替换了manestfest文件的place holder
    private void replaceAndroidManifestWithHostPackageId() throws IOException, BrutException {

        File manifest = getAarManifest();

        StringBuilder builder = Utils.FileUtils.readStringFromFile(manifest);

        String result = builder.toString().replaceAll("\\$\\{applicationId\\}", getHostPackageName());

        OS.rmfile(manifest.getAbsolutePath());

        Utils.FileUtils.writeString2File(new File(new File(tmpDir, getAarFileName()), "AndroidManifest.xml"), result);

    }


    public void unzipAarAndCreateTmpApk() {
        try {
            unzipAarFile();
            setAarPackageId();
            replaceAndroidManifestWithHostPackageId();
            aaptAarPackageNew();
            unzipCompiledTmpApk();
            compileRfile2class();
            // read aar ids
            getRjavaFile();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void unzipCompiledTmpApk() throws IOException {
        File zipfile = getTmpApkFile();
        compiledAarApkDir = new File(zipfile.getParentFile(),Utils.getNameRemovedSuffix(zipfile.getName()));
        Utils.FileUtils.unzip(zipfile, compiledAarApkDir);
    }

    @Override
    public void mergeArscFile() throws Exception {
        AndrolibResources resources = new AndrolibResources();
        File apkFile = getTmpApkFile();
        if(!Utils.findArsc(apkFile)){
            LOGGER.info("merge arsc file aar arsc file not found");
            return;
        }
        ResTable aarTableTable = resources.getResTable(new ExtFile(apkFile));
        MergeArsc.mergeAarTable2HostTable(mHostTable,aarTableTable);
        LOGGER.info("merge arsc file ...");
        WriterArsc.write(new File(hostDir,"resources.arsc"),mHostTable);
    }

    private File compiledAarApkDir;
    @Override
    public void mergeManifestFile(XmlParser hostAndroidMenifest) throws Exception {
        File fileAar = new File(compiledAarApkDir,"AndroidManifest.xml");
        XmlParser aarParse = XmlParser.parse(new FileInputStream(fileAar));
//        aarParse.parse(new FileInputStream(fileAar));

        XmlParser data = MergeAndMestFile.mergeXml(hostAndroidMenifest,aarParse);
        File dest = new File(hostDir,"AndroidManifest.xml");
        XmlWriter.write2NewXml(dest, data); // 生成了mapping文件
        LOGGER.info("merge AndroidManifest.xml to " +dest.getAbsolutePath());
    }

    private void setAarPackageId() throws IOException, SAXException, ParserConfigurationException {
        File manifest = getAarManifest();
        String packageName = Utils.XmlUtils.getPackageName(manifest);
        this.aarPackageName = packageName;
    }


    private File getRjavaFile() throws Exception {
        File Rfile = new File(getRFileDir(), aarPackageName.replaceAll("\\.", File.separator) + File.separator + "R.java");
        return Rfile;
    }

    private void compileRfile2class() throws Exception {

        File Rfile = getRjavaFile();
        if (Rfile.exists()) {
            compileFile(Rfile);
        }

    }

    private void compileFile(File rfile)
            throws BrutException {
        List<String> cmd = new ArrayList<String>();

        String aaptCommand = Utils.BuildPackage.getJavacFile().getAbsolutePath();
        cmd.add(aaptCommand);

        cmd.add(rfile.getAbsolutePath());
        Utils.OSCMD.runCMD(cmd);

    }

    private void unzipAarFile()
            throws AndrolibException {
        LOGGER.fine("Copying assets and libs...");
        if (toyWorkspace == null) {
            LOGGER.fine("please set workspace");
            return;
        }
        try {
            Directory in = new ZipRODirectory(aarFile);
            File unzipFile = new File(tmpDir, getAarFileName());
            if (unzipFile.exists()) {
                LOGGER.info("remove exist " + getAarFileName());
                OS.rmdir(unzipFile);
            }
            // 创建文件路径
            unzipFile.mkdirs();

            if (in.containsDir("assets")) {
                in.copyToDir(unzipFile, "assets");
            }

            if (in.containsDir("jni")) {
                in.copyToDir(unzipFile, "jni");
            }
            if (in.containsDir("res")) {
                in.copyToDir(unzipFile, "res");
            }
            if (in.containsDir("libs")) {
                in.copyToDir(unzipFile, "libs");
            }
            for (String file : in.getFiles()) {
                if (file.endsWith(".jar")) {
                    in.copyToDir(unzipFile, file);
                }
            }
            // ----以上cp .jar 文件到libs

            if (in.containsFile("AndroidManifest.xml")) {
                in.copyToDir(unzipFile, "AndroidManifest.xml");
            }
            if (in.containsFile("R.txt")) {
                in.copyToDir(unzipFile, "R.txt");
            }
            // cp .jar 文件到libs
            File aarlibs = new File(unzipFile, "libs");
            if (!aarlibs.exists()) {
                aarlibs.mkdirs();
            }
            for (File file : Objects.requireNonNull(unzipFile.listFiles())) {
                if (file.getName().endsWith(".jar")) {
                    File newName = new File(unzipFile, System.currentTimeMillis() + ".jar");
                    Utils.FileUtils.reNameFile(file.getAbsolutePath(), newName.getAbsolutePath());
                    OS.cpfile2src(newName, aarlibs);
                }
            }

        } catch (DirectoryException ex) {
            throw new AndrolibException(ex);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public File getTmpApkFile() {
        return new File(tmpDir, "aar_tmp.apk");
    }

    public void aaptAarPackageNew()
            throws BrutException, IOException {
        List<String> cmd = new ArrayList<String>();
        if (!getAarres().exists()) {
            LOGGER.fine("aar file have no res file");
            return;
        }
        try {
            String aaptCommand = AaptManager.getAppt1().getAbsolutePath();
            cmd.add(aaptCommand);
        } catch (BrutException ex) {
            LOGGER.warning("aapt: " + ex.getMessage() + " (defaulting to $PATH binary)");
        }
        cmd.add("package");
        cmd.add("-f");
        cmd.add("-m");
        cmd.add("-J");
        cmd.add(getRFileDir().getAbsolutePath());
        cmd.add("-F");
        cmd.add(getTmpApkFile().getAbsolutePath());

        cmd.add("-S");
        cmd.add(getAarres().getAbsolutePath());
        cmd.add("-I");

        cmd.add(Utils.BuildPackage.getAndroidJar(AarManager.class).getAbsolutePath());
        cmd.add("-M");

        cmd.add(getAarManifest().getAbsolutePath());
        Utils.OSCMD.runCMD(cmd);
    }

    public File smaliClassFilesAndModifyids(File hostdir) throws Exception {
        // before gen all smali file ,delete old sdk smali files
        File aarSmaliFile = smaliClass(hostdir);
        reArrangeRsmalifileIDs(aarSmaliFile);
        copyFiles(hostdir);
        return aarSmaliFile;
    }

    @Override
    public void setHostDir(File hostDir) throws Exception {
        this.hostDir = hostDir;
    }

    @Override
    public void sethostArscTable(ResTable mHostTable) {
        this.mHostTable = mHostTable;

    }

    private void copyFiles(File hostdir) throws  BrutException {
//        File unzipFile = new File(tmpDir, getAarFileName());
        // copy res
        File resHost = new File(hostdir, "res");
        File resAar = new File(compiledAarApkDir, "res");
        if(!resHost.exists()){
            resHost.mkdirs();
        }
        if (resAar.exists()) {
            OS.cpdir(resAar, resHost);
            LOGGER.info("拷贝res文件到host文件");
        }
        // copy assets
        File assetsHost = new File(hostdir, "assets");
        File unzipFile = new File(tmpDir, getAarFileName());
        File assetsAar = new File(unzipFile, "assets");
        if (assetsAar.exists()) {
            OS.cpdir(assetsAar, assetsHost);
            LOGGER.info("拷贝assets文件到host文件");
        }
        // copy jni
        File jniHost = new File(hostdir, "lib");
        File jniAar = getAArJNIDir();
        if (jniAar!=null) {
            for(File jniFolder:jniAar.listFiles()){
                File fileHostFolder = new File(jniHost,jniFolder.getName());
                if(fileHostFolder.exists()){
                    OS.cpdir(jniFolder, fileHostFolder);
                }
            }
            LOGGER.info("拷贝jni文件到host文件");
        }

    }

    private void reArrangeRsmalifileIDs(File aarSmaliFilerDirs) throws Exception {

        if (aarSmaliFilerDirs == null || !aarSmaliFilerDirs.exists()) {
            throw new Exception("need all aarSmaliFile but not found");
        }

        if (aarPackageName == null || aarPackageName.equals("")) {
            throw new Exception("aar file pacagename is null");
        }

        if (MergeArsc.mapping == null) {
            LOGGER.fine("ids is empty");
            return;
        }

        String rSmaliDirs_str = aarPackageName.replaceAll("\\.", String.valueOf(File.separatorChar));

        File rSmalidir = new File(aarSmaliFilerDirs, rSmaliDirs_str);
        if (!rSmalidir.exists()) {
            throw new Exception("aar R$  smali file not exist");
        }
        for (File file : Objects.requireNonNull(rSmalidir.listFiles())) {
            if (file.getName().contains("R$")) {
//                System.out.println(file.getName());
                StringBuilder stringBuilder = Utils.RFileUtils.smaliFileIdReplace(file, MergeArsc.mapping);
                Utils.FileUtils.writeString2File(new File(file.getAbsolutePath()), stringBuilder.toString());
            }
        }

    }

    private File smaliClass(File hostdir) throws Exception {
        rClass2jar();
        File libs = getAarLibDir();
        File dexFile = Utils.BuildPackage.dx2dexfiles(libs, AarManager.class);
        return Utils.BuildPackage.all2Smali(hostdir, dexFile, AarManager.class);
        // change R.smali ids
    }

    private File getAarLibDir() {
        File aardir = new File(tmpDir, getAarFileName());
        File libs = new File(aardir, "libs");
        if(!libs.exists()){
            libs.mkdirs();
        }
        return libs;
    }

    private void rClass2jar() throws Exception {
        File rfiledir = getRFileDir();
        if (!rfiledir.exists() || (rfiledir.listFiles().length == 0)) {
            LOGGER.fine("r class  not exist");
            return;
        }
        File[] files = rfiledir.listFiles();
        if (files.length == 0) {
            throw new Exception("R class file not exist");
        }
        List<String> cmd = new ArrayList<>();
        File fileJar = Utils.BuildPackage.getJarComm(AarManager.class);
        File rclassJar = new File(rfiledir, "rClasses.jar");
        if (rclassJar.exists()) {
            rclassJar.delete();
        }
        cmd.add(fileJar.getAbsolutePath());
        cmd.add("cf");
        cmd.add(rclassJar.getAbsolutePath());
//        cmd.add("-C");
        cmd.add(rfiledir.getAbsolutePath());
        cmd.add(".");
        Utils.OSCMD.runCMD(cmd);
        // copy rClasses.jar 2 libs
        rclassJar.setExecutable(true);
        if (!rclassJar.exists()) {
            throw new Exception("rClasses.jar 文件生成失败");
        }
        // tood change 2 getFilename
        File libs = getAarLibDir();
        OS.cpfile2src(rclassJar, libs);

    }

    public void replacAarIdsIDs(File apkOutFile) throws Exception {
        XmlResIDReplaceTool.decodeDirAndReplace(new File(compiledAarApkDir,"res"));
    }

    public static void main(String[] args) throws Exception {
        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
        File apkOutFile = new File(srcApkfile.getParentFile(), Utils.getNameRemovedSuffix(srcApkfile.getName()));
        AndrolibResources resources = new AndrolibResources();

        ResTable hostTableTable = resources.getResTable(new ExtFile("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk"));

        AarManager manager = new AarManager("/Users/dongyuangui/Desktop/aar-1/abtest-release.aar");
        manager.setHostPackageName("abc.abc.eea");
        manager.setHostDir(apkOutFile);
        manager.sethostArscTable(hostTableTable);
        manager.unzipAarAndCreateTmpApk();


    }

}
