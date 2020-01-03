package com.appadhoc.reversetoy.json;

import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;

public class JsonManager {

    public static void main(String[] args) throws IOException {
        String textJson = Utils.FileUtils.readStringFromFile(new File("/Users/jiaozhengxiang/GITHUB/Apktool/codejson.txt")).toString();
        System.out.println(textJson);

        Utils.CodeBean cb = Utils.JSONparse.getCodeBeanByJSonString(textJson);

        System.out.println(cb.getMethods().size());
    }
}
