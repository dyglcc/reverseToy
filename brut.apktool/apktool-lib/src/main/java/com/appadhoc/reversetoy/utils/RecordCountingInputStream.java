package com.appadhoc.reversetoy.utils;

import org.apache.commons.io.input.CountingInputStream;

import java.io.IOException;
import java.io.InputStream;

public class RecordCountingInputStream extends CountingInputStream {
    /**
     * Creates a {@code LittleEndianDataInputStream} that wraps the given stream.
     *
     * @param in the stream to delegate to
     */
    public RecordCountingInputStream(InputStream in) {
        super(in);
    }

    private byte[] records;
    private boolean recording;

    public void startRecording() {
        recording = true;
        records = null;
    }

    public void stopRecording() {
        recording = false;
    }

    public int read() throws IOException {
        int value = super.read();
        if(recording){
            if(records == null){
                records = new byte[1];
                records[0] = (byte) value;
            }else{
                int len = records.length;
                byte[] newArray = new byte[len + 1];
                System.arraycopy(records,0,newArray,0,len);
                newArray[len] = (byte) value;
                records = newArray;
            }
        }
        return value;
    }

    public int read(byte[] bts) throws IOException {
        int n = super.read(bts);
        if(records == null){
            records = new byte[n];
            System.arraycopy(bts,0,records,0,n);
        }else{
            int len = records.length;
            byte[] newArray = new byte[len+n];
            System.arraycopy(records,0,newArray,0,len);
            System.arraycopy(bts,0,newArray,len,n);
            records = newArray;
        }
        return n;
    }

    public int read(byte[] bts, int off, int len) throws IOException {
        int n = super.read(bts,off,len);
        if(records == null){
            records = new byte[len];
            System.arraycopy(bts,off,records,0,len);
        }else {
            int re_len = records.length;
            byte[] newArray = new byte[re_len+len];
            System.arraycopy(records,0,newArray,0,re_len);
            System.arraycopy(bts,off,newArray,re_len,len);
            records = newArray;
        }
        return n;
    }
    public byte[] getRecords(){
        return  records;
    }
}
