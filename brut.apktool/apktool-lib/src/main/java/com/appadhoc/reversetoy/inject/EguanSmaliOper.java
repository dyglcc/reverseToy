package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;

import java.io.InputStream;

public class EguanSmaliOper extends AbstractSmaliOper {
    private static final String appNameStub_Eguan = "com.reverse.stub.EguanApp";
    private String SDK_DIR = "com.analysys";

    EguanSmaliOper(String sdktype) {
        super(sdktype);
    }

    @Override
    public InputStream getAssetsAppStubSmaliFile() {
        InputStream inputStream = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    @Override
    public InputStream getAssetsCodeMethodInit() {
        InputStream inputStream = null;
        try {
            inputStream = Resource.getResourceAsStream("/brut/androlib/Eguan-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    @Override
    public String getSDKdir() {
        return SDK_DIR;
    }

    @Override
    protected String getStubApplicationName() {
        return appNameStub_Eguan;
    }

    @Override
    public String replaceAppkey(String appkey, String code) throws Exception {
        if (code == null || code.equals("")) {
            throw new Exception("请检查是否有存在Eguan SDK的代码片段或者存在EguanApp.smali文件");
        }

        String replaceMent = "const-string v1, \""+appkey+"\"\n" + "\n"+
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAppKey";
        return code.replaceAll("const-string\\s+v1,\\s*\"[a-z0-9]+\"\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAppKey"
                ,replaceMent);
    }
}
