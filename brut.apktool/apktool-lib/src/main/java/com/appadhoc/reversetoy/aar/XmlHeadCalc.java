package com.appadhoc.reversetoy.aar;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.chunk.Chunk;
import luyao.parser.xml.bean.chunk.StartTagChunk;

import java.util.List;

public class XmlHeadCalc {


    public static int getXmlSize(XmlParser data) {
        int fileHeaderSize = 4 + 4;
        int stringBlockSize = getXmlStringBlockSize(data);
        int idsCounts = getXmlIDsSize(data);
        int xmlContentSize = getChunksSize(data.getChunkList());
        return xmlContentSize + idsCounts + stringBlockSize + fileHeaderSize;

    }

    public static int getXmlIDsSize(XmlParser data) {
        return data.getIdBlock().getIds().length * 4 + 8;
    }

    public static int getXmlStringBlockSize(XmlParser data) {
        return ArscHeadCalc.getBytesCountByStringBlock(data.getStringBlock());
    }

    private static int getChunksSize(List<Chunk> chunkList) {
        int count = 0;
        for (int i = 0; i < chunkList.size(); i++) {
            Chunk chunk = chunkList.get(i);
            if(chunk instanceof StartTagChunk){
                count += getStartTagTrunk((StartTagChunk) chunk);
            }else{
                count += chunk.getRawBytes().length + 4;
            }
        }
        return count;
    }

    private static int getStartTagTrunk(StartTagChunk chunk) {
        int count = 9 * 4;
        List list = chunk.getAttributeList();
        if(list ==null){
            return count;
        }
        for(int i=0;i<list.size();i++){

            Attribute attribute = (Attribute) list.get(i);
            count += attribute.getRawBytes().length;
        }
        return count;
    }

}
