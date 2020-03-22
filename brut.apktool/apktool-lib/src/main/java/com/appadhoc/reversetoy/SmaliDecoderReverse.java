package com.appadhoc.reversetoy;

import brut.androlib.Androlib;
import brut.androlib.AndrolibException;
import brut.androlib.src.SmaliBuilder;
import brut.common.BrutException;
import brut.directory.Directory;
import brut.directory.DirectoryException;
import brut.directory.ExtFile;
import brut.util.BrutIO;
import brut.util.OS;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

public class SmaliDecoderReverse {
    private final boolean needDecodeSmali;
    private ExtFile mApkFile;
    private File mOutDir;
    private Androlib mAndrolib;
    private int mApi = 15;
    private XmlParser hostManifestData;
    private boolean mBakDeb = true;
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());

    public static void main(String[] args) throws IOException, BrutException {
        File srcApkfile = new File("/Users/dongyuangui/Desktop/toy/meishe001.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
        File apkOutFile = new File(srcApkfile.getParentFile(), Utils.getNameRemovedSuffix(srcApkfile.getName()));
        Main.unZipHostApk(srcApkfile, apkOutFile);
        XmlParser parser = new XmlParser(new FileInputStream(new File(apkOutFile, "AndroidManifest.xml")));

        SmaliDecoderReverse smaliDecoderReverse = new SmaliDecoderReverse(srcApkfile, apkOutFile, parser);
        smaliDecoderReverse.decodeSmali();

        smaliDecoderReverse.buildSources(apkOutFile);
        smaliDecoderReverse.buildNonDefaultSources(new ExtFile(apkOutFile));
    }

    public void buildSources(File appDir)
            throws BrutException {
//        if (!buildSourcesRaw(appDir, "classes.dex") && !buildSourcesSmali(appDir, "smali", "classes.dex")) {
        if (!buildSourcesSmali(appDir, "smali", "classes.dex")) {
            LOGGER.warning("Could not find sources");
        }
    }

    public SmaliDecoderReverse(File apkFile, File mOutDir, XmlParser hostManifestData) throws BrutException {
        this.mApkFile = new ExtFile(apkFile);
        mAndrolib = new Androlib();
        this.hostManifestData = hostManifestData;
        mApi = hostManifestData.getCompileVersion(mApi);
        this.needDecodeSmali = hostManifestData.getAppName() != null;
        this.mOutDir = mOutDir;
        decodeSmali();
    }

//    private final static String APK_DIRNAME = "build/apk";


    public boolean buildSourcesSmali(File appDir, String folder, String filename)
            throws BrutException {
        ExtFile smaliDir = new ExtFile(appDir, folder);
        if (!smaliDir.exists()) {
            return false;
        }
        File dex = new File(appDir, "/" + filename);
//        File dex = new File(appDir, APK_DIRNAME + "/" + filename);
        SmaliBuilder.build(smaliDir, dex, mApi);
        OS.rmdir(smaliDir);
        return true;
    }

    public void setBaksmaliDebugMode(boolean bakdeb) {
        mBakDeb = bakdeb;
    }

    public void decodeSmali() throws BrutException {
        // foreach unknown dex file in root, lets disassemble it
//        if(!needDecodeSmali){
//            LOGGER.info("no need decode smali file");
//            return;
//        }
        for (File file : mOutDir.listFiles()) {
            if (file.getName().endsWith(".dex")) {
                if (file.getName().startsWith("classes") && file.getName().endsWith(".dex")) {
                    mAndrolib.decodeSourcesSmali(mApkFile, mOutDir, file.getName(), mBakDeb, mApi);
                    OS.rmfile(file.getAbsolutePath());
                }
            }
        }
    }

    public void buildNonDefaultSources(ExtFile appDir)
            throws AndrolibException {
        try {
            // loop through any smali_ directories for multi-dex apks
            Map<String, Directory> dirs = appDir.getDirectory().getDirs();
            for (Map.Entry<String, Directory> directory : dirs.entrySet()) {
                String name = directory.getKey();
                if (name.startsWith("smali_")) {
                    String filename = name.substring(name.indexOf("_") + 1) + ".dex";

                    if (!buildSourcesSmali(appDir, name, filename)) {
                        LOGGER.warning("Could not find sources");
                    }
                }
            }

            // loop through any classes#.dex files for multi-dex apks
//            File[] dexFiles = appDir.listFiles();
//            if (dexFiles != null) {
//                for (File dex : dexFiles) {
//
//                    // skip classes.dex because we have handled it in buildSources()
//                    if (dex.getName().endsWith(".dex") && !dex.getName().equalsIgnoreCase("classes.dex")) {
//                        buildSourcesRaw(appDir, dex.getName());
//                    }
//                }
//            }
        } catch (DirectoryException ex) {
            throw new AndrolibException(ex);
        } catch (BrutException e) {
            e.printStackTrace();
        }
    }

//    public boolean buildSourcesRaw(File appDir, String filename)
//            throws AndrolibException {
//        File working = new File(appDir, filename);
//        if (!working.exists()) {
//            return false;
//        }
//        File stored = new File(appDir, APK_DIRNAME + "/" + filename);
////        if (isModified(working, stored)) {
//        LOGGER.info("Copying " + appDir.toString() + " " + filename + " file...");
//        try {
//            BrutIO.copyAndClose(new FileInputStream(working), new FileOutputStream(stored));
//            return true;
//        } catch (IOException ex) {
//            throw new AndrolibException(ex);
//        }
////        }
//    }
}
