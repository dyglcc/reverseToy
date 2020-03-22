package com.appadhoc.reversetoy;

import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import luyao.parser.xml.XmlParser;

import java.io.File;

public abstract class AbstractManager {
    public static final String TYPE_Eguan = "eguan";
    public static final String TYPE_Yaohe = "yaohe";

    protected String sdkType = TYPE_Eguan;
    public abstract  void setHostPackageName(String packageNmae);

    public abstract  void unzipAarAndCreateTmpApk() throws BrutException;

    public abstract  void mergeArscFile() throws Exception;
    public abstract  void mergeManifestFile(XmlParser hostAndManiParse) throws Exception;

    public abstract  void replacAarIdsIDs(File apkOutFile) throws Exception;

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

    public abstract void sethostArscTable(ResTable mHostTable);
}
