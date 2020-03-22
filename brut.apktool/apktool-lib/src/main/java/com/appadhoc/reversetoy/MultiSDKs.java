package com.appadhoc.reversetoy;

import brut.androlib.res.data.ResTable;
import luyao.parser.xml.XmlParser;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MultiSDKs {
    private ResTable mHostTable;
    private XmlParser hostParse;
    private HashMap options;
    private boolean onlyUpgradeSourceCode;

    public MultiSDKs(ResTable hostTableTable, XmlParser hostParse, HashMap options) {
        this.mHostTable = hostTableTable;
        this.hostParse = hostParse;
        this.options = options;
        if (options != null) {
            onlyUpgradeSourceCode = options.get("ousc") != null;
        }
    }

    public List<File> getSmaliFolder() {
        return smaliFolder;
    }

    public void setSmaliFolder(List<File> smaliFolder) {
        this.smaliFolder = smaliFolder;
    }

    private List<File> smaliFolder = new ArrayList<>();

    public void dealWithSDKpackages(File sdkFile, File apkOutFile) throws Exception {
        List<AbstractManager> managers = ManagerFactory.getIToyManager(sdkFile.getAbsolutePath());
//        for(AbstractManager manager:managers){
//            manager.setSdkType(null);
//        }
//        decoder.decode(managers);
        for (AbstractManager manager : managers) {
            manager.setHostDir(apkOutFile);
            manager.sethostArscTable(mHostTable);
            manager.setHostPackageName(mHostTable.getPackage(127).getName());
            manager.unzipAarAndCreateTmpApk();
            if (!onlyUpgradeSourceCode) {
                manager.mergeArscFile();
                manager.mergeManifestFile(this.hostParse);
                manager.replacAarIdsIDs(apkOutFile);
            }
            File smaliFile = manager.smaliClassFilesAndModifyids(apkOutFile);
            smaliFolder.add(smaliFile);
        }
    }
}
