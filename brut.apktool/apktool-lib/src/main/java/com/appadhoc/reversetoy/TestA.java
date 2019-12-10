package com.appadhoc.reversetoy;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;

import java.io.File;

public class TestA {
    public static void main(String[] args){
        try {
            File file = Resource.getResourceAsFile("/brut/androlib/EguanApp.smali", TestA.class);
            System.out.println(file.getAbsolutePath());
        } catch (BrutException e) {
            e.printStackTrace();
        }
    }
}
