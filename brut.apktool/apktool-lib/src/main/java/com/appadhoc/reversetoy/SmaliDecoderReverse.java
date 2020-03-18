package com.appadhoc.reversetoy;

import brut.androlib.Androlib;
import brut.androlib.AndrolibException;
import brut.androlib.src.SmaliBuilder;
import brut.common.BrutException;
import brut.directory.DirectoryException;
import brut.directory.ExtFile;
import brut.util.OS;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Set;
import java.util.logging.Logger;

public class SmaliDecoderReverse {
    private final boolean needDecodeSmali;
    private ExtFile mApkFile;
    private File mOutDir;
    private Androlib mAndrolib;
    private int mApi=15;
    private XmlParser hostManifestData;
    private boolean mBakDeb = true;
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());
    public static void main(String[] args) throws IOException, BrutException {
        File srcApkfile = new File("/Users/dongyuangui/Desktop/toy/meishe001.apk");
//        File srcApkfile = new File("/Users/dongyuangui/Desktop/apk-blue/app-debug-remove-statusbutton.apk");
        File apkOutFile = new File(srcApkfile.getParentFile(), Utils.getNameRemovedSuffix(srcApkfile.getName()));
        Main.unZipHostApk(srcApkfile,apkOutFile);
        XmlParser parser = new XmlParser(new FileInputStream(new File(apkOutFile,"AndroidManifest.xml")));

        SmaliDecoderReverse smaliDecoderReverse = new SmaliDecoderReverse(srcApkfile,apkOutFile,parser);
        smaliDecoderReverse.decodeSmali();
    }

    public SmaliDecoderReverse(File apkFile,File mOutDir, XmlParser hostManifestData) throws BrutException {
        this.mApkFile = new ExtFile(apkFile);
        mAndrolib = new Androlib();
        this.hostManifestData = hostManifestData;
        mApi = hostManifestData.getCompileVersion(mApi);
        this.needDecodeSmali = hostManifestData.getAppName() != null;
        this.mOutDir = mOutDir;
        decodeSmali();
    }
    private final static String APK_DIRNAME = "build/apk";


    public boolean buildSourcesSmali(File appDir, String folder, String filename)
            throws AndrolibException {
        ExtFile smaliDir = new ExtFile(appDir, folder);
        if (!smaliDir.exists()) {
            return false;
        }
        File dex = new File(appDir, APK_DIRNAME + "/" + filename);
        SmaliBuilder.build(smaliDir, dex, mApi);
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
                if(file.getName().startsWith("classes") && file.getName().endsWith(".dex")){
                    mAndrolib.decodeSourcesSmali(mApkFile, mOutDir, file.getName(), mBakDeb, mApi);
                    OS.rmfile(file.getAbsolutePath());
                }
            }
        }
    }
}
