package com.appadhoc.reversetoy;

import android.util.TypedValue;
import brut.androlib.AndrolibException;
import brut.androlib.res.decoder.StringBlock;
import com.appadhoc.reversetoy.aar.Duo_int;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.XmlWriter;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.*;

import java.io.*;
import java.util.List;

public class XmlResIDReplaceTool {

    public static void main(String[] args) throws IOException, AndrolibException {
//        XmlResIDReplaceTool tool = new XmlResIDReplaceTool();
        File resDir = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res");
//        decodeDirAndReplace(file);
//        File file = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml");
        Duo_int duo_int = new Duo_int(2131492919,123);
        Duo_int duo_int1 = new Duo_int(2131099743,456);
        MergeArsc.mapping.put(2131492919,duo_int);
        MergeArsc.mapping.put(2131099743,duo_int1);

//        decodeSingleFileAndReplacIds(file);
        decodeDirAndReplace(resDir);
    }

    public static void decodeDirAndReplace(File resDir) throws IOException, AndrolibException {
        for (File file : resDir.listFiles()) {
            if (file.isFile()) {
                decodeSingleFileAndReplacIds(file);
            } else if (file.isDirectory()) {
                decodeDirAndReplace(file);
            }
        }
    }

    public static void decodeSingleFileAndReplacIds(File file) throws IOException, AndrolibException {

        if (file.getName().endsWith(".xml")) {
            XmlParser parser = new XmlParser(new FileInputStream(file));
            parser.parse();
            boolean success = replaceIdsFromMapping(parser);
            if (success) { // 覆盖文件
                XmlWriter writer = new XmlWriter(new File(file.getAbsolutePath()), parser);
                writer.write2NewXml();
            }
        }

    }

    private static boolean replaceIdsFromMapping(XmlParser parser) {

        List<Chunk> chunkList = parser.getChunkList();

        IDsBlock iDsBlock = parser.getIdBlock();

        replaceIdArrays(iDsBlock);
        replacChunks(chunkList);

        return true;
    }

    private static void replaceIdArrays(IDsBlock iDsBlock) {
        int[] arrays = iDsBlock.getIds();
        for (int i = 0; i < arrays.length; i++) {
            int id = arrays[i];
            if (id < (0x7f << 24)) { // 系统id
                continue;
            }
            int newId = getMappingID(id);
            if (newId != -1) {
                arrays[i] = newId;
            }
        }
    }

    private static int getMappingID(int oldId) {

        Duo_int duo_int = MergeArsc.mapping.get(oldId);

        if (duo_int != null) {

            if (duo_int.idOld == oldId) {

                return duo_int.idNew;

            }
        }
        return -1;
    }

    private static void replacChunks(List<Chunk> aarList) {
        for (int x = 0; x < aarList.size(); x++) {
            Chunk chunk = aarList.get(x);
            if (chunk instanceof StartTagChunk) {
                StartTagChunk stc = (StartTagChunk) chunk;
                List<Attribute> list = stc.getAttributeList();

                for (int i = 0; i < list.size(); i++) {

                    Attribute attribute = list.get(i);
                    byte[] rawBytes = attribute.getRawBytes();
                    byte type = Utils.ByteUtils.getByte(rawBytes, 15);
                    if (TypedValue.TYPE_REFERENCE == type) {
                        int id = Utils.ByteUtils.getInt(rawBytes, 16);
                        int newId = getMappingID(id);
                        if (newId != -1) {
                            Utils.ByteUtils.replaceInt(rawBytes, 16, newId);
                        }
                    }
                }
            } else if (chunk instanceof StartNameSpaceChunk) {
            } else if (chunk instanceof EndTagChunk) {
            } else if (chunk instanceof EndNameSpaceChunk) {
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
}
