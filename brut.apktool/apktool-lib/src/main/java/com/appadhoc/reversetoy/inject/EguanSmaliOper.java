package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;

import java.io.InputStream;

public class EguanSmaliOper extends AbstractSmaliOper {
    private static final String appNameStub_Eguan = "com.reverse.stub.EguanApp";
    private String SDK_DIR = "com.analysys";
//    String appkey = "2709692586aa3e42";

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
    protected String replaceDebugMode(int debugMode, String code) throws Exception {

        String val = "0x2";
        if (debugMode == 1) {
            val = "0x1";
        } else if (debugMode == 0) {
            val = "0x0";
        }
        String replaceMent = "const/4 v0, " + val + "\n" + "\n" +
                "    invoke-static {p0, v0}, Lcom/analysys/AnalysysAgent;->setDebugMode";
        return code.replaceAll("const/4\\s+v0,\\s*0x[0-9a-f]+\n+\\s+invoke-static\\s\\{p0,\\s*v0\\},\\s*Lcom/analysys/AnalysysAgent;->setDebugMode"
                , replaceMent);
    }


    @Override
    public String replaceAppkey(String appkey, String code) throws Exception {


        String replaceMent = "const-string v1, \"" + appkey + "\"\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAppKey";
        return code.replaceAll("const-string\\s+v1,\\s*\"[a-z0-9]+\"\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAppKey"
                , replaceMent);
    }

    @Override
    protected String replaceChannel(String channel, String code) throws Exception {

        String replaceMent = "const-string v1, \"" + channel + "\"\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setChannel";
        return code.replaceAll("const-string\\s+v1,\\s*\".+\"\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setChannel"
                , replaceMent);

    }

    @Override
    protected String replaceAutoProfilel(boolean autoProfile, String code) throws Exception {

        String val = "0x0";
        if (autoProfile) {
            val = "0x1";
        }
        String replaceMent = "const/4 v1, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAutoProfile";
        return code.replaceAll("const/4\\s+v1,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoProfile"
                , replaceMent);
    }

    @Override
    protected String replaceEncryptType(int type, String code) throws Exception {
//        EMPTY(0),
//        AES(1),
//        AES_CBC(2);


        String method = null;
        if (type == 2) {
            method = "AES_CBC";
        } else if (type == 0) {
            method = "EMPTY";
        } else {
            method = "AES";
        }
        String replaceMent = "sget-object v2, Lcom/analysys/EncryptEnum;->" + method + ":Lcom/analysys/EncryptEnum;\n\n" +
                "    invoke-virtual {v0, v2}, Lcom/analysys/AnalysysConfig;->setEncryptType";
        return code.replaceAll("sget-object\\s+v2,\\s*Lcom/analysys/EncryptEnum;->.+:Lcom/analysys/EncryptEnum;\n+\\s+invoke-virtual\\s\\{v0,\\s*v2\\},\\s*Lcom/analysys/AnalysysConfig;->setEncryptType"
                , replaceMent);
    }

    @Override
    protected String replaceAllowTimeCheck(boolean allowTimeCheck, String code) throws Exception {

        String val = "0x0";
        if (allowTimeCheck) {
            val = "0x1";
        }
        String replaceMent = "const/4 v1, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAllowTimeCheck";
        return code.replaceAll("const/4\\s+v1,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAllowTimeCheck"
                , replaceMent);
    }

    @Override
    protected String replaceMaxDiffTimeInterval(long maxDiffTimeInterval, String code) throws Exception {

        String val = "0x" + Long.toHexString(maxDiffTimeInterval);
        String replaceMent = "const-wide/16 v2, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v2, v3}, Lcom/analysys/AnalysysConfig;->setMaxDiffTimeInterval";
        return code.replaceAll("const-wide/16\\s+v2,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v2,\\s*v3\\},\\s*Lcom/analysys/AnalysysConfig;->setMaxDiffTimeInterval"
                , replaceMent);
    }

    @Override
    protected String replaceAutoInstallation(boolean autoInstallation, String code) throws Exception {

        String val = "0x0";
        if (autoInstallation) {
            val = "0x1";
        }
        String replaceMent = "const/4 v1, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAutoInstallation";
        return code.replaceAll("const/4\\s+v1,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoInstallation"
                , replaceMent);
    }

    @Override
    protected String replaceAutoHeatMap(boolean autoHeatMap, String code) throws Exception {

        String val = "0x0";
        if (autoHeatMap) {
            val = "0x1";
        }
        String replaceMent = "const/4 v2, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v2}, Lcom/analysys/AnalysysConfig;->setAutoHeatMap";
        return code.replaceAll("const/4\\s+v2,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v2\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoHeatMap"
                , replaceMent);
    }

    @Override
    protected String replaceAutoTrackPageView(boolean autoTrackPageView, String code) throws Exception {

        String val = "0x0";
        if (autoTrackPageView) {
            val = "0x1";
        }
        String replaceMent = "const/4 v1, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setAutoTrackPageView";
        return code.replaceAll("const/4\\s+v1,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoTrackPageView"
                , replaceMent);
    }

    @Override
    protected String replaceAutoTrackFragmentPageView(boolean autoTrackFragmentPageView, String code) throws Exception {

        String val = "0x0";
        if (autoTrackFragmentPageView) {
            val = "0x1";
        }
        String replaceMent = "const/4 v2, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v2}, Lcom/analysys/AnalysysConfig;->setAutoTrackFragmentPageView";
        return code.replaceAll("const/4\\s+v2,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v2\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoTrackFragmentPageView"
                , replaceMent);
    }

    @Override
    protected String replaceAutoTrackClick(boolean autoTrackClick, String code) throws Exception {

        String val = "0x0";
        if (autoTrackClick) {
            val = "0x1";
        }
        String replaceMent = "const/4 v2, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v2}, Lcom/analysys/AnalysysConfig;->setAutoTrackClick";
        return code.replaceAll("const/4\\s+v2,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v2\\},\\s*Lcom/analysys/AnalysysConfig;->setAutoTrackClick"
                , replaceMent);
    }

    @Override
    protected String replaceEnableException(boolean enableException, String code) throws Exception {

        String val = "0x0";
        if (enableException) {
            val = "0x1";
        }
        String replaceMent = "const/4 v1, " + val + "\n" + "\n" +
                "    invoke-virtual {v0, v1}, Lcom/analysys/AnalysysConfig;->setEnableException";
        return code.replaceAll("const/4\\s+v1,\\s*0x[0-9a-f]+\n+\\s+invoke-virtual\\s\\{v0,\\s*v1\\},\\s*Lcom/analysys/AnalysysConfig;->setEnableException"
                , replaceMent);
    }

    @Override
    protected String replaceUploadUrl(String uploadUrl, String code) throws Exception {

        String replaceMent = "const-string v1, \"" + uploadUrl + "\"\n" + "\n" +
                "    invoke-static {p0, v1}, Lcom/analysys/AnalysysAgent;->setUploadURL";
        return code.replaceAll("const-string\\s+v1,\\s*\"http(s)?://.+\"\n+\\s+invoke-static\\s\\{p0,\\s*v1\\},\\s*Lcom/analysys/AnalysysAgent;->setUploadURL"
                , replaceMent);
    }

    @Override
    protected String replaceVisitorDebugUrl(String debugUrl, String code) throws Exception {

        String replaceMent = "const-string v2, \"" + debugUrl + "\"\n" + "\n" +
                "    invoke-static {p0, v2}, Lcom/analysys/AnalysysAgent;->setVisitorDebugURL";
        return code.replaceAll("const-string\\s+v2,\\s*\".*://.+\"\n+\\s+invoke-static\\s\\{p0,\\s*v2\\},\\s*Lcom/analysys/AnalysysAgent;->setVisitorDebugURL"
                , replaceMent);
    }

    @Override
    protected String replaceVisitorConfigUrl(String configUrl, String code) throws Exception {

        String replaceMent = "const-string v1, \"" + configUrl + "\"\n" + "\n" +
                "    invoke-static {p0, v1}, Lcom/analysys/AnalysysAgent;->setVisitorConfigURL";
        return code.replaceAll("const-string\\s+v1,\\s*\"http(s)?://.+\"\n+\\s+invoke-static\\s\\{p0,\\s*v1\\},\\s*Lcom/analysys/AnalysysAgent;->setVisitorConfigURL"
                , replaceMent);
    }
}
