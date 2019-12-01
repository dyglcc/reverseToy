package com.appadhoc.reversetoy.aar;


import brut.androlib.AndrolibException;
import brut.androlib.res.data.ResID;
import brut.androlib.res.data.ResPackage;
import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.directory.Directory;
import brut.directory.DirectoryException;
import brut.directory.FileDirectory;
import brut.directory.ZipRODirectory;
import brut.util.AaptManager;
import brut.util.Jar;
import brut.util.OS;
import com.appadhoc.reversetoy.utils.Utils;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathExpressionException;
import java.io.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public class AarManager {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());
    private static AarManager instance = new AarManager();
    private Map<String,LinkedHashMap> ids;
    private static String tmpPath = "aar/tmp";
    private static String rFilePath = tmpPath + "/rFiles";
    private File toyWorkspace;
    private File tmpDir;
    private File rFiledir;

    private String getTmpPath() {
        return tmpPath;
    }

    public static AarManager getInstance() {
        return instance;
    }

    private String getAarFileName() {
        return aarFile == null ? "" : aarFile.getName().replaceFirst("\\.[^.]+$", "");
    }

    private void setTmpPath(String tmpPath) {
        this.tmpPath = tmpPath;
    }
bug, public.xml 文件找不到部分id

    public String getHostPackageName() {
        return hostPackageName;
    }

    private String hostPackageName;

    private File aarFile;


    private AarManager() {

    }

    public AarManager init(String workspace,String aarFile) {
        try {
            setWorkSpace(workspace);
            setAarFile(aarFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this;
    }

    private void setAarFile(String aarfile) throws Exception {
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

    private File getRFile() {

        if (rFiledir == null || !rFiledir.exists()) {
            rFiledir = new File(toyWorkspace, rFilePath);
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
//    public File getUnsignApk() {
//        File unzipFile = new File(tmpDir, getAarFileName());
//        File manifest = new File(unzipFile, "AndroidManifest.xml");
//        return manifest;
//    }

    private File getAarres() {
        File unzipFile = new File(tmpDir, getAarFileName());
        File res = new File(unzipFile, "res");
        return res;
    }

    // 替换了manestfest文件的place holder
    private void replaceAndroidManifestWithHostPackageId() throws IOException, BrutException {

        File manifest = getAarManifest();


        StringBuilder builder = Utils.FileUtils.readStringFromFile(manifest);


        String result = builder.toString().replaceAll("\\$\\{applicationId\\}", getHostPackageName());

        OS.rmfile(manifest.getAbsolutePath());

        Utils.FileUtils.writeString2File(new File(new File(tmpDir, getAarFileName()), "AndroidManifest.xml"), result);

    }


    public void addAarids2ResTable(ResTable resTable) throws AndrolibException {

        ResPackage mainPackage = resTable.getPackage(127);
        // 将restyp里面的都替换一下
        // 重新组成新的respect
        // type eg id integer string  attr bool
        for(String typeKey:ids.keySet()){
            Map<String,Integer> aarIdMap = (LinkedHashMap) ids.get(typeKey);
            for(String resKey:aarIdMap.keySet()){
                Integer source_integer = aarIdMap.get(resKey);
                try {
                    ResID resID = mainPackage.addAarRes(source_integer,typeKey,resKey);
                    aarIdMap.put(resKey,resID.id);
                } catch (NoSuchFieldException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        // 将resTable中的数据重新加载一次。
        mainPackage.reArrange();

        // 编译smali文件并替换smali里面的东西
        //
    }

    public static void main(String[] args) throws DirectoryException, IOException, ParserConfigurationException, SAXException, XPathExpressionException, TransformerException {

//        AarManager aarManager = AarManager.getInstance();
//        aarManager.init();
//        try {
//            aarManager.setHostPackageName("helloworld");
//            aarManager.preCombin();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }


//        File file = new File("/Users/dongyuangui/Desktop/work/toy_workspace/aar/tmp/rFiles/com/adhoc/abtest/R.java");
//        Map map = Utils.RFileUtils.readAarIds(file);
//        for(Object value:ids.keySet()){
//            System.out.println(value);
//        }
//        for(Object value:ids.values()){
//            Map map = (Map) value;
//            for(Object value1 : map.values()){
//                System.out.println("value1" + value1);
//                System.out.println("value1" + Integer.toHexString((Integer) value1));
//            }
//        }

        File sourceFile = new File("/Users/dongyuangui/Desktop/work/aar-workspace","AndroidManifest.xml");
        File desFile = new File("/Users/dongyuangui/Desktop/work/aar-workspace","abc.xml");
        Utils.XmlUtils.combin(sourceFile,desFile);

    }

    public void preCombin(File hostUnzipDir) {
        try {
            unzipAarFile();
            replaceAndroidManifestWithHostPackageId();
            aaptPackage();
            compileRfile2class();
            // read aar ids
            ids = Utils.RFileUtils.readAarIds(getRjavaFile());
            // 合并AndroidManifest文件
            combinHostManifestWithAar(hostUnzipDir);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void combinHostManifestWithAar(File hostUnzipDir) {

        File hostManifest = new File(hostUnzipDir, "AndroidManifest.xml");
        // aar manifest
        File aarManifest = getAarManifest();
        try {
            Utils.XmlUtils.combin(aarManifest,hostManifest);
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
        }


    }

    private File getRjavaFile() throws Exception {
        String rFilename = getRfileName();
        if (rFilename == null || rFilename.equals("")) {
            throw new Exception("R file not exist");
        }
        File Rfile = new File(getRFile(), rFilename);
        return Rfile;
    }

    private void compileRfile2class() throws Exception {

        File Rfile = getRjavaFile();
        compileFile(Rfile);
    }

    private void compileFile(File rfile)
            throws BrutException {
        List<String> cmd = new ArrayList<String>();

        String aaptCommand = getJavacFile().getAbsolutePath();
        cmd.add(aaptCommand);

        cmd.add(rfile.getAbsolutePath());
        try {
            OS.exec(cmd.toArray(new String[0]));
            LOGGER.fine("command ran: ");
            LOGGER.info(cmd.toString());
        } catch (BrutException ex) {
            throw new AndrolibException(ex);
        }

    }

    private File getJavacFile() {
        File file = null;
        try {
            file = Jar.getResourceAsFile("/brut/androlib/javac", AarManager.class);
        } catch (BrutException ex) {
            LOGGER.warning("javac: " + ex.getMessage());
        }
        if (file != null) {
            file.setExecutable(true);
        }
        return file;
    }

    private String getRfileName() throws DirectoryException {
        Directory directory = new FileDirectory(getRFile());
        for (String file : directory.getFiles(true)) {
            if (file.contains("R.java")) {
                return file;
            }
        }
        return null;
    }


    private void unzipAarFile()
            throws AndrolibException {
        LOGGER.info("Copying assets and libs...");
        if (toyWorkspace == null) {
            LOGGER.info("please set workspace");
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

    private void aaptPackage()
            throws BrutException {
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
        cmd.add(getAarres().getAbsolutePath());
        cmd.add("-I");

        cmd.add(Jar.getResourceAsFile("/brut/androlib/android.jar", AarManager.class).getAbsolutePath());
        cmd.add("-M");

        cmd.add(getAarManifest().getAbsolutePath());
        //../tools/aapt package -f -m -J ../Rfiles -S res -I ../tools/android.jar -M AndroidManifest.xml

        try {
            OS.exec(cmd.toArray(new String[0]));
            LOGGER.fine("command ran: ");
            LOGGER.info(cmd.toString());
        } catch (BrutException ex) {
            throw new AndrolibException(ex);
        }
    }

    public void asdfasdfasdf() {
//        todo 打包smali文件
//        reArrangeRsmalifileIDs();
//        todo 拷贝res lib jni文件到宿主目录下面
//        copyFiles();
    }
}
