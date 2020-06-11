package com.appadhoc.reversetoy;

import brut.androlib.res.data.ResTable;
import brut.util.OS;
import com.appadhoc.reversetoy.aar.WriterArsc;
import com.appadhoc.reversetoy.sign.SignTool;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class ZipUtilsTest {
    public static void main(String[] args) throws Exception {

        createApk();
    }
    public static void createApk() throws Exception {
        File outApkfile = new File("/Users/dongyuangui/Desktop/liepin/djiagu.apk");
        brut.directory.ZipUtils.zipFolders(new File("/Users/dongyuangui/Desktop/liepin/reverse"), outApkfile, null, null);
        File outputFile = SignTool.sign(outApkfile, new File("/Users/dongyuangui/Desktop/apk-blue/output_abc0000-sign.apk"), null);
        System.out.println(outputFile.getAbsolutePath());
    }
}
