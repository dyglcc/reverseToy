package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import java.io.InputStream;

public class YaoheSmaliOper extends AbstractSmaliOper {
    private static final String appNameStub_yaohe = "com.reverse.stub.YaoheApp";
    private String SDK_DIR = "com.adhoc";

    YaoheSmaliOper(String sdktype) {
        super(sdktype);
    }
    @Override
    public InputStream getAssetsAppStubSmaliFile() {
        InputStream inputstream = null;
        try {
            inputstream = Resource.getResourceAsStream("/brut/androlib/YaoheApp.smali", this.getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputstream;
    }

    @Override
    public InputStream getAssetsCodeMethodInit() {
        InputStream inputstream = null;
        try {
            inputstream = Resource.getResourceAsStream("/brut/androlib/Yaohe-code_method_init.txt", getClass());
        } catch (BrutException e) {
            e.printStackTrace();
        }
        return inputstream;
    }
    @Override
    public String getSDKdir() {
        return SDK_DIR;
    }

    @Override
    protected String getStubApplicationName() {
        return appNameStub_yaohe;
    }

    @Override
    public String replaceAppkey(String appkey, String code) throws Exception {
        if (code == null || code.equals("")) {
            throw new Exception("请检查是否存在Yaohe SDK的代码片段或者是否存在YaoheApp.smali文件");
        }
        return code.replaceAll("ADHOC_[0-9a-z-]+"
                , appkey);
    }

}
