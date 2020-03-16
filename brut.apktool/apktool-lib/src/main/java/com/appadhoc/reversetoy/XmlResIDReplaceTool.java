package com.appadhoc.reversetoy;

import brut.util.ExtDataInput;
import com.appadhoc.reversetoy.utils.RecordCountingInputStream;
import com.google.common.io.LittleEndianDataInputStream;

import java.io.*;

public class XmlResIDReplaceTool {
    private RecordCountingInputStream mCountIn;
    private ExtDataInput mIn;
    public static void main(String[] args) throws FileNotFoundException {
        XmlResIDReplaceTool tool = new XmlResIDReplaceTool();
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res/layout/loginpage.xml");
        InputStream inputStream = new FileInputStream(file);
        RandomAccessFile accessFile = new RandomAccessFile(file,"w");
        tool.decode(inputStream,accessFile);
    }
    public void decode(InputStream inputStream, RandomAccessFile accessFile){
        inputStream = mCountIn = new RecordCountingInputStream(inputStream);
        mIn = new ExtDataInput((DataInput) new LittleEndianDataInputStream(inputStream));

    }
}
