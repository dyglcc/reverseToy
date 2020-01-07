package com.reverse.stub;

import android.app.Application;
import android.util.Log;

import org.json.JSONException;

import java.io.IOException;
import java.io.InputStream;

public class EguanApp extends Application {


    @Override
    public void onCreate() {
        super.onCreate();
        initReverseSDK();
    }

    private void initReverseSDK() {
        Utils.CodeBean codeBean = null;
        try {
            InputStream inputStream = super.getAssets().open("reverse_code_json_default.txt");
            StringBuilder str = Utils.readStringFromStream(inputStream);
            codeBean = Utils.JSONparse.getCodeBeanByJSonString(str.toString());
            Log.i("Reflection", "onCreate: " + codeBean.getClassName());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Utils.Reflection.callMethod(codeBean,this);
        Log.i("reverseToy", "onCreate:  init sucess");
    }

}

