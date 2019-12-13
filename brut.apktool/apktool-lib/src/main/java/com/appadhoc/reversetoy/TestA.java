package com.appadhoc.reversetoy;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.IOException;
import java.io.InputStream;

public class TestA {
    public static void main(String[] args){
        try {
            InputStream file = Resource.getResourceAsStream("/brut/androlib/YaoheApp.smali", TestA.class);
            String str = Utils.FileUtils.readStringFromStream(file).toString();
            String replaceMent = "abcdeerser";
            System.out.println(str
                    .replaceAll
                            ("ADHOC_[0-9a-z-]+"
                                    ,replaceMent));
        } catch (BrutException | IOException e) {
            e.printStackTrace();
        }
    }
}
