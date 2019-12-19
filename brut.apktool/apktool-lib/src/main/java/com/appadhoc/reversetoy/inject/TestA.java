package com.appadhoc.reversetoy.inject;

import brut.common.BrutException;
import com.appadhoc.reversetoy.utils.Resource;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.IOException;
import java.io.InputStream;

public class TestA {
    public static void main(String[] args) throws Exception {
        try {
            InputStream file = Resource.getResourceAsStream("/brut/androlib/EguanApp.smali", TestA.class);
            String code = Utils.FileUtils.readStringFromStream(file).toString();

            EguanSmaliOper oper = new EguanSmaliOper("eguan");
            code = oper.replaceAllowTimeCheck(true,code);

            System.out.println(code);
//            System.out.println(code.contains("abcchanngel"));

        } catch (BrutException | IOException e) {
            e.printStackTrace();
        }
    }
}
