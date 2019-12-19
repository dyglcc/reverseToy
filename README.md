# 安卓reverseToy使用说明<br/>
`java -jar apktool-reverseToy.jar m -ak (appkey)  -ai -ah -ap -atc -atck -atfp -atp -cfu http://config_url:8080 -upu http://upload_url:9090 -deu wss://debug_wss:3000 -chl channel  -dm 2 -enc 0 -ene -mdti 223 -st eguan   host.apk abc.jar|libs/|sdk.aar`</br>
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
`usage: apktool m[erge] [options] <file_apk> <[AAR]_file>|<[LIB]_dir>
  -ah,--autoHeatMap                   设置autoHeatMap true 默认:false
  -ai,--autoInstallation              设置autoInstallation false 默认:true
  -ak,--appkey <tag>                  更换appkey 默认:2709692586aa3e42
  -ap,--auto_profile                  设置auto_profile false 默认:true
  -atc,--autoTrackClick               设置autoTrackClick true 默认:false
  -atck,--allowTimeCheck              设置allowTimeCheck false 默认:true
  -atfp,--autoTrackFragmentPageView   设置autoTrackFragmentPageView true 默认:false
  -atp,--autoTrackPageView            设置autoTrackPageView false 默认:true
  -cfu,--configUrl <tag>              更换configUrl 默认:https://arkpaastest.analysys.cn:4089
  -chl,--channel <tag>                更换channel 默认:AnalsysyReverse
  -deu,--debugUrl <tag>               更换debugUrl 默认:wss://arkpaastest.analysys.cn:4091
  -dm,--debug_mode <tag>              更换debugMode 可选项0，1，2 默认:2
  -enc,--encrypt_type <tag>           更换encrypt_type 可选项0(empty)，1(aes)，2(aes_cbc) 默认:1
  -ene,--enableException              设置enableException false 默认:true
  -mdti,--maxDiffTimeInterval <tag>   设置maxDiffTimeInterval int类型 默认:300秒
  -st,--sdk-type <tag>                集成SDK类型，eguan or yaohe 默认:eguan
  -upu,--uploadUrl <tag>              更换uploadUrl 默认:https://arkpaastest.analysys.cn:4089</br>
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



