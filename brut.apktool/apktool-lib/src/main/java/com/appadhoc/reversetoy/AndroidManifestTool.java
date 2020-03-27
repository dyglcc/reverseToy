package com.appadhoc.reversetoy;

import brut.androlib.res.decoder.StringBlock;
import com.appadhoc.reversetoy.utils.Utils;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.IDsBlock;
import luyao.parser.xml.bean.chunk.StartTagChunk;

public class AndroidManifestTool {
    public static void main(String[] args) {
        System.out.println("hello");
    }

    public static void setDebuggableTrue(XmlParser parser) {
        StartTagChunk application = (StartTagChunk) MergeAndMestFile.getStartChunk(parser.getChunkList(), "application");
        Attribute appNameChunk = MergeAndMestFile.getAttributeFromTrunk(application, "debuggable");

        if (appNameChunk != null) {
            if (appNameChunk.getData().equals("false")) {
                byte[] rawBytes = appNameChunk.getRawBytes();
                Utils.ByteUtils.replaceInt(rawBytes,16,-1); // 0表示false，-1表示true
                appNameChunk.setData("true");
            }
        } else {
//            todo add debugable trunk.
            addDebuggableTrunk(application,parser);
        }

    }

    private static void addDebuggableTrunk(StartTagChunk application, XmlParser parser) throws Exception {
        StringBlock block = parser.getStringBlock();
        int index = MergeArsc.addSingleString2StringBlockTail(block,"debuggable");
        IDsBlock iDsBlock = parser.getIdBlock();

    }
}
