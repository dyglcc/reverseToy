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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class MergeAndMestFile {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());

    public static void main(String[] args) throws Exception {
//        XmlParser parser = mergeAndroidMestFile();
//        writeTest(parser);
        testParseNew();


    }

    public static void testParseNew() throws IOException {
        XmlParser parser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest-aaa.xml"));
        parser.parse();
    }


    public static XmlParser mergeAndroidMestFile() throws Exception {
        File fileHost = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml");
        File fileAar = new File("/Users/dongyuangui/Desktop/apk-blue/aar_tmp/AndroidManifest.xml");

        XmlParser hostParse = new XmlParser(new FileInputStream(fileHost));
        hostParse.parse();
        XmlParser aarParser = new XmlParser(new FileInputStream(fileAar));
        aarParser.parse();
        XmlParser xmlParser = mergeXml(hostParse, aarParser);
        return xmlParser;
    }

    private static void writeTest(XmlParser parser) throws Exception {
        XmlWriter writer = new XmlWriter(new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest-aaa.xml"), parser);
        writer.write2NewXml();
    }

    private static XmlParser mergeXml(XmlParser hostParse, XmlParser aarParser) throws Exception {

        MergeArsc.mergelStringBlock(hostParse.getStringBlock(), aarParser.getStringBlock());

        mergeIds(hostParse, aarParser);

        mergeContentChunks(hostParse.getChunkList(), aarParser.getChunkList(), hostParse, aarParser);

        // 大概的思路已经理清楚，那么我们在menifest 后面追加 permisiion 和feacher等
        // 在application 后面追加service，activity，provider，receiver，meta-data

        return hostParse;
    }

    private static void mergeContentChunks(List<Chunk> hostTrunkList, List<Chunk> aarList, XmlParser hostParse, XmlParser aarParser) {

        replaceStringIndex(aarList, hostParse.getStringBlock());

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

    private static void replaceStringIndex(List<Chunk> aarList, StringBlock stringBlock) {
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
                replaceSimpleChunkStringIndex(chunk,stringBlock);
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

    private static List<Chunk> getTrunksFromAarlist(List<Chunk> aarList, String name) {
        ArrayList<Chunk> list = new ArrayList();
        boolean closed = true;
        for (int i = 0; i < aarList.size(); i++) {
            Chunk chunk = aarList.get(i);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk startTagChunk = (StartTagChunk) chunk;
                if (startTagChunk.getName().equals(name)) {
                    list.add(chunk);
                    closed = false;
                }
            } else if (chunk instanceof EndTagChunk) {
                EndTagChunk endTagChunk = (EndTagChunk) chunk;
                if (endTagChunk.getName().equals(name)) {
                    list.add(chunk);
                    closed = true;
                }
            } else {
                if (!closed) {
                    list.add(chunk);
                }
            }
        }
        return list;
    }

    private static void mergeIds(XmlParser hostParse, XmlParser aarParser) {
        IDsBlock idHostBlock = hostParse.getIdBlock();
        IDsBlock idAarBlock = aarParser.getIdBlock();

        int[] idsArrayHost = idHostBlock.getIds();
        int[] aarArrayAar = idAarBlock.getIds();
        int[] newIdsArray = new int[idsArrayHost.length + aarArrayAar.length];
        System.arraycopy(idsArrayHost, 0, newIdsArray, 0, idsArrayHost.length);
        System.arraycopy(aarArrayAar, 0, newIdsArray, idsArrayHost.length, aarArrayAar.length);
        idHostBlock.setIds(newIdsArray);
    }

}
