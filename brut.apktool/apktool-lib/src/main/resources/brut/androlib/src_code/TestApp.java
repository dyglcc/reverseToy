package com.reverse.stub;

import android.app.Application;
import android.util.Log;

import com.adhoc.adhocsdk.AdhocConfig;
import com.adhoc.adhocsdk.AdhocTracker;

import org.json.JSONException;

import java.io.IOException;
import java.io.InputStream;

public class TestApp extends Application {
    @Override
    public void onCreate() {
        AdhocTracker.init(this, AdhocConfig.defaultConfig().enableDebugAssist(true).appKey("abc"));
        super.onCreate();
        try {
            initReverseSDK();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Log.i("reverse", "reverse SDK initSuccess");
    }
    private void initReverseSDK() throws IOException, JSONException {

        InputStream inputStream = getAssets().open("reverse_code_json_default-adhoc.txt");
        String codeString = Utils.readStringFromStream(inputStream).toString();

        Utils.CodeBean codeBean = Utils.JSONparse.getCodeBeanByJSonString(codeString);

        Utils.Reflection.callMethod(codeBean,this.getApplicationContext(),null);

    }
}


