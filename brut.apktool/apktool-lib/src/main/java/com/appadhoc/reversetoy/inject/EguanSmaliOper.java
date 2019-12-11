package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.InputStream;

public class EguanSmaliOper extends ISmaliOper {
    private static final String appNameStub_Eguan = "com.reverse.stub.EguanApp";
    private String smaliAppName = "EguanApp.smali";

    EguanSmaliOper(String sdktype) {
        super(sdktype);
    }
    @Override
    public void addOrModifyApplicationSmali(File hostDir, File aarSmaliFolder) throws Exception {
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_Eguan);
        if (appName.equals(appNameStub_Eguan)) {
            super.copyStubSmali2HostDir(stubDir, aarSmaliFolder);
        } else {
            super.modifyExistAppSmali(hostDir, appName);
        }
    }

    @Override
    public InputStream getAppStubSmaliFile() {
        InputStream inputStream  = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    @Override
    public InputStream getCodeMethodInit() {
        InputStream inputStream  = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/Eguan-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    @Override
    public String getSmaliApplicationName() {
        return smaliAppName;
    }
}
