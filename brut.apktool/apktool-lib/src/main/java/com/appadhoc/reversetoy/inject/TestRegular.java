package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;

public class TestRegular {
    public static void main(String[] args) throws IOException, BrutException {

        String hostAppName = "com.group.module.App";
////            invoke-direct {p0}, Lcom/reverse/stub/App;->initReverseSDK()V
//        String callMethodCode = "invoke-direct {p0}, L"+hostAppName.replaceAll("\\.","/")+";->initReverseSDK()V";
////        File codePieceFile = Utils.BuildPackage.getCodeMethodInit(Utils.class,"yaohe");
//        String methodCode = Utils.FileUtils.readStringFromFile(codePieceFile).toString();
        String methodCode = "com.adhoc";
        methodCode = methodCode.replace(".","/");
        methodCode = "L"+methodCode;
        System.out.println(methodCode);
//        String methodCodeReplaceMent = Matcher.quoteReplacement(methodCode);
//        File needModiFile = new File("/Users/dongyuangui/GITHUB/reverseToy/ApplyApplication-back.smali");
////        System.out.println(needModiFile.getAbsolutePath());
////
//        String srcStr = Utils.FileUtils.readStringFromFile(needModiFile).toString();
////        System.out.println("raw str " + srcStr);
//        srcStr = srcStr.replaceAll("\\s+.*,.*"+methodCode+".*\\n(\\s+move-result-object\\s+v\\d{1,2})?","");
//
////        todo
//        System.out.println("result " + srcStr);
//        srcStr = srcStr.replaceFirst(".method\\s+public\\s+(final\\s+)?onCreate\\(\\)V(.*\\n)+?\\s*.locals\\s+\\d+","$0\n\n"+callMethodCode);
//        Utils.FileUtils.writeString2File(needModiFile, srcStr);
//        boolean replaceSuccess = srcStr.contains("method private initReverseSDK");
//        boolean replaceCallSuccess = srcStr.contains("->initReverseSDK()V");
//        if(replaceCallSuccess && replaceSuccess){
//            System.out.println("change success");
//        }else{
//            System.out.println("change faild");
//        }
    }
}
