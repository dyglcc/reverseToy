1.新建项目依赖apktool lib
2.将smali代码注入到Applicaton smali文件当中去
3.如果没有application对象创建application
4.todo xmlpull 写入applicatio name


打包流程1.
拆开包，读取AndroidManifest.xml文件，获取host包名 
aar解压到一个临时文件里 获取aar的包名
打开AndroidManifest.xml文件 使用包名替换Applicationid
aapt生成R.java文件。
/*
../tools/aapt package -f -m -J ../Rfiles -S res -I ../tools/android.jar -M AndroidManifest.xml
**/

把R.java编译生成class文件，
把R.class放在aar包 包路径下面


拆开包，读取AndroidManifest.xml文件，获取包名 （aar包需要）

合并Andmanifest.xml。
遍历aar文件合并资源文件，anim,图片.字符串.so，assets 纯copy
合并public.xml,将R.java的资源追加到public.id后面，如果需要的话，还需要处理values下面的其它文件

加入public.xml ，将R.smali文件中的id都添加到public.xml文件中遇到问题
1.名称重复，
解决办法：不添加，
2.0x地址重复
解决办法：往后顺延知道满足条件
3.添加id之后遇到问题，需要添加ids。xml文件
解决办法：id 是特殊的东西，需要额外添加到ids.xml的
4.加入ids.xml文件遇到问题
加入后出现问题：
/Users/jiaozhengxiang/Desktop/work/apks/emptyapplication-debug/./res/values/values.xml:10: error: Resource entry adhoc_tag is already defined.
W: /Users/jiaozhengxiang/Desktop/work/apks/emptyapplication-debug/./res/values/ids.xml:40: Originally defined here.

看起来是ids是漏网的id，添加到ids.xml里面，加入ids，检查是是否在values里面已经存在了？
解决办法：
将values已经有的id，在ids.xml去重。



// 处理链接问题
使用dx把aar 打成dex文件
把dx编译成smali文件

/**
javac R.java
ddx --dex --output=Test.dex Test.class
java -jar baksmali.jar -o [输出文件夹] dex文件
*/

 apktool b 合并包
签名文件。

