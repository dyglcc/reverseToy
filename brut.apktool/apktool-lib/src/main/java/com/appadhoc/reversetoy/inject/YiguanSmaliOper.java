package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;

public class YiguanSmaliOper extends ISmaliOper {
    private static final String appNameStub_yiguan = "com.reverse.stub.YiguanApp";

    YiguanSmaliOper(String sdktype) {
        super(sdktype);
    }

    @Override
    public void addOrModifyApplicationSmali(File hostDir, File aarSmaliFolder) throws Exception {
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_yiguan);
        if (appName.equals(appNameStub_yiguan)) {
            copyStubSmali2HostDir(stubDir, aarSmaliFolder);
        } else {
            modifyExistAppSmali(hostDir, appName);
        }
    }

    @Override
    public File getAppStubSmaliFile() {
        File file = null;
        try {
            file = Resource.getResourceAsFile("/brut/androlib/YiguanApp.smali", getClass());
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
            file = Resource.getResourceAsFile("/brut/androlib/Yiguan-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        file.setReadable(true);
        return file;
    }
}
