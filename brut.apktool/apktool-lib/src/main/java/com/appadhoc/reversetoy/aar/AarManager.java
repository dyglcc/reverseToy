package com.appadhoc.reversetoy.aar;


import brut.androlib.AndrolibException;
import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.directory.Directory;
import brut.directory.DirectoryException;
import brut.directory.ZipRODirectory;
import brut.util.AaptManager;
import brut.util.Jar;
import brut.util.OS;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class AarManager {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());
    private static String tmpPath = "aar/tmp";
    private static String rFilePath = tmpPath + "/rFiles";
    private File toyWorkspace;
    private File tmpDir;
    private File rFiledir;

    public String getTmpPath() {
        return tmpPath;
    }

    private String getFileName() {
        return aarFile == null ? "" : aarFile.getName().replaceFirst("\\.[^.]+$", "");
    }

    public void setTmpPath(String tmpPath) {
        this.tmpPath = tmpPath;
    }


    public String getHostPackageName() {
        return hostPackageName;
    }

    private String hostPackageName;

    private File aarFile;


    public AarManager() {

    }

    public void setAarFile(String aarfile) throws Exception {
        aarFile = new File(aarfile);
        if (!aarFile.exists()) {
            throw new Exception("aar file not exist");
        }
    }

    public void setWorkSpace(String workSpaceDir) throws Exception {
        if (toyWorkspace == null || !toyWorkspace.exists()) {
            try {
                toyWorkspace = new File(workSpaceDir);
                toyWorkspace.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // 添加初始化tmp文件夹
        File file = new File(toyWorkspace, tmpPath);
        if (!file.exists()) {
            file.mkdirs();
        } else {
            // 清空tmp文件夹
            OS.rmdir(file);
        }

        this.tmpDir = file;
    }

    public File getRFile() {

        if (rFiledir != null && rFiledir.exists()) {
            return rFiledir;
        } else {
            rFiledir = new File(toyWorkspace, rFilePath);
            rFiledir.mkdirs();
            return rFiledir;
        }
    }

    public void setHostPackageName(String hostPackageName) {
        this.hostPackageName = hostPackageName;
    }


    // 替换了manestfest文件的place holder
    public void replaceAndroidManifestWithHostPackageId() throws IOException, BrutException {

        File unzipFile = new File(tmpDir, getFileName());
        File manifest = new File(unzipFile, "AndroidManifest.xml");

        StringBuilder builder = Utils.FileUtils.readStringFromFile(manifest);

        System.out.println(builder.toString());

        String result = builder.toString().replaceAll("\\$\\{applicationId\\}", getHostPackageName());
        System.out.println(result);

        OS.rmfile(manifest.getAbsolutePath());

        Utils.FileUtils.writeString2File(new File(unzipFile, "AndroidManifest.xml"), result);

    }

    private void createRjavaFile() {

    }


    public void addAarids2ResTable(ResTable resTable) {


    }

    public static void main(String[] args) throws DirectoryException {
//        ZipRODirectory dir = new ZipRODirectory("/User/jiaozhengxiang/Desktop/work/aar-workspace/abtest-lite-v5.1.3-sp.aar");

        AarManager aarManager = new AarManager();
        try {
            aarManager.setWorkSpace("/Users/jiaozhengxiang/Desktop/work/toy_workspace");
            aarManager.setHostPackageName("helloworld");
            aarManager.setAarFile("/Users/jiaozhengxiang/Desktop/work/aar-workspace/abtest-lite-v5.1.3-sp.aar");
            System.out.println(aarManager.getFileName());
            aarManager.unzipAarFile();
            aarManager.replaceAndroidManifestWithHostPackageId();

            aarManager.aaptPackage();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void unzipAarFile()
            throws AndrolibException {
        LOGGER.info("Copying assets and libs...");
        if (toyWorkspace == null) {
            LOGGER.info("please set workspace");
            return;
        }
        try {
            Directory in = new ZipRODirectory(aarFile);
            File unzipFile = new File(tmpDir, getFileName());
            if (unzipFile.exists()) {
                LOGGER.info("remove exist " + getFileName());
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
            // cp .jar 文件到libs
            File dirFile = new File(unzipFile, "libs");
            if (!dirFile.exists()) {
                dirFile.mkdirs();
            }
            // may be can rename jar avoid over write
            for (String file : in.getFiles()) {
                if (file.endsWith(".jar")) {
                    in.copyToDir(dirFile, file);
                }
            }
            // ----以上cp .jar 文件到libs

            if (in.containsFile("AndroidManifest.xml")) {
                in.copyToDir(unzipFile, "AndroidManifest.xml");
            }
            if (in.containsFile("R.txt")) {
                in.copyToDir(unzipFile, "R.txt");
            }
        } catch (DirectoryException ex) {
            throw new AndrolibException(ex);
        } catch (BrutException e) {
            e.printStackTrace();
        }
    }

    public void aaptPackage()
            throws BrutException {

        File unzipFile = new File(tmpDir, getFileName());
        List<String> cmd = new ArrayList<String>();

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
        cmd.add(getRFile().getAbsolutePath());

        cmd.add("-S");
        File resfiles = new File(unzipFile,"res");
        cmd.add(resfiles.getAbsolutePath());
        cmd.add("-I");

        cmd.add(Jar.getResourceAsFile("/brut/androlib/android.jar",AarManager.class).getAbsolutePath());
        cmd.add("-M");

        File manifest = new File(unzipFile, "AndroidManifest.xml");
        cmd.add(manifest.getAbsolutePath());
//../tools/aapt package -f -m -J ../Rfiles -S res -I ../tools/android.jar -M AndroidManifest.xml

        try {
            OS.exec(cmd.toArray(new String[0]));
            LOGGER.fine("command ran: ");
            LOGGER.fine(cmd.toString());
        } catch (BrutException ex) {
            throw new AndrolibException(ex);
        }
    }
}
