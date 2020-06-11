# 安卓reverseToy使用说明<br/>
打包成功之后使用高版本设备9.0安装apk，暂时发现7.0以下手机会出现classNotfoundException

# 简单使用<br/>
>###### Apktool 使用说明请参考[这里](APKTOOL.md)<br/>
<pre>java -jar apktool-reverseToy.jar m abc.apk libs reverse_code_json_default-adhoc.txt</pre>

>参数说明：libs是文件夹路径，路径下面是SDK的jar<br/>
注意：包缺少包可能引起app崩溃启动 <br/>
abtest_core_*.jar<br/>
abtest_visual.jar

abc.apk是被合并的宿主apk文件，加固apk未测试，是否支持未知

reverse_code_json_default-adhoc.txt是初始化代码描述文件，该描述文件默认是Appadhoc 吆喝科技的初始化代码描述文件，想使用用户可以参考模版，设置自己的描述文件初始化描述文件。




# 设置参数
<pre> java -jar apktool-reverseToy*.jar m  -sde  host.apk abc.jar|libs/|sdk.aar reverse_code_json_default-adhoc.txt</pre>

# 合并aar文件
<pre>reverse m abc.apk abtest-v1.2.2.aar reverse_code_json_default-adhoc.txt</br></pre>

# 参数查看<br/>

<pre>usage: usage: apktool m[erge] [options] <file_apk> <[AAR]_file>|<[LIB]_dir> <init_code_file>
             -codePath,--dir-to-del-before-inject-sdk <tag>   用于代码更新，合并之前要删除指定的路径下的代码文件 例如：com.adhoc
             -keepDir,--del-code-path-keep-dir <tag>          用于代码更新，删除旧代码，但是想保留的子目录 例如：visual（将会保留com.adhoc下面的visual目录）
             -sde,--set-debug-enable                          设置debuggable true 默认:false</pre>


# 配置全局变量(MacOS)
<pre>cd /usr/local/bin/
touch reverse
echo '#!bin/bash' >> reverse
echo 'exec java -jar {你自己的apktool-reversetoy jar包路径}.jar "$@"' >> reverse
chmod +x reverse</pre>


# 运行环境(MacOS)<br/>

* java7+  
* MacOS(10.12+)<br/>

# 项目打开

IntelliJ IDEA(2019-2版本) 

# 支持其他SDK
 
 主要步骤<br/>
 
* 1. 修改初始化描述文件reverse_code_json_default-adhoc.txt<br/>


# Windows用户使用<br/>

在apktool-lib/src/main/resources/prebuilt/路径下面添加文件：

* jar.exe
* javac.exe

# 打包<br/>

gradle路径

* brut.apktool/apktool-cli/build.gradle 

Task 名称

* proguard<br/>

jar生成位置 ：

* brut.apktool/apktool-cli/build/libs/apktool-reverseToy-*.jar<br/>



