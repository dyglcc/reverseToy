package com.appadhoc.reversetoy;

import brut.androlib.AndrolibException;
import brut.androlib.res.decoder.StringBlock;
import brut.util.ExtDataInput;
import com.appadhoc.reversetoy.aar.Duo_int;
import com.appadhoc.reversetoy.utils.RecordCountingInputStream;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.XmlWriter;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.*;

import java.io.*;
import java.util.List;

public class XmlResIDReplaceTool {
    private RecordCountingInputStream mCountIn;
    private ExtDataInput mIn;

    public static void main(String[] args) throws IOException, AndrolibException {
        XmlResIDReplaceTool tool = new XmlResIDReplaceTool();
        File file = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res");
        decodeAllFiles(file);
    }

    public static void decodeAllFiles(File resDir) throws IOException, AndrolibException {
        for (File file : resDir.listFiles()) {
            if (file.isFile()) {
                decodeSingleFileAndReplacIds(file);
            } else if (file.isDirectory()) {
                decodeAllFiles(file);
            }
        }
    }

    public static void decodeSingleFileAndReplacIds(File file) throws IOException, AndrolibException {

        if (file.getName().endsWith(".xml")) {
            XmlParser parser = new XmlParser(new FileInputStream(file));
            parser.parse();
            boolean success = replaceIdsFromMapping(parser);
            if (success) {
                XmlWriter writer = new XmlWriter(new File(file.getAbsolutePath() + "-out"), parser);
                writer.write2NewXml();
            }
        }

    }

    private static boolean replaceIdsFromMapping(XmlParser parser) {

        List<Chunk> chunkList = parser.getChunkList();

        IDsBlock iDsBlock = parser.getIdBlock();

        replaceIdArrays(iDsBlock);
        replacChunks(chunkList);

        return false;
    }

    private static void replaceIdArrays(IDsBlock iDsBlock) {
        int[] arrays = iDsBlock.getIds();
        for (int i = 0; i < arrays.length; i++) {
            int id = arrays[i];
            if (id < (0x7f << 24)) { // 系统id
                continue;
            }
            Duo_int duo_int = MergeArsc.mapping.get(id);

            if (duo_int != null) {

                if (duo_int.idOld == id) {

                    arrays[i] = duo_int.idNew;

                }
            }
        }
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
                    int namespaceUriAttr = Utils.ByteUtils.getInt(rawBytes, 0);
                    if (namespaceUriAttr != -1) {
//                        Utils.ByteUtils.replaceInt(rawBytes, 0, mappingid);
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
