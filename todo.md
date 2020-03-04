1. 写arsc写文件 有代码
2。编译xml文件并生成arsc文件 ，通过aapt编译xml文件，
2。合并arsc文件，
3。写arsc文件
5。完成修改


1。难点，合并arsc文件，写回arsc文件，编译res文件，里面对资源的id的引用，需要一个mapping
替换原来的id为新的id，文件修改完成。只是改了id而已
2。编译完成之后会生成id，在生成新的id时候，生成mapping id
3。合并arsc文件

两步，1。写arsc，第二，修改xml中的id。
其他步骤不变
1。合并arsc文件，并写入arsc文件 todo
2。上步骤会生成mapping id
3。根据mappingID hashmap 来修改xml文件的reference
build apk文件。。这里会有问题，两个res文件夹，copy原来res文件夹里面去
修改smali文件内容
之前流程
完成修改

## spec_type和type_type的关系？
spec_type多数情况是紧接着type_type,0x201, 所以type_type的spec_type是知道的，紧接着是
读取configlist，这些结构貌似也是对应值写进去就ok，类configlist，这些和网络arsctable图片不一致

## 一个type和entry之间的关系？
一个type下面有default，-dip，-xxdpi等configlist，每一个下面有entrycount个的entry项目，
完了之后，循环读取

## entry的读取需要注意什么？
每个entry都有一个flags，flags 取值0表示后面是一个值，flags取1表示后面跟的是一个引用？

## entry value 读取
 private ResIntBasedValue readValue() throws IOException, AndrolibException {
		/* size */mIn.skipCheckShort((short) 8);
		/* zero */mIn.skipCheckByte((byte) 0);
        byte type = mIn.readByte();
        int data = mIn.readInt();

        return type == TypedValue.TYPE_STRING
                ? mPkg.getValueFactory().factory(mTableStrings.getHTML(data), data)
                : mPkg.getValueFactory().factory(type, data, null);
    }
    


## todo 写一个arsc文件，然后再去读取一下，正常读取说明问题不大
解析xml文件，过程中把id替换了，然后再写回xml，完成
## 所以解析xml文件也是个问题，写回xml文件。



todo ...
## aar res 生成arsc文件
## 合并arsc到host里面去，z
具体怎么做，向mm那样，读文件同时写arsc文件
第一步，让arsc decoder 读取文件 aar arsc文件，
第二步，读取host arsc文件
第三步，去重复aar arsc文件，
第四部，重新写arsc文件，
如何去重呢？两个arsc文件都要读取出来，aar 的arsc去重。
写的时候，从aar arsc table里面拿出来数据，填进去。

## 测试合并后的是否正确

## 修改编译的xml文件，正确的id
## 测试是否正确 ，手动打包生成apk，测试apk是否能运行

## 完整测试。

todo，尝试从package里面写arsc文件呢？就是读取成数据结构然后，再重新写回呢，

将arscdata的字符串 池搞过来，写在宿主的arsc文件后面。

一个type下面对应一个config，对应多个entry
todo ,搞清楚type的id怎么，然后respecttype 后每个数据结构后面增加raw byte数组。一方面计算count简单，另一方面写数据简单。