package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;

public class YaoheSmaliOper extends ISmaliOper {
    private static final String appNameStub_yaohe = "com.reverse.stub.YaoheApp";

    YaoheSmaliOper(String sdktype) {
        super(sdktype);
    }

    @Override
    public void addOrModifyApplicationSmali(File hostDir, File aarSmaliFolder) throws Exception {
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_yaohe);

        if (appName.equals(appNameStub_yaohe)) {

            copyStubSmali2HostDir(stubDir, aarSmaliFolder);
        } else {
            modifyExistAppSmali(hostDir, appName);
        }
    }

    @Override
    public File getAppStubSmaliFile() {
        File file = null;
        try {
            file = Resource.getResourceAsFile("/brut/androlib/YaoheApp.smali", this.getClass());
//            file.renameTo(new File("YaoheApp.smali"));
        } catch (BrutException e) {
            e.printStackTrace();
        }
        file.setReadable(true);
        return file;

    }

    @Override
    public File getCodeMethodInit() {
        File file = null;
        try {
            file = Resource.getResourceAsFile("/brut/androlib/Yaohe-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        file.setReadable(true);
        return file;
    }

}
