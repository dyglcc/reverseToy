package com.reverse.stub;
import android.content.Context;
import android.util.Log;

import com.reverse.stub.MultiDex;
import com.reverse.stub.TestApp;

import org.json.JSONException;

import java.io.IOException;

public class ReverseApp extends TestApp {
    @Override
    public void onCreate() {
        super.onCreate();
        try {
            Utils.initReverseSDK(getApplicationContext());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Log.i("reverse", "reverse SDK initSuccess");
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(base);
    }
}


