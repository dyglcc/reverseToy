package com.appadhoc.reversetoy.inject;


import com.appadhoc.reversetoy.AbstractManager;

public class InjectManagerFactory {

    public static void main(String[] args) throws Exception {
        // 检查host的AndroidMan 文件没有application 没有name，添加添加name，我们定义好的app.smali
//        File hostDir = new File("/Users/jiaozhengxiang/Desktop/work/toy_workspace");
//        ISmaliOper oper = InjectManager.createOper("yaohe");
//        oper.addOrModifyApplicationSmali(hostDir,null);
    }

    public static AbstractSmaliOper createOper(String sdktype) throws Exception {
        if(sdktype == null){
            sdktype = AbstractManager.TYPE_Eguan;
        }
        AbstractSmaliOper oper = null;
        if("yaohe".equals(sdktype)){
            oper = new YaoheSmaliOper(sdktype);
        }else if("eguan".equals(sdktype)){
            oper = new EguanSmaliOper(sdktype);
        }
        return oper;

    }
}
