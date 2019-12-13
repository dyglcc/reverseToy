#[Apktool 使用请参考](APKTOOL.md)
##apktool-reverseToy使用说明
`java -jar apktool-reverseToy.jar -a 2232123sdfaks（appkey） -k eguan (默认集成易观SDK) host.apk abc.jar|libs/|sdk.aar`
>支持合并aar文件和jar类型的sdk

##简单使用

`java -jar apktool-reverseToy.jar abc.apk libs`
>libs是文件夹路径，路径下面是易观的jar包 包括analysys_core_4.3.7.2_12061928.jar    analysys_push_4.3.7.2_12061928.jar
analysys_encrypt_4.3.7.2_12061928.jar analysys_visual_4.3.7.2_12061928.jar

配置全局变量使用(macos举例)<br/>
`cd /usr/local/bin/`<br/>
`touch reverse`<br/>
`echo "#!bin/bash>>reverse"`<br/>
`echo 'exec java -jar {你自己的apktool-reversetoy jar包路径}.jar "$@"' >> reverse`<br/>
`chmod +x reverse`

##参数查看
>usage: apktool m[erge] [options] <file_apk> <[AAR]_file>
 -a,--appkey     更换appkey
 -t,--sdk-type   集成SDK类型，eguan or yaohe 默认添加 eguan
usage: apktool m[erge] [options] <file_apk> <[LIB]_dir>
 -a,--appkey     更换appkey
 -t,--sdk-type   集成SDK类型，eguan or yaohe 默认添加 eguan