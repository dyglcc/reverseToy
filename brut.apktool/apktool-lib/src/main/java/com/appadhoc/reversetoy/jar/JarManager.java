package com.appadhoc.reversetoy.jar;

import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.AbstractManager;
import com.appadhoc.reversetoy.utils.Utils;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathExpressionException;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

public class JarManager extends AbstractManager {
    private final static Logger LOGGER = Logger.getLogger(JarManager.class.getName());
    private File hostdir;
    private File jarFile = null;
    private File tmpDir = null;
    private File workDir = null;

    public JarManager(String jarFile) {
        try {
            setJarFile(jarFile);
            setTmpdir();
            initWorkDir();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initWorkDir() {
        workDir = new File(jarFile.getAbsolutePath().replaceFirst("\\.[^.]+$", ""));
        if (workDir.exists()) {
            try {
                OS.rmdir(workDir);
            } catch (BrutException e) {
                e.printStackTrace();
            }
        }
        workDir.mkdirs();
    }

    private void setTmpdir() throws BrutException {
        if (jarFile.isFile()) {
            tmpDir = new File(jarFile.getParentFile(), "tmp_jar" + jarFile.getName());
        }
//        else {
//            tmpDir = new File(jarFile, "tmp_dir");
//        }
        if (tmpDir.exists()) {
            OS.rmdir(tmpDir);
        }
        tmpDir.mkdirs();
    }

    public void unzipJarFile()
            throws IOException {
        if (jarFile.isFile()) {
            Utils.FileUtils.unzipSubDri2DestDir("assets", tmpDir, jarFile);
        } else if (jarFile.isDirectory()) {
            for (File file : Objects.requireNonNull(jarFile.listFiles())) {
                if (file.getName().endsWith(".jar")) {
                    Utils.FileUtils.unzipSubDri2DestDir("assets", tmpDir, file);
                }
            }
        }
    }

    private void copyFiles(File hostdir) throws IOException, BrutException {
        // copy assets
        File assetsHost = new File(hostdir, "assets");
        File assetsJar = new File(tmpDir, "assets");
        if (assetsJar.exists()) {
            OS.cpdir(assetsJar, assetsHost);
            LOGGER.info("拷贝assets文件到host dir assets 文件夹");
        }
    }

    private void setJarFile(String jarfile) throws Exception {
        jarFile = new File(jarfile);
        if (!jarFile.exists()) {
            throw new Exception("jar file not exist");
        }
        if (jarFile.getName().endsWith(".jar")) {
            return;
        }
        boolean hasJarfile = false;
        if (jarFile.isDirectory()) {
            for (File file : jarFile.listFiles()) {
                if (file.getName().endsWith(".jar")) {
                    hasJarfile = true;
                }
            }
        }
        if (!hasJarfile) {
            throw new Exception("未发现jar文件");
        }
    }

    private File smaliClass() throws Exception {
        File workDir = getWorkDir();
        File dexFile = Utils.BuildPackage.dx2dexfiles(workDir, JarManager.class,jarFile);
        return Utils.BuildPackage.all2Smali(hostdir, dexFile, JarManager.class);
    }

    private File getWorkDir() throws BrutException {
        return workDir;
    }

    @Override
    public void setHostPackageName(String packageNmae) {

    }

    private void combinHostManifestWithAar(List<String> list, File hostUnzipDir) {

        File hostManifest = new File(hostUnzipDir, "AndroidManifest.xml");
        // aar manifest
        try {
            Utils.XmlUtils.combinWithList(list, hostManifest);
//            Utils.XmlUtils.combin(aarManifest, hostManifest);
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        } catch (XPathExpressionException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void preCombin(File outputdir) throws BrutException {

        List<String> permissions = new ArrayList<>();
        permissions.add("android.permission.INTERNET");
        permissions.add("android.permission.ACCESS_NETWORK_STATE");
        permissions.add("android.permission.READ_PHONE_STATE");
        permissions.add("android.permission.ACCESS_WIFI_STATE");

        combinHostManifestWithAar(permissions, outputdir);

        try {
            unzipJarFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addMergeArscFile(ResTable resTable) {

    }

    @Override
    public void addIDs2HostFile(File apkOutFile) {

    }

    @Override
    public File smaliClassFilesAndModifyids(File hostdir) {
        try {
            copyFiles(hostdir);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (BrutException e) {
            e.printStackTrace();
        }
        try {
            return smaliClass();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void setHostDir(File hostDir) throws Exception {
        if (hostDir == null || !hostDir.exists()) {
            throw new Exception("out put dir not exist");
        }
        this.hostdir = hostDir;
    }

    public static void main(String[] args) {
        JarManager jarManager = new JarManager("/Users/jiaozhengxiang/Desktop/aar-1/libs");
//        JarManager jarManager = new JarManager("/Users/jiaozhengxiang/Desktop/aar-1/abtest-release.aar");
        File hostdir = new File("/Users/jiaozhengxiang/Desktop/apk-blue/app-debug-remove-statusbutton");
        try {
            jarManager.setHostDir(hostdir);
            jarManager.unzipJarFile();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
