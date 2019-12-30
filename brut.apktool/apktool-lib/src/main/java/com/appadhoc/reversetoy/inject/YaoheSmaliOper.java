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
    protected String getExcludeSDKdir() {
        return null;
    }

    @Override
    protected String getStubApplicationName() {
        return appNameStub_yaohe;
    }

    @Override
    protected String replaceDebugMode(int debugMode, String code) throws Exception {
        return code;
    }

    @Override
    public String replaceAppkey(String appkey, String code) throws Exception {
        if (code == null || code.equals("")) {
            throw new Exception("请检查是否存在Yaohe SDK的代码片段或者是否存在YaoheApp.smali文件");
        }
        return code.replaceAll("ADHOC_[0-9a-z-]+"
                , appkey);
    }

    @Override
    protected String replaceChannel(String channel, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAutoProfilel(boolean autoProfilel, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceEncryptType(int type, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAllowTimeCheck(boolean allowTimeCheck, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceMaxDiffTimeInterval(long maxDiffTimeInterval, String code) throws Exception {
        return code;
    }


    @Override
    protected String replaceAutoInstallation(boolean autoInstallation, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAutoHeatMap(boolean autoHeatMap, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAutoTrackPageView(boolean autoTrackPageView, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAutoTrackFragmentPageView(boolean autoTrackFragmentPageView, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceAutoTrackClick(boolean autoTrackClick, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceEnableException(boolean enableException, String code) throws Exception {
        return null;
    }

    @Override
    protected String replaceUploadUrl(String uploadUrl, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceVisitorDebugUrl(String debugUrl, String code) throws Exception {
        return code;
    }

    @Override
    protected String replaceVisitorConfigUrl(String configUrl, String code) throws Exception {
        return code;
    }

}
