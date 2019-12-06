package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;

public class TestRegular {
    public static void main(String[] args) throws IOException, BrutException {

//        String hostAppName = "com.group.module.App";
////            invoke-direct {p0}, Lcom/reverse/stub/App;->initSDK()V
//        String callMethodCode = "invoke-direct {p0}, L"+hostAppName.replaceAll("\\.","/")+";->initSDK()V";
////        File codePieceFile = Utils.BuildPackage.getCodeMethodInit(Utils.class,"yaohe");
//        String methodCode = Utils.FileUtils.readStringFromFile(codePieceFile).toString();
//        String methodCodeReplaceMent = Matcher.quoteReplacement(methodCode);
//        File needModiFile = new File("/Users/jiaozhengxiang/GITHUB/Apktool/App.smali");
//        System.out.println(needModiFile.getAbsolutePath());
//
//        String srcStr = Utils.FileUtils.readStringFromFile(needModiFile).toString();
//        srcStr = srcStr.replaceFirst(".method\\s+public\\s+constructor\\s+<init>\\(\\)V(.*\\n)+?.end\\s+method","$0\n\n"+methodCodeReplaceMent);
//        srcStr = srcStr.replaceFirst(".method\\s+public\\s+(final\\s+)?onCreate\\(\\)V(.*\\n)+?\\s*.locals\\s+\\d+","$0\n\n"+callMethodCode);
//        Utils.FileUtils.writeString2File(needModiFile, srcStr);
//        boolean replaceSuccess = srcStr.contains("method private initSDK");
//        boolean replaceCallSuccess = srcStr.contains("->initSDK()V");
//        if(replaceCallSuccess && replaceSuccess){
//            System.out.println("change success");
//        }else{
//            System.out.println("change faild");
//        }

    }
}
