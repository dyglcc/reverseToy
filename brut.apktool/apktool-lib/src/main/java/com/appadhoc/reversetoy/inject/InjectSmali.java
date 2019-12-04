package com.appadhoc.reversetoy.inject;

import com.appadhoc.reversetoy.utils.UtilsSmali;

import java.io.File;

public class InjectSmali {
    private static final String appNameStub = "com.reverse.stub.App";
    private static final String stubDir = "com.reverse.stub";
    public static void main(String[] args) throws Exception {
        // 检查host的AndroidMan 文件没有application 没有name，添加添加name，我们定义好的app.smali

        File hostDir = new File("/Users/jiaozhengxiang/Desktop/work/toy_workspace");

        new InjectSmali().addOrModifyApplicationSmali(hostDir,hostDir);

    }

    public void addOrModifyApplicationSmali(File hostDir,File aarSmaliFolder) throws Exception {

        String appName = UtilsSmali.XmlUtils.setApplicationName(hostDir,appNameStub);

        if(appName.equals(appNameStub)){
            UtilsSmali.BuildPackage.copyStubSmali2HostDir(stubDir,aarSmaliFolder);
        }else{
            UtilsSmali.BuildPackage.modifyExistAppSmali(hostDir, appName);
        }
    }
}
