package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.InputStream;

public class YaoheSmaliOper extends ISmaliOper {
    private static final String appNameStub_yaohe = "com.reverse.stub.YaoheApp";
    private String smaliAppName = "YaoheApp.smali";
    YaoheSmaliOper(String sdktype) {
        super(sdktype);
    }

    @Override
    public void addOrModifyApplicationSmali(File hostDir, File aarSmaliFolder) throws Exception {
        String appName = Utils.XmlUtils.setApplicationName(hostDir, appNameStub_yaohe);

        if (appName.equals(appNameStub_yaohe)) {

            super.copyStubSmali2HostDir(stubDir, aarSmaliFolder);
        } else {
            super.modifyExistAppSmali(hostDir, appName);
        }
    }

    @Override
    public InputStream getAppStubSmaliFile() {
        InputStream inputstream = null;
        try {
            inputstream = Resource.getResourceAsStream("/brut/androlib/YaoheApp.smali", this.getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputstream;
    }
    @Override
    public InputStream getCodeMethodInit() {
        InputStream inputstream = null;
        try {
            inputstream = Resource.getResourceAsStream("/brut/androlib/Yaohe-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputstream;
    }

    @Override
    public String getSmaliApplicationName() {
        return smaliAppName;
    }

}
