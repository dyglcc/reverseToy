package com.appadhoc.reversetoy;

import brut.androlib.res.data.ResTable;

import java.io.File;

public abstract class AbstractManager {
    private String sdkType = "yaohe";
    public abstract  void setHostPackageName(String packageNmae);

    public abstract  void preCombin(File outputdir);

    public abstract  void addAarids2ResTable(ResTable resTable) throws Exception;

    public abstract  void addIDs2HostFile(File apkOutFile) throws Exception;

    public abstract  File smaliClassFilesAndModifyids(File hostdir) throws Exception;
    public abstract void setHostDir(File hostDir) throws Exception;
    public String getSdkType() {
        return sdkType;
    }

    public void setSdkType(String sdkType) throws Exception {
        if(sdkType == null || sdkType.equals("")){
            throw new Exception("-sk 参数输入异常 [yaohe] 或者【eguan】");
        }
        this.sdkType = sdkType;
    }

}
