package luyao.parser.xml.bean.chunk;

/**
 * Created by luyao
 * on 2018/12/14 16:17
 */
public abstract class Chunk {

    int chunkType;
    int chunkSize;
    int lineNumber;

    public byte[] getRawBytes() {
        return rawBytes;
    }

    public void setRawBytes(byte[] rawBytes) {
        this.rawBytes = rawBytes;
    }

    byte[] rawBytes;

    Chunk(int chunkType){
        this.chunkType=chunkType;
    }

    public abstract String toXmlString();
}
