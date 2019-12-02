1.新建项目依赖apktool lib ---ok
2.将smali代码注入到Applicaton smali文件当中去
3.如果没有application对象创建application
4.todo xmlpull 写入applicatio name


打包流程1.
拆开包，读取AndroidManifest.xml文件，获取host包名 ok
aar oper
aar解压到一个临时文件里 获取aar的包名 ok
并替换宿主包名 
打开AndroidManifest.xml文件 使用包名替换Applicationid ok
aapt生成R.java文件。因为aar文件中没有R.java文件需要生成放在aar报名路径下。
/*
../tools/aapt package -f -m -J ../Rfiles -S res -I ../tools/android.jar -M AndroidManifest.xml
**/

把R.java编译生成class文件，ok
把R.class放在aar包 包路径下面ok


拆开包，读取AndroidManifest.xml文件，获取包名 （aar包需要）ok
合并public.xml,将R.java的资源追加到public.id后面，如果需要的话，还需要处理values下面的其它文件
遍历aar文件合并资源文件，anim,图片.字符串.so，assets 纯copy
合并Andmanifest.xml。 ok ......

todo replace ids 

加入public.xml ，将R.smali文件中的id都添加到public.xml文件中遇到问题
1.名称重复，
解决办法：不添加，
2.0x地址重复
解决办法：往后顺延直到满足条件
3.添加id之后遇到问题，需要添加ids。xml文件
解决办法：id 是特殊的东西，需要额外添加到ids.xml的
4.加入ids.xml文件遇到问题
加入后出现问题：
/Users/jiaozhengxiang/Desktop/work/apks/emptyapplication-debug/./res/values/values.xml:10: error: Resource entry adhoc_tag is already defined.
W: /Users/jiaozhengxiang/Desktop/work/apks/emptyapplication-debug/./res/values/ids.xml:40: Originally defined here.

看起来是ids是漏网的id，添加到ids.xml里面，加入ids，检查是是否在values里面已经存在了？
解决办法：
将values已经有的id，在ids.xml去重。ok



// 处理链接问题
使用dx把aar 打成dex文件
把dx编译成smali文件

/**
javac R.java
dx --dex --output=Test.dex Test.class
java -jar baksmali.jar -o [输出文件夹] dex文件
*/

 apktool b 合并包
签名文件。



// ResPackage 
package hash map key 为packagename
 
AndrolibResources 的loadMainPkg 加载到所有的ids,可以在这里处理添加aar的ids

mResSpecs 是一个map里面所有可以操作的id、string ，map等。都在里面。


0x1 开始的是系统的id
0x7f开头的是mainpackage的。




xml 操作文件帖子 https://blog.csdn.net/DXZCZH/article/details/51783573

必须完成的模块

1.(1)aar中的将aar文件manifest替换的模块，解压放在tmp文件夹中.ok
1.解压宿主apk文件，回头处理aar文件，替换aar manifest文件ok
1.生成aar的R。java文件,使用aapt todo ...
1.合并宿主manifest和aar manifest，待用 ok

2.id合并模块，ok
3.必须解压并生成到到一个文件夹下面，然后ok
3.smali生成模块。ok
3.生成aar的smali文件ok，
3 根据R.txt生成R.java文件上面生成的R文件ok
4.资源拷贝模块
4.拷贝res jni，资源到宿主文件夹，smali文件夹生成，
5.合并生成未签名apk
6.签名