package com.reverse.stub;

import android.app.Activity;
import android.os.Bundle;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        AdhocTracker.init(new AdhocConfig.Builder().appKey("key").enableDebugAssist(true).context(this).supportMultiProcess().build());
    }
}
