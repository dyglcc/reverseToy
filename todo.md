
1.读取host arsc文件
2。读取aar文件的arsc文件
3。合并到宿主aar文件中，保存被替换的id mapping 文件
4。写入arsc文件，检查是否正确
5。读取aar xml文件，并替换成新的id
6，合并AndroidManifesst文件。
7。合并smali文件

可以运行的app
爱奇艺、拼多多。
已知问题：
1。adhoc sdk没有更新功能
京东打包成功却运行不起来。
小红书不能运行，

需求列表
1。仅仅更新代码。

merge -ousc com.adhoc -exclude abc /Users/dongyuangui/Desktop/apk-blue/lingdandaren-release.apk /Users/dongyuangui/Desktop/aar-1/abtest-release.aar /Users/dongyuangui/Desktop/apk-blue/reverse_init_code.txt 
merge -ousc com.adhoc -exclude abc /Users/dongyuangui/Desktop/apk-blue/lingdandaren-release.apk /Users/dongyuangui/Desktop/aar-1/riskmanager-release.aar /Users/dongyuangui/Desktop/apk-blue/reverse_init_code.txt 
java -jar ~/work/apktool_2.4.1.jar d -f -only-main-classes signed1584858989429.apk

merge -ousc com.android.reyunsdk -exclude abc /Users/dongyuangui/Desktop/apk-blue/lingdan-fixed.apk /Users/dongyuangui/Desktop/aar-1/riskmanager-release.aar /Users/dongyuangui/Desktop/apk-blue/reverse_init_code.txt  


2。debugable
3。mobileqq旧版R.raw ,暂时找不到问题原因，可以通过分析android studio的arsc报错原因找到相应代码错误的地方，推测问题。


bug:
1.当把Application对象更换到了非classes.dex下面之后，可能会出现classnotfoundExcepiton ，拼多多注入时候报错。
修复方法（未尝试）：将classes.dex和classes4.dex（放applicaiton类的dex）名字互换,



