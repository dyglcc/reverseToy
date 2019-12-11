package com.appadhoc.reversetoy;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.IOException;
import java.io.InputStream;

public class TestA {
    public static void main(String[] args){
        try {
            InputStream file = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", TestA.class);
            String str = Utils.FileUtils.readStringFromStream(file).toString();
            System.out.println(str);
        } catch (BrutException | IOException e) {
            e.printStackTrace();
        }
    }
}
