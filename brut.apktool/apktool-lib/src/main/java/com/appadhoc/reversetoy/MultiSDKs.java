package com.appadhoc.reversetoy;

import brut.androlib.ApkDecoder;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class MultiSDKs {
    public List<File> getSmaliFolder() {
        return smaliFolder;
    }

    public void setSmaliFolder(List<File> smaliFolder) {
        this.smaliFolder = smaliFolder;
    }

    private List<File> smaliFolder = new ArrayList<>();
    public void dealWithSDKpackages(String sdktype, File sdkFile, File apkOutFile) throws Exception {
        List<AbstractManager> managers = ManagerFactory.getIToyManager(sdkFile.getAbsolutePath());
        for(AbstractManager manager:managers){
            manager.setSdkType(sdktype);
        }
//        decoder.decode(managers);
        for(AbstractManager manager:managers){

            manager.setHostDir(apkOutFile);
            manager.addIDs2HostFile(apkOutFile);
            File smaliFile = manager.smaliClassFilesAndModifyids(apkOutFile);
            smaliFolder.add(smaliFile);
        }
    }
}
