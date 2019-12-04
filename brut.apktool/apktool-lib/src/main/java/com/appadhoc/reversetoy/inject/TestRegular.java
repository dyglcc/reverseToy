package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Utils;
import com.appadhoc.reversetoy.utils.UtilsSmali;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;

public class TestRegular {
    public static void main(String[] args) throws IOException, BrutException {

        File file = new File("/Users/jiaozhengxiang/Desktop/work/toy_workspace/apk_workspace/smali/com/example/adhoc/base/DemoApplication.smali");
        String srcStr = Utils.FileUtils.readStringFromFile(file).toString();
        String methodCode = "add some code line";
        String method = UtilsSmali.FileUtils.readStringFromFile(UtilsSmali.BuildPackage.getCodeMethodInit(TestRegular.class)).toString();
        String replacement = Matcher.quoteReplacement(method);
        srcStr = srcStr.replaceFirst(".method\\s+static\\s+constructor\\s+<clinit>\\(\\)V(.*\\n)+?.end\\s+method","$0\n\n"+ replacement);

//        srcStr = srcStr.replaceFirst(".method\\s+public\\s+onCreate\\(\\)V(.*\\n)+?\\s*.locals\\s+\\d+","$0\n\n"+methodCode);
        System.out.println(srcStr);
    }
}
