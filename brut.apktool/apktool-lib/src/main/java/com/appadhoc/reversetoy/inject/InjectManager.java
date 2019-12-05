package com.appadhoc.reversetoy.inject;

import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;

public class InjectManager {
    private static final String appNameStub = "com.reverse.stub.App";
    private static final String stubDir = "com.reverse.stub";
    public static void main(String[] args) throws Exception {
        // 检查host的AndroidMan 文件没有application 没有name，添加添加name，我们定义好的app.smali

        File hostDir = new File("/Users/jiaozhengxiang/Desktop/work/toy_workspace");

        new InjectManager().addOrModifyApplicationSmali(hostDir,hostDir);
    }

    public void addOrModifyApplicationSmali(File hostDir,File aarSmaliFolder) throws Exception {

        String appName = Utils.XmlUtils.setApplicationName(hostDir,appNameStub);

        if(appName.equals(appNameStub)){

            Utils.BuildPackage.copyStubSmali2HostDir(stubDir,aarSmaliFolder);
        }else{
            Utils.BuildPackage.modifyExistAppSmali(hostDir, appName);
        }
    }
}
