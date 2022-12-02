package com.appadhoc.reversetoy;

import brut.androlib.res.decoder.StringBlock;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.XmlWriter;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.Chunk;
import luyao.parser.xml.bean.chunk.IDsBlock;
import luyao.parser.xml.bean.chunk.StartTagChunk;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

public class AndroidManifestTool {
    public static final String schmas = "http://schemas.android.com/apk/res/android";

    public static void main(String[] args) throws Exception {
        File jiaguFile = new File("/Users/dongyuangui/Desktop/liepin/reverse");
        File manifest = new File(jiaguFile, "AndroidManifest-back.xml");

        XmlParser parser = XmlParser.parse(new FileInputStream(manifest));
        String appName = "com.lietou.mishu.application.LPApplication";

        String appHostFullName = changeApplicationName(parser, appName);
        XmlWriter.write2NewXml(manifest, parser);
    }


    public static String changeApplicationName(XmlParser hostParser, String appName) throws Exception {

        StartTagChunk application = (StartTagChunk) MergeAndMestFile.getStartChunk(hostParser.getChunkList(), "application");
        Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk(application, "name");

        Utils.ByteUtils.replaceNewName(hostParser, appName, appNameChunk);

        return appName;
    }

    // 返回application name ，如果没有添加
    public static String setBinaryManifestApplicationName(XmlParser hostParser, String appname) throws Exception {

        StringBlock block = hostParser.getStringBlock();
        StartTagChunk application = (StartTagChunk) MergeAndMestFile.getStartChunk(hostParser.getChunkList(), "application");
        Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk(application, "name");
        if (appNameChunk != null) {
            String oldAppName = block.getString(appNameChunk.getValueStr());
            return oldAppName;
        } else {
            // 把appname 添加到二进制文件当中。
            AndroidManifestTool.addNameAttribute(application, hostParser, appname);
            return appname;
        }
    }

    public static void setDebuggableTrue(XmlParser parser) throws Exception {
        StartTagChunk application = (StartTagChunk) MergeAndMestFile.getStartChunk(parser.getChunkList(), "application");
        Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk(application, "debuggable");

        if (appNameChunk != null) {
            if (appNameChunk.getData().equals("false")) {
                byte[] rawBytes = appNameChunk.getRawBytes();
                Utils.ByteUtils.replaceInt(rawBytes, 16, -1); // 0表示false，-1表示true
                appNameChunk.setData("true");
                parser.setNeedReWrite(true);
            }
        } else {
            // add debuggable attribute.
            addDebuggableTrunk(application, parser);
            parser.setNeedReWrite(true);
        }

    }

    private static void addDebuggableTrunk(StartTagChunk application, XmlParser parser) throws Exception {
        StringBlock block = parser.getStringBlock();
        int index = StringBlockUtils.addSingleString2StringBlockTail(block, "debuggable");
        int nameSpaceUriIndex = getPosFromBlockByString(block, schmas);
        int value = -1;
        int type = 301989896;
        int data = -1;
        byte[] bytes = createAttrybuteBytes(nameSpaceUriIndex, index, value, type, data);
        Attribute debuggable = new Attribute(schmas, "debuggable", value, type >> 24, "true");
        debuggable.setRawBytes(bytes);
        List<Attribute> list = application.getAttributeList();
        application.setAtCount(application.getAtCount() + 1);
        application.setChunkSize(application.getChunkSize() + 20);
        if (list == null) {
            list = new ArrayList<>();
            application.setAttributeList(list);
        }
        list.add(debuggable);
        IDsBlock iDsBlock = parser.getIdBlock();
        // debugable index要和stringBlock对齐。换个说法是，index 一个值表示两个意思，idBlock的index和stringBlock的index。
        int stringBlockLen = block.getCount();
        int idArrayLen = iDsBlock.getSize();
        int gapLen = stringBlockLen - idArrayLen;
        int[] gapArray = new int[gapLen];
        int[] newIds = new int[stringBlockLen];
        System.arraycopy(iDsBlock.getIds(), 0, newIds, 0, idArrayLen);
        System.arraycopy(gapArray, 0, newIds, idArrayLen, gapLen);
        newIds[newIds.length - 1] = 16842767;// 0x0101000f
        iDsBlock.setIds(newIds);

    }

    public static void modifyLaunchCategoryEnableAttrIsTrue(XmlParser parser) throws Exception {
//        List<Chunk> launchActivity = MergeAndMestFile.getTrunksFromAarlist(parser.getChunkList(), "activity");
        List<Chunk> activitys = MergeAndMestFile.getTrunksFromAarlist(parser.getChunkList(), "activity");
        for (Chunk activityChunk : activitys) {
            Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk((StartTagChunk) activityChunk, "enabled");
            // filter the category modify the category is <intent-filter> <category android:name ="android.intent.category.LAUNCHER"/>

            if (appNameChunk != null) {
                if (appNameChunk.getData().equals("false")) {
//                    byte[] rawBytes = appNameChunk.getRawBytes();
//                    Utils.ByteUtils.replaceInt(rawBytes, 16, -1); // 0表示false，-1表示true
//                    appNameChunk.setData("true");
//                    parser.setNeedReWrite(true);
                }
            } else {
                // add debuggable attribute.
//                addDebuggableTrunk((StartTagChunk) activityChunk, parser);
//                parser.setNeedReWrite(true);
            }
        }


    }


    public static void addNameAttribute(StartTagChunk application, XmlParser parser, String appName) throws Exception {
        StringBlock block = parser.getStringBlock();
        int nameSpaceUriIndex = getPosFromBlockByString(block, schmas);
        int nameIndex = findAnameIndexFromExistChunk(parser);
        if (nameIndex == -1) {
            throw new Exception("nameAttr index is -1 ");
        }
        int appNameValueIndex = StringBlockUtils.addSingleString2StringBlockTail(block, appName);
        int type = 50331656;
        byte[] attributeAppName = createAttrybuteBytes(nameSpaceUriIndex, nameIndex, appNameValueIndex, type, appNameValueIndex);
        Attribute newAtr = new Attribute(schmas, "name", appNameValueIndex, type >> 24, appName);
        newAtr.setRawBytes(attributeAppName);
        List<Attribute> list = application.getAttributeList();
        application.setAtCount(application.getAtCount() + 1);
        application.setChunkSize(application.getChunkSize() + 20);
        if (list == null) {
            list = new ArrayList<>();
            application.setAttributeList(list);
        }
        list.add(newAtr);
        parser.setNeedReWrite(true);
    }

    private static byte[] createAttrybuteBytes(int nameSpaceUriIndex, int index, int value, int type, int data) {
        byte[] attributeAppName = new byte[20];
        Utils.ByteUtils.replaceInt(attributeAppName, 0, nameSpaceUriIndex);
        Utils.ByteUtils.replaceInt(attributeAppName, 4, index);
        Utils.ByteUtils.replaceInt(attributeAppName, 8, value);
        Utils.ByteUtils.replaceInt(attributeAppName, 12, type);
        Utils.ByteUtils.replaceInt(attributeAppName, 16, data);
        return attributeAppName;

    }

    private static int findAnameIndexFromExistChunk(XmlParser parser) {
        ArrayList<Chunk> list = (ArrayList<Chunk>) parser.getChunkList();
        for (int i = 0; i < list.size(); i++) {
            Chunk chunk = list.get(i);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk startTagChunk = (StartTagChunk) chunk;
                int count = startTagChunk.getAtCount();
                if (count > 0) {
                    List<Attribute> attributeList = startTagChunk.getAttributeList();
                    for (int j = 0; j < count; j++) {
                        Attribute attribute = attributeList.get(j);
                        if (attribute.getName().equals("name")) {
                            return Utils.ByteUtils.getInt(attribute.getRawBytes(), 4);
                        }
                    }
                }

            }
        }
        return -1;
    }

    public static int getPosFromBlockByString(StringBlock block, String schmas) {
        int len = block.getM_stringOffsets().length;
        for (int i = 0; i < len; i++) {
            if (schmas.equals(block.get(i))) {
                return i;
            }
        }
        return -1;
    }
}
