package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;

public class EguanSmaliOper extends ISmaliOper {
    private static final String appNameStub_Eguan = "com.reverse.stub.EguanApp";

    EguanSmaliOper(String sdktype) {
        super(sdktype);
    }

    @Override
    public void addOrModifyApplicationSmali(File hostDir, File aarSmaliFolder) throws Exception {
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_Eguan);
        if (appName.equals(appNameStub_Eguan)) {
            copyStubSmali2HostDir(stubDir, aarSmaliFolder);
        } else {
            modifyExistAppSmali(hostDir, appName);
        }
    }

    @Override
    public File getAppStubSmaliFile() {
        File file = null;
        try {
            file = Resource.getResourceAsFile("/brut/androlib/EguanApp.smali", getClass());
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
            file = Resource.getResourceAsFile("/brut/androlib/Eguan-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        file.setReadable(true);
        return file;
    }
}
