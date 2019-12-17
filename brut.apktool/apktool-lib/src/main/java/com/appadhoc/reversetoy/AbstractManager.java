package com.appadhoc.reversetoy;

import brut.androlib.res.data.ResTable;
import brut.common.BrutException;

import java.io.File;

public abstract class AbstractManager {
    public static final String TYPE_Eguan = "eguan";
    public static final String TYPE_Yaohe = "yaohe";

    protected String sdkType = TYPE_Eguan;
    public abstract  void setHostPackageName(String packageNmae);

    public abstract  void preCombin(File outputdir) throws BrutException;

    public abstract  void addAarids2ResTable(ResTable resTable) throws Exception;

    public abstract  void addIDs2HostFile(File apkOutFile) throws Exception;

    public abstract  File smaliClassFilesAndModifyids(File hostdir) throws Exception;
    public abstract void setHostDir(File hostDir) throws Exception;
    public String getSdkType() {
        return sdkType;
    }
    public void setSdkType(String sdkType) throws Exception {
        if(sdkType != null ){
            if(!(sdkType.equals(TYPE_Eguan) || sdkType.equals(TYPE_Yaohe))){
                throw new Exception("-t 参数输入异常 【"+TYPE_Eguan+"】或者["+TYPE_Yaohe+"] ");
            }
        }
        this.sdkType = sdkType;
    }
}
