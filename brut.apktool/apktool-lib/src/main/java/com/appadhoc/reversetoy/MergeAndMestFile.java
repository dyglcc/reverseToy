package com.appadhoc.reversetoy;

import android.util.TypedValue;
import brut.androlib.res.decoder.StringBlock;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.XmlWriter;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class MergeAndMestFile {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());

    public static void main(String[] args) throws Exception {
//        XmlParser parser = mergeAndroidMestFile();
//        writeTest(parser);
//        File fileHost = new File("/Users/dongyuangui/Desktop/apk-blue/app/AndroidManifest.xml");
//        File fileAar = new File("/Users/dongyuangui/Desktop/aar-1/aar/tmpaaa77/aar_tmp/AndroidManifest.xml");
//        File out = new File("/Users/dongyuangui/Desktop/apk-blue/app/AndroidManifest.xml-out");
//        XmlParser parser = mergeAndroidMestFile(fileHost, fileAar);
//        XmlWriter.write2NewXml(out, parser);
////        todo 能够正常解析，但是安卓的解析却不认。，怎么回事
//
//        System.out.println("bengin merge ");
//        XmlParser.parse(new FileInputStream(out));
//        System.out.println("after merge");
//        testParseNew();


        testAddApplicationAndName();

    }

    private static void testAddApplicationAndName() throws Exception {
//        File fileHost = new File("/Users/dongyuangui/Desktop/apk-blue/app/AndroidManifest.xml");
        File fileHost = new File("/Users/dongyuangui/GITHUB/MyApplication/app/build/outputs/apk/debug/app-debug/AndroidManifest.xml");
        File fileHostout = new File("/Users/dongyuangui/Desktop/apk-blue/AndroidManifest.xml-out");
        XmlParser parser = XmlParser.parse(new FileInputStream(fileHost));
        StartTagChunk application = (StartTagChunk) MergeAndMestFile.getStartChunk(parser.getChunkList(), "application");
        Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk(application, "name");
        if (appNameChunk == null) {
            addNameAttribute(application, parser, "wo.ca.shenmgoushi.com.cn");
        }
        XmlWriter.write2NewXml(fileHostout, parser);
        XmlParser parse1 = XmlParser.parse(new FileInputStream(fileHostout));
        System.out.println("hello");
    }

    public static void addNameAttribute(StartTagChunk application, XmlParser parser, String appName) throws Exception {
        StringBlock block = parser.getStringBlock();
        String schmas = "http://schemas.android.com/apk/res/android";
        int nameSpaceUriIndex = MergeArsc.getPosFromBlockByString(block, schmas);
        int nameIndex = findAnameIndexFromExistChunk(parser);
        if(nameIndex == -1){
            throw new Exception("nameAttr index is -1 ");
        }
        int appNameValueIndex = MergeArsc.addSingleString2StringBlockTail(block, appName);
        int type = 50331656;
        byte[] attributeAppName = new byte[20];
        Utils.ByteUtils.replaceInt(attributeAppName, 0, nameSpaceUriIndex);
        Utils.ByteUtils.replaceInt(attributeAppName, 4, nameIndex);
        Utils.ByteUtils.replaceInt(attributeAppName, 8, appNameValueIndex);
        Utils.ByteUtils.replaceInt(attributeAppName, 12, type);
        Utils.ByteUtils.replaceInt(attributeAppName, 16, appNameValueIndex);
        Attribute newAtr = new Attribute(schmas, "name", appNameValueIndex, type, appName);
        newAtr.setRawBytes(attributeAppName);
        List<Attribute> list = application.getAttributeList();
        application.setAtCount(application.getAtCount() + 1);
        application.setChunkSize(application.getChunkSize()+20);
        if (list == null) {
            list = new ArrayList<>();
            application.setAttributeList(list);
        }

        list.add(newAtr);
    }

    private static int findAnameIndexFromExistChunk(XmlParser parser) {
        ArrayList<Chunk> list = (ArrayList<Chunk>) parser.getChunkList();
        for(int i=0;i<list.size();i++){
            Chunk chunk = list.get(i);
            if(chunk instanceof StartTagChunk){
                StartTagChunk startTagChunk = (StartTagChunk) chunk;
                int count = startTagChunk.getAtCount();
                if(count > 0){
                    List<Attribute> attributeList = startTagChunk.getAttributeList();
                    for(int j=0;j<count;j++){
                        Attribute attribute = attributeList.get(j);
                        if(attribute.getName().equals("name")){
                            return Utils.ByteUtils.getInt(attribute.getRawBytes(),4);
                        }
                    }
                }

            }
        }
        return -1;
    }

    private static void testParseNew() throws IOException {
        XmlParser parser = XmlParser.parse(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest-aaa.xml"));
    }


    public static XmlParser mergeAndroidMestFile(File HostManifest, File fileAarManifest) throws Exception {

        XmlParser hostParse = XmlParser.parse(new FileInputStream(HostManifest));
        XmlParser aarParser = XmlParser.parse(new FileInputStream(fileAarManifest));
        XmlParser xmlParser = mergeXml(hostParse, aarParser);
        return xmlParser;
    }

    private static void writeTest(XmlParser parser) throws Exception {
        XmlWriter.write2NewXml(new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest-aaa.xml"), parser);
    }

    public static XmlParser mergeXml(XmlParser hostParse, XmlParser aarParser) throws Exception {

        MergeArsc.mergelStringBlock(hostParse.getStringBlock(), aarParser.getStringBlock());

        mergeIds(hostParse, aarParser);

        mergeContentChunks(hostParse.getChunkList(), aarParser.getChunkList(), hostParse, aarParser);

        // 大概的思路已经理清楚，那么我们在menifest 后面追加 permisiion 和feacher等
        // 在application 后面追加service，activity，provider，receiver，meta-data

        return hostParse;
    }

    private static void mergeContentChunks(List<Chunk> hostTrunkList, List<Chunk> aarList, XmlParser hostParse, XmlParser aarParser) {

        replaceStringIndex(aarList, hostParse.getStringBlock(), hostParse.getIdBlock());

        List<Chunk> permissions = getTrunksFromAarlist(aarList, "uses-permission");
        List<Chunk> feachers = getTrunksFromAarlist(aarList, "uses-feature");
        List<Chunk> activitys = getTrunksFromAarlist(aarList, "activity");
        List<Chunk> services = getTrunksFromAarlist(aarList, "service");
        List<Chunk> providers = getTrunksFromAarlist(aarList, "provider");
        List<Chunk> receivers = getTrunksFromAarlist(aarList, "receiver");
        List<Chunk> metaDatas = getTrunksFromAarlist(aarList, "meta-data");

        int manifestPos = findStartPostion(hostTrunkList, "manifest");
        hostTrunkList.addAll(manifestPos + 1, feachers);
        hostTrunkList.addAll(manifestPos + 1, permissions);
        int applicationPos = findStartPostion(hostTrunkList, "application");


        hostTrunkList.addAll(applicationPos + 1, activitys);
        hostTrunkList.addAll(applicationPos + 1, services);
        hostTrunkList.addAll(applicationPos + 1, providers);
        hostTrunkList.addAll(applicationPos + 1, receivers);
        hostTrunkList.addAll(applicationPos + 1, metaDatas);

        System.out.println(hostTrunkList.size());

    }

    private static void replaceStringIndex(List<Chunk> aarList, StringBlock stringBlock, IDsBlock iDsBlock) {
        for (int x = 0; x < aarList.size(); x++) {
            Chunk chunk = aarList.get(x);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk stc = (StartTagChunk) chunk;
                if (stc.getNameSpaceUri() != -1) {
                    stc.setNameSpaceUri(stc.getNameSpaceUri() + stringBlock.oldHostBlockStringCount);
                }
                stc.setNameIndex(stc.getNameIndex() + stringBlock.oldHostBlockStringCount);
                List<Attribute> list = stc.getAttributeList();

                for (int i = 0; i < list.size(); i++) {

                    Attribute attribute = list.get(i);
                    byte[] rawBytes = attribute.getRawBytes();
                    int namespaceUriAttr = Utils.ByteUtils.getInt(rawBytes, 0);
                    if (namespaceUriAttr != -1) {
                        Utils.ByteUtils.replaceInt(rawBytes, 0, namespaceUriAttr + stringBlock.oldHostBlockStringCount);
                    }
                    int nameAttr = Utils.ByteUtils.getInt(rawBytes, 4);
                    if (nameAttr != -1) {
                        Utils.ByteUtils.replaceInt(rawBytes, 4, nameAttr + stringBlock.oldHostBlockStringCount);
                    }
                    int valueStr = Utils.ByteUtils.getInt(rawBytes, 8);
                    if (valueStr != -1) {
                        Utils.ByteUtils.replaceInt(rawBytes, 8, valueStr + stringBlock.oldHostBlockStringCount);
                    }
                    int type = Utils.ByteUtils.getInt(rawBytes, 12) >> 24;

                    int data = Utils.ByteUtils.getInt(rawBytes, 16);
                    if (type == TypedValue.TYPE_STRING) {
                        Utils.ByteUtils.replaceInt(rawBytes, 16, data + stringBlock.oldHostBlockStringCount);
                    }
                }
            } else if (chunk instanceof StartNameSpaceChunk) {
                replaceSimpleChunkStringIndex(chunk, stringBlock);
            } else if (chunk instanceof EndTagChunk) {
                replaceSimpleChunkStringIndex(chunk, stringBlock);
            } else if (chunk instanceof EndNameSpaceChunk) {
                replaceSimpleChunkStringIndex(chunk, stringBlock);
            }
        }

    }

    private static void replaceSimpleChunkStringIndex(Chunk chunk, StringBlock stringBlock) {
        byte[] rawBytes = chunk.getRawBytes();
        int namespaceUriAttr = Utils.ByteUtils.getInt(rawBytes, 12);
        if (namespaceUriAttr != -1) {
            Utils.ByteUtils.replaceInt(rawBytes, 12, namespaceUriAttr + stringBlock.oldHostBlockStringCount);
        }
        int name = Utils.ByteUtils.getInt(rawBytes, 16);
        Utils.ByteUtils.replaceInt(rawBytes, 16, name + stringBlock.oldHostBlockStringCount);
    }

    private static int findStartPostion(List<Chunk> hostTrunkList, String chunkName) {
        for (int i = 0; i < hostTrunkList.size(); i++) {
            Chunk chunk = hostTrunkList.get(i);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk stc = (StartTagChunk) chunk;
                if (stc.getName().equals(chunkName)) {
                    return i;
                }
            }
        }
        return 0;
    }

    public static Chunk getStartChunk(List<Chunk> hostTrunkList, String chunkName) {
        return hostTrunkList.get(findStartPostion(hostTrunkList, chunkName));
    }

    private static List<Chunk> getTrunksFromAarlist(List<Chunk> aarList, String name) {
        ArrayList<Chunk> list = new ArrayList();
        boolean open = false;
        for (int i = 0; i < aarList.size(); i++) {
            Chunk chunk = aarList.get(i);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk startTagChunk = (StartTagChunk) chunk;
                if (startTagChunk.getName().equals(name)) {
                    list.add(chunk);
                    open = true;
                }
            } else if (chunk instanceof EndTagChunk) {
                EndTagChunk endTagChunk = (EndTagChunk) chunk;
                if (endTagChunk.getName().equals(name)) {
                    list.add(chunk);
                    open = false;
                }
            }
            if (open) {
                if (list.get(list.size() - 1) != chunk) {
                    list.add(chunk);
                }
            }

        }
        return list;
    }

    private static void mergeIds(XmlParser hostParse, XmlParser aarParser) throws Exception {


        // nameAttr 一个数字表示两个意思，1.ids对应的系统资源id，2对应block的index
        IDsBlock idHostBlock = hostParse.getIdBlock();

        StringBlock hostBlock = hostParse.getStringBlock();
        int blockLen = hostBlock.oldHostBlockStringCount;
        int iDLen = idHostBlock.getIds().length;
        int gapLen = blockLen - iDLen;
        if (blockLen < idHostBlock.getIds().length) {
            throw new Exception("晕！理论上ids个数不可能多于stringBlock的");
        }

        IDsBlock idAarBlock = aarParser.getIdBlock();

        int[] idsArrayHost = idHostBlock.getIds();
        int[] gapArray = new int[gapLen];
        int[] aarArrayAar = idAarBlock.getIds();
        int[] newIdsArray = new int[idsArrayHost.length + aarArrayAar.length + gapArray.length];
        System.arraycopy(idsArrayHost, 0, newIdsArray, 0, idsArrayHost.length);
        System.arraycopy(gapArray, 0, newIdsArray, idsArrayHost.length, gapArray.length);
        System.arraycopy(aarArrayAar, 0, newIdsArray, idsArrayHost.length + gapArray.length, aarArrayAar.length);
        idHostBlock.setIds(newIdsArray);
    }

    public static Attribute getAttributeFromTrunk(StartTagChunk application, String name) {
        List<Attribute> attributes = application.getAttributeList();
        for (int i = 0; i < attributes.size(); i++) {
            Attribute attribute = attributes.get(i);
            if (attribute.getName().equals("name")) {
                return attribute;
            }
        }
        return null;
    }

    public static void updateAppNameAttribute(Attribute application, XmlParser hostParser, String appName) throws Exception {
        StringBlock block = hostParser.getStringBlock();

        byte[] attributeAppName = application.getRawBytes();

        int appNameValueIndex = MergeArsc.addSingleString2StringBlockTail(block, appName);

        application.setData(appName);
        Utils.ByteUtils.replaceInt(attributeAppName, 16, appNameValueIndex);
    }
}
