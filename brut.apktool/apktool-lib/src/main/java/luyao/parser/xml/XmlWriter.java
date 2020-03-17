package luyao.parser.xml;

import brut.androlib.AndrolibException;
import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.aar.WriterNp;
import com.appadhoc.reversetoy.aar.XmlHeadCalc;
import com.google.common.io.CountingOutputStream;
import com.mindprod.ledatastream.LEDataOutputStream;
import com.tencent.mm.util.ExtDataOutput;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.Xml;
import luyao.parser.xml.bean.chunk.*;

import java.io.*;
import java.util.List;

public class XmlWriter {
    ExtDataOutput mOut;
    File arscOutFile;
    XmlParser data;
    CountingOutputStream mCount;

    public static void main(String... args) throws IOException, BrutException {
        File file = testWriteFile();
        testReadNewFile(file);
//        testOldFile(null);
    }

    private static void testReadNewFile(File file) throws IOException {
        XmlParser parser = new XmlParser(new FileInputStream(file));
        parser.parse();
    }

    private static void testOldFile(File file) throws IOException {
        XmlParser parser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml"));
        parser.parse();
        System.out.println("read file count " + XmlHeadCalc.getXmlSize(parser));
    }

    private static File testWriteFile() throws IOException, BrutException {
        XmlParser parser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml"));
        parser.parse();
        File destFile = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest-aaa.xml");
        if (destFile.exists()) {
            OS.rmfile(destFile.getAbsolutePath());
        }
        XmlWriter xmlWriter = new XmlWriter(destFile, parser);
        xmlWriter.write2NewXml();
        return destFile;
    }

    public XmlWriter(File outXml, XmlParser parser) {
        this.arscOutFile = outXml;
        this.data = parser;
        try {
            OutputStream outputStream = new FileOutputStream(arscOutFile, false);
            mCount = new CountingOutputStream(outputStream);
            this.mOut = new ExtDataOutput(new LEDataOutputStream(mCount));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void write2NewXml() throws IOException, AndrolibException {
        writeHeader();
        writeStringPool();
        writeIds(data.getIdBlock(),data.getIdsType());
        writeXmlContentChunk(data.getChunkList());
    }

    private void writeStringPool() throws IOException, AndrolibException {
        WriterNp.writeStringPool(data.getStringBlock(), mOut);
    }

    private void writeXmlContentChunk(List<Chunk> chunkList) throws IOException {

        int len = chunkList.size();
        for (int size = 0; size < len; size++) {
            Chunk chunk = chunkList.get(size);
            if (chunk instanceof EndNameSpaceChunk) {
                mOut.writeInt(Xml.END_NAMESPACE_CHUNK_TYPE);
                mOut.write(chunk.getRawBytes());
            } else if (chunk instanceof StartNameSpaceChunk) {
                mOut.writeInt(Xml.START_NAMESPACE_CHUNK_TYPE);
                mOut.write(chunk.getRawBytes());
            } else if (chunk instanceof StartTagChunk) {
                mOut.writeInt(Xml.START_TAG_CHUNK_TYPE);
                StartTagChunk startTagChunk = ((StartTagChunk) chunk);
                mOut.writeInt(startTagChunk.getChunkSize());
                mOut.writeInt(startTagChunk.getLineNumber());
                mOut.writeInt(startTagChunk.getUnknown());
                mOut.writeInt(startTagChunk.getNameSpaceUri());
                mOut.writeInt(startTagChunk.getNameIndex());
                mOut.writeInt(startTagChunk.getOffset());
                mOut.writeInt(startTagChunk.getAtCount());
                mOut.writeInt(startTagChunk.getClassAttribute());
                List list = startTagChunk.getAttributeList();
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) {
                        Attribute attribute = (Attribute) list.get(i);
                        mOut.write(attribute.getRawBytes());
                    }
                }
            } else if (chunk instanceof EndTagChunk) {
                mOut.writeInt(Xml.END_TAG_CHUNK_TYPE);
                mOut.write(chunk.getRawBytes());
            } else {
                mOut.writeInt(Xml.TEXT_CHUNK_TYPE);
                mOut.write(chunk.getRawBytes());
            }
        }
    }

    private void writeIds(IDsBlock ids, int type) throws IOException {
        mOut.writeInt(type);
        mOut.writeInt(ids.getIds().length * 4 + 8);
        mOut.writeIntArray(ids.getIds());
    }

    private void writeHeader() throws IOException {
        int tableType = 0x00080003;
        mOut.writeInt(tableType);
        mOut.writeInt(XmlHeadCalc.getXmlSize(data));
    }
}
