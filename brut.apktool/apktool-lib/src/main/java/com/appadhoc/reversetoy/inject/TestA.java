package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class TestA {
    public static void main(String[] args) throws Exception {
//            InputStream file = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", TestA.class);
//            String code = Utils.FileUtils.readStringFromStream(file).toString();
//
//            EguanSmaliOper oper = new EguanSmaliOper("eguan");
//            code = oper.replaceAllowTimeCheck(true,code);
//
//            System.out.println(code);
//            System.out.println(code.contains("abcchanngel"));


        String path = "/Users/jiaozhengxiang/Desktop/apk-blue/reader/smali_classes2/com/analysys";
        File file1bdsd= new File(path);
        for(File file1 :file1bdsd.listFiles()){
            if(!file1.getName().equals("track")){
                OS.rmdir(file1);
            }
        }

    }
}
