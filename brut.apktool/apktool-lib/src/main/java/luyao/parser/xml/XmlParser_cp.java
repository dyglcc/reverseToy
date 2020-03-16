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
import java.util.Objects;

import static luyao.parser.utils.Reader.log;

/**
 * Created by luyao
 * on 2018/12/14 10:00
 */
public class XmlParser_cp {
    public static void main(String... args) throws IOException {

        System.out.println("hello");
//        XmlParser xmlParser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res/layout/loginpage.xml"));
//        XmlParser xmlParser = new XmlParser(new FileInputStream("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml"));
//        xmlParser.parse();
        File dir = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/res/layout");
        for(File file01: Objects.requireNonNull(dir.listFiles())){
            XmlParser_cp xmlParser = new XmlParser_cp(new FileInputStream(file01));
            xmlParser.parse();
        }

    }
    private StringBlock stringBlock;
    private List<Chunk> chunkList = new ArrayList<>();
    private RecordCountingInputStream mCountIn;
    private ExtDataInput reader;
    private int count;

    public XmlParser_cp(InputStream inputStream) {
        inputStream = mCountIn = new RecordCountingInputStream(inputStream);
        reader = new ExtDataInput((DataInput) new LittleEndianDataInputStream(inputStream));
    }

    public void parse() throws IOException {
        count = mCountIn.getCount();
        parseHeader();
        parseStringChunk();
        parseResourceIdChunk();
        parseXmlContentChunk();
        generateXml();
    }

    private int size;

    private void parseHeader() {
        try {
            Xml.nameSpaceMap.clear();
            int magicNumber = reader.readInt();
            log("magic number: %s", Integer.toHexString(magicNumber));

            size = reader.readInt();
            log("file size: %d", size);
        } catch (IOException e) {
            e.printStackTrace();
            log("parse header error!");
        }
    }

    private void parseStringChunk() throws IOException {
        stringBlock = StringBlock.read_apktool(reader);
    }

    private void parseResourceIdChunk() {
        try {
            int chunkType = reader.readInt();

            log("chunk type: %s", Integer.toHexString(chunkType));

            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int resourcesIdChunkCount = (chunkSize - 8) / 4;
            for (int i = 0; i < resourcesIdChunkCount; i++) {
                int resourcesId = reader.readInt();
                log("resource id[%d]: %s", i, Integer.toHexString(resourcesId));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
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
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

            reader.skipBytes(4); // 0xffffffff

            int prefix = reader.readInt();
            log("prefix: %s", stringBlock.getString(prefix));

            int uri = reader.readInt();
            log("uri: %s", stringBlock.getString(uri));

            StartNameSpaceChunk startNameSpaceChunk = new StartNameSpaceChunk(chunkSize, lineNumber, prefix, uri);
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

            reader.skipBytes(4); // 0xffffffff

            int namespaceUri = reader.readInt();
            if (namespaceUri == -1)
                log("namespace uri: null");
            else
                log("namespace uri: %s", stringBlock.getString(namespaceUri));

            int name = reader.readInt();
            log("name: %s", stringBlock.getString(name));

            reader.skipBytes(4); // flag 0x00140014

            int attributeCount = reader.readInt();
            attributeCount &= 0xFFFF;
            log("attributeCount: %d", attributeCount);

            int classAttribute = reader.readInt();
            log("class attribute: %s", classAttribute);

            List<Attribute> attributes = new ArrayList<>();
            // 每个 attribute 五个属性，每个属性 4 字节
            for (int i = 0; i < attributeCount; i++) {

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

                Attribute attribute = new Attribute(namespaceUriAttr == -1 ? null : stringBlock.getString(namespaceUriAttr),
                        stringBlock.getString(nameAttr), valueStr, type, dataString);
                attributes.add(attribute);
            }
            StartTagChunk startTagChunk = new StartTagChunk(namespaceUri, stringBlock.getString(name), attributes);
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
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

            reader.skipBytes(4); // 0xffffffff

            int namespaceUri = reader.readInt();
            if (namespaceUri == -1)
                log("namespace uri: null");
            else
                log("namespace uri: %s", stringBlock.getString(namespaceUri));

            int name = reader.readInt();
            log("name: %s", stringBlock.getString(name));

            EndTagChunk endTagChunk = new EndTagChunk(namespaceUri, stringBlock.getString(name));
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
            int chunkSize = reader.readInt();
            log("chunk size: %d", chunkSize);

            int lineNumber = reader.readInt();
            log("line number: %d", lineNumber);

            reader.skipBytes(4); // 0xffffffff

            int prefix = reader.readInt();
            log("prefix: %s", stringBlock.getString(prefix));

            int uri = reader.readInt();
            log("uri: %s", stringBlock.getString(uri));

            EndNameSpaceChunk endNameSpaceChunk = new EndNameSpaceChunk(chunkSize, lineNumber, prefix, uri);
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
