package luyao.parser.xml;

import android.util.TypedValue;
import brut.androlib.res.decoder.StringBlock;
import brut.util.ExtDataInput;
import com.appadhoc.reversetoy.utils.RecordCountingInputStream;
import com.google.common.io.LittleEndianDataInputStream;
import luyao.parser.xml.bean.Attribute;
import luyao.parser.xml.bean.Xml;
import luyao.parser.xml.bean.chunk.*;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import static luyao.parser.utils.Reader.log;

/**
 * Created by luyao
 * on 2018/12/14 10:00
 */
public class XmlParser {

    public static void testNew() throws IOException {
        XmlParser xmlParser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml"));
        xmlParser.parse();
    }

    public static void main(String... args) throws IOException {
        testNew();
//        testParse(123);
    }

    public static void testParse() throws IOException {
        XmlParser xmlParser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/aar_tmp/AndroidManifest.xml"));
        xmlParser.parse();
    }
    public static void testParse(int count) throws IOException {
        File dir = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res/layout");
        for(File file:dir.listFiles()){
            XmlParser xmlParser = new XmlParser(new FileInputStream(file));
            xmlParser.parse();
        }
    }

    public StringBlock getStringBlock() {
        return stringBlock;
    }

    public void setStringBlock(StringBlock stringBlock) {
        this.stringBlock = stringBlock;
    }

    private StringBlock stringBlock;

    public List<Chunk> getChunkList() {
        return chunkList;
    }

    public void setChunkList(List<Chunk> chunkList) {
        this.chunkList = chunkList;
    }

    private List<Chunk> chunkList = new ArrayList<>();
    private RecordCountingInputStream mCountIn;
    private ExtDataInput reader;
    private int count;

    public XmlParser(InputStream inputStream) {
        inputStream = mCountIn = new RecordCountingInputStream(inputStream);
        reader = new ExtDataInput((DataInput) new LittleEndianDataInputStream(inputStream));
    }

    public void parse() throws IOException {
        int start = mCountIn.getCount();
        parseHeader();
        int headerCount = mCountIn.getCount();
        System.out.println(" header count is " + (headerCount - start));


        parseStringChunk();
        int stringCount = mCountIn.getCount();
        System.out.println(" string count is " + (stringCount - headerCount));


        parseResourceIdChunk();
        int idCount = mCountIn.getCount();
        System.out.println(" ids count is " + (idCount - stringCount));


        parseXmlContentChunk();
        int countCount = mCountIn.getCount();
        System.out.println(" content count is " + (countCount - idCount));


        generateXml();
    }


    private int size;

    public int getIdsType() {
        return idsType;
    }

    public void setIdsType(int idsType) {
        this.idsType = idsType;
    }

    public int getIdsSize() {
        return idsSize;
    }

    public void setIdsSize(int idsSize) {
        this.idsSize = idsSize;
    }

    private int idsType;
    private int idsSize;

    private void parseHeader() {
        try {
            Xml.nameSpaceMap.clear();
            int magicNumber = reader.readInt();
            log("magic number: %s", Integer.toHexString(magicNumber));

            size = reader.readInt();
            log("file size: %d", size);
            System.out.println("file size " + size);
        } catch (IOException e) {
            e.printStackTrace();
            log("parse header error!");
        }
    }

    private void parseStringChunk() throws IOException {
        stringBlock = StringBlock.read_apktool(reader);
    }

    public IDsBlock getIdBlock() {
        return idTrunk;
    }
    private IDsBlock idTrunk = new IDsBlock();

    private void parseResourceIdChunk() throws IOException {
        int chunkType = reader.readInt();
        log("chunk type: %s", Integer.toHexString(chunkType));
        int chunkSize = reader.readInt();
        if (chunkSize < 8 || (chunkSize % 4) != 0) {
            throw new IOException("Invalid resource ids size (" + chunkSize + ").");
        }
        this.setIdsType(chunkType);
        this.setIdsSize(chunkSize);
        idTrunk.setType(chunkType);
        idTrunk.setSize(chunkSize);
        idTrunk.setIds(reader.readIntArray(chunkSize / 4 - 2));

    }

    private void parseXmlContentChunk() {
        try {
            while (mCountIn.getCount() < size) {
                int chunkType = reader.readInt();
                switch (chunkType) {
                    case Xml.START_NAMESPACE_CHUNK_TYPE:
                        parseStartNamespaceChunk();
                        break;
                    case Xml.START_TAG_CHUNK_TYPE:
                        parseStartTagChunk();
                        break;
                    case Xml.END_TAG_CHUNK_TYPE:
                        parseEndTagChunk();
                        break;
                    case Xml.END_NAMESPACE_CHUNK_TYPE:
                        parseEndNamespaceChunk();
                        break;
                    case Xml.TEXT_CHUNK_TYPE:
                        parseTextChunk();
                        break;
                    default:
                        break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            log("parse XmlContentChunk error!");
        }
    }

    private void parseStartNamespaceChunk() {
        log("\nparse Start NameSpace Chunk");
        log("chunk type: 0x%x", Xml.START_NAMESPACE_CHUNK_TYPE);

        try {
            mCountIn.startRecording();
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

//            reader.skipBytes(4); // 0xffffffff
            reader.readInt();

            int prefix = reader.readInt();
            log("prefix: %s", stringBlock.getString(prefix));

            int uri = reader.readInt();
            log("uri: %s", stringBlock.getString(uri));

            mCountIn.stopRecording();
            StartNameSpaceChunk startNameSpaceChunk = new StartNameSpaceChunk(chunkSize, lineNumber, prefix, uri);
            startNameSpaceChunk.setRawBytes(mCountIn.getRecords());
            chunkList.add(startNameSpaceChunk);

            Xml.nameSpaceMap.put(stringBlock.getString(prefix), stringBlock.getString(uri));
        } catch (IOException e) {
            e.printStackTrace();
            log("parse Start NameSpace Chunk error!");
        }
    }

    private void parseStartTagChunk() {
        log("\nparse Start Tag Chunk");
        log("chunk type: 0x%x", Xml.START_TAG_CHUNK_TYPE);

        try {
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

//            reader.skipBytes(4); // 0xffffffff
            int unknown = reader.readInt(); // 0xffffffff

            int namespaceUri = reader.readInt();
            if (namespaceUri == -1)
                log("namespace uri: null");
            else
                log("namespace uri: %s", stringBlock.getString(namespaceUri));

            int name = reader.readInt();
            log("name: %s", stringBlock.getString(name));

//            reader.skipBytes(4); // flag 0x00140014 偏移
            int offset = reader.readInt(); // flag 0x00140014

            int atCount = reader.readInt();
            int attributeCount = atCount & 0xFFFF;
            log("attributeCount: %d", attributeCount);

            int classAttribute = reader.readInt();
            log("class attribute: %s", classAttribute);

            List<Attribute> attributes = new ArrayList<>();
            // 每个 attribute 五个属性，每个属性 4 字节
            for (int i = 0; i < attributeCount; i++) {

                mCountIn.startRecording();
                log("Attribute[%d]", i);

                int namespaceUriAttr = reader.readInt();
                if (namespaceUriAttr == -1)
                    log("   namespace uri: null");
                else
                    log("   namespace uri: %s", stringBlock.getString(namespaceUriAttr));

                int nameAttr = reader.readInt();
                if (nameAttr == -1)
                    log("   name: null");
                else
                    log("   name: %s", stringBlock.getString(nameAttr));

                int valueStr = reader.readInt();
                if (valueStr == -1)
                    log("   valueStr: null");
                else
                    log("   valueStr: %s", stringBlock.getString(valueStr));

                int type = reader.readInt() >> 24;
                log("   type: %d", type);

                int data = reader.readInt();
                String dataString = type == TypedValue.TYPE_STRING ? stringBlock.getString(data) : TypedValue.coerceToString(type, data);
                log("   data: %s", dataString);
                mCountIn.stopRecording();

                Attribute attribute = new Attribute(namespaceUriAttr == -1 ? null : stringBlock.getString(namespaceUriAttr),
                        stringBlock.getString(nameAttr), valueStr, type, dataString);
                attribute.setRawBytes(mCountIn.getRecords());
                attributes.add(attribute);
            }
            StartTagChunk startTagChunk = new StartTagChunk(namespaceUri, stringBlock.getString(name), attributes);
            //
            startTagChunk.setChunkSize(chunkSize);
            startTagChunk.setLineNumber(lineNumber);
            startTagChunk.setUnknown(unknown);
            startTagChunk.setNameIndex(name);
            startTagChunk.setOffset(offset);
            startTagChunk.setAtCount(atCount);
            startTagChunk.setClassAttribute(classAttribute);
            chunkList.add(startTagChunk);
        } catch (IOException e) {
            e.printStackTrace();
            log("parse Start NameSpace Chunk error!");
        }
    }

    private void parseEndTagChunk() {
        log("\nparse End Tag Chunk");
        log("chunk type: 0x%x", Xml.END_TAG_CHUNK_TYPE);
        try {
            mCountIn.startRecording();
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

//            reader.skipBytes(4); // 0xffffffff
            reader.readInt(); // 0xffffffff

            int namespaceUri = reader.readInt();
            if (namespaceUri == -1)
                log("namespace uri: null");
            else
                log("namespace uri: %s", stringBlock.getString(namespaceUri));

            int name = reader.readInt();
            log("name: %s", stringBlock.getString(name));
            mCountIn.stopRecording();

            EndTagChunk endTagChunk = new EndTagChunk(namespaceUri, stringBlock.getString(name));
            endTagChunk.setRawBytes(mCountIn.getRecords());
            chunkList.add(endTagChunk);
        } catch (IOException e) {
            e.printStackTrace();
            log("parse End Tag Chunk error!");
        }
    }

    private void parseEndNamespaceChunk() {
        log("\nparse End NameSpace Chunk");
        log("chunk type: 0x%x", Xml.END_NAMESPACE_CHUNK_TYPE);

        try {
            mCountIn.startRecording();
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

//            reader.skipBytes(4); // 0xffffffff
            reader.readInt();

            int prefix = reader.readInt();
            log("prefix: %s", stringBlock.getString(prefix));

            int uri = reader.readInt();
            log("uri: %s", stringBlock.getString(uri));
            mCountIn.stopRecording();
            EndNameSpaceChunk endNameSpaceChunk = new EndNameSpaceChunk(chunkSize, lineNumber, prefix, uri);
            endNameSpaceChunk.setRawBytes(mCountIn.getRecords());
            chunkList.add(endNameSpaceChunk);

            Xml.nameSpaceMap.put(stringBlock.getString(prefix), stringBlock.getString(uri));
        } catch (IOException e) {
            e.printStackTrace();
            log("parse End NameSpace Chunk error!");
        }
    }

    private void parseTextChunk() {
        log("\nparse Text Chunk");
    }

    private void generateXml() {
        Xml xml = new Xml(stringBlock, null, chunkList);
        System.out.println(xml.toString());
    }

    public static String format(String format, Object... params) {
        return String.format(format, params);
    }

    public static String getNamespacePrefix(String prefix) {
        if (prefix == null || prefix.length() == 0) {
            return "";
        }
        return prefix + ":";
    }

    public static byte[] moveBlank(byte[] data) {
        List<Byte> byteList = new ArrayList<>();
        for (Byte b : data) {
            if (b != 0) byteList.add(b);
        }
        byte[] result = new byte[byteList.size()];
        for (int i = 0; i < result.length; i++)
            result[i] = byteList.get(i);
        return result;
    }

}
