# 安卓reverseToy使用说明<br/>
`java -jar apktool-reverseToy.jar -a (appkey) -t [eguan|yaohe(默认不写集成易观SDK)]  host.apk abc.jar|libs/|sdk.aar`</br>
>###### Apktool 使用说明请参考[这里](APKTOOL.md)<br/>

# 简单使用<br/>

`java -jar apktool-reverseToy.jar abc.apk libs`
>libs是文件夹路径，路径下面是易观的jar<br/>
注意：包缺少包可能引起app崩溃启动 <br/>
analysys_core_*.jar<br/>
analysys_push_*.jar<br/>
analysys_encrypt_*.jar<br/>
analysys_visual_*.jar

# 配置全局变量使用(macos举例)<br/>
`cd /usr/local/bin/`<br/>
`touch reverse`<br/>
`echo "#!bin/bash>>reverse"`<br/>
`echo 'exec java -jar {你自己的apktool-reversetoy jar包路径}.jar "$@"' >> reverse`<br/>
`chmod +x reverse`

# 参数查看<br/>
`usage: apktool m[erge] [options] <file_apk> <[AAR]_file>|<[LIBs]_dir>
 -a,--appkey     更换appkey
 -t,--sdk-type   集成SDK类型，eguan or yaohe 默认添加 eguan<br/>
` 
>支持合并aar文件
`reverse -a appkey abc.apk abtest-v1.2.2.aar`
# 环境配置要求<br/>

java7+ MacOS(10.12+)<br/>

# 项目打开

IntelliJ IDEA(2019-2版本) 

# 支持其他SDK（已经实现支持易观和吆喝）<br/>
 
* 主要步骤<br/>
继承AbstractSmaliOper类<br/>
子类实现父类抽象方法，提供SDK初始化Applicaton代码文件（用于添加到没有application实现类的apk）和代码片段（用于修改已有application实现类的项目)<br/>

# windows用户使用<br/>

需要在apktool-lib/src/main/resources/prebuilt/下面添加两个文件jar.exe和javac.exe<br/>

# 打包<br/>

执行brut.apktool/apktool-cli/build.gradle proguard task<br/>
jar生成位置 brut.apktool/apktool-cli/build/libs/apktool-reverseToy-*.jar<br/>



