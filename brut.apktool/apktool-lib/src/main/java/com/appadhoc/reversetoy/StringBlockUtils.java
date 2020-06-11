package com.appadhoc.reversetoy;

import brut.androlib.res.decoder.StringBlock;

import java.nio.charset.StandardCharsets;

public class StringBlockUtils {
    public static int addSingleString2StringBlockTail(StringBlock hostStringBlock, String str) throws Exception {
        int flags = hostStringBlock.getFlags();
        byte[] strBytes;
        byte[] m_stringsOld = hostStringBlock.getM_strings();
        int[] m_stringOffsetOld = hostStringBlock.getM_stringOffsets();
        int[] newStringOffset = new int[m_stringOffsetOld.length + 1];
        byte[] newStrings;
        System.arraycopy(m_stringOffsetOld, 0, newStringOffset, 0, m_stringOffsetOld.length);
        int remain = 0;
        if (flags == 256) { // utf8
            strBytes = str.getBytes(StandardCharsets.UTF_8);
            int allLen = m_stringsOld.length + strBytes.length + 3;
            if (allLen % 4 != 0) {
                remain = 4 - (allLen % 4);
                allLen += remain;
            }
            newStrings = new byte[allLen];
            System.arraycopy(m_stringsOld, 0, newStrings, 0, m_stringsOld.length);

            writeSingleStrBytesUTF8(strBytes, newStrings, m_stringsOld.length, str.length());
        } else {
            strBytes = str.getBytes(StandardCharsets.UTF_16LE);
            int allLen = m_stringsOld.length + strBytes.length + 4;
            if (allLen % 4 != 0) {
                remain = 4 - (allLen % 4);
                allLen += remain;
            }
            newStrings = new byte[allLen];
            System.arraycopy(m_stringsOld, 0, newStrings, 0, m_stringsOld.length);

            writeSingleStrBytesUTF16LE(strBytes, newStrings, m_stringsOld.length, str.length());
        }
        // offsets
        newStringOffset[m_stringOffsetOld.length] = m_stringsOld.length;
        // combine merge offset
        hostStringBlock.setM_strings(newStrings);
        hostStringBlock.setM_stringOffsets(newStringOffset);
        return m_stringOffsetOld.length;
    }

    public static void reEncode2UTF16(StringBlock aarStringBlock) {
        int[] offsets = aarStringBlock.getM_stringOffsets();
        String[] strings = new String[offsets.length];
        int byteCounts = offsets.length * 4;
        for (int i = 0; i < offsets.length; i++) {
            strings[i] = aarStringBlock.getString(i);
            byteCounts += strings[i].getBytes(StandardCharsets.UTF_16LE).length;
        }
        byte[] newStrings = new byte[byteCounts];
        int[] newOffset = new int[offsets.length];
        for (int i = 0, offset = 0; i < newOffset.length; i++) {
            newOffset[i] = offset;
            byte[] strBytes = strings[i].getBytes(StandardCharsets.UTF_16LE);
            writeSingleStrBytesUTF16LE(strBytes, newStrings, offset, strings[i].length());
            offset += strBytes.length + 4;
        }
        aarStringBlock.setM_strings(newStrings);
        aarStringBlock.setM_stringOffsets(newOffset);
        aarStringBlock.setFlags(0);
        aarStringBlock.m_isUTF8 = false;
    }

    public static void reEncode2UTF8(StringBlock aarStringBlock) {
        int[] offsets = aarStringBlock.getM_stringOffsets();
        String[] strings = new String[offsets.length];
        int byteCounts = offsets.length * 3;
        for (int i = 0; i < offsets.length; i++) {
            strings[i] = aarStringBlock.getString(i);
            byteCounts += strings[i].getBytes(StandardCharsets.UTF_8).length;
        }
        byte[] newStrings = new byte[byteCounts];
        int[] newOffset = new int[offsets.length];
        for (int i = 0, offset = 0; i < newOffset.length; i++) {
            newOffset[i] = offset;
            byte[] strBytes = strings[i].getBytes(StandardCharsets.UTF_8);
            writeSingleStrBytesUTF8(strBytes, newStrings, offset, strings[i].length());
            offset += strBytes.length + 3;
        }
        aarStringBlock.setM_strings(newStrings);
        aarStringBlock.setM_stringOffsets(newOffset);
        aarStringBlock.setFlags(256);
        aarStringBlock.m_isUTF8 = true;
    }

    private static void writeSingleStrBytesUTF16LE(byte[] strBytes, byte[] newStrings, int offset, int nameLen) {
        int len = strBytes.length;
        byte high = (byte) ((nameLen & 0xff) >> 8);
        byte low = (byte) nameLen;
        newStrings[offset] = low;
        newStrings[offset + 1] = high;
        System.arraycopy(strBytes, 0, newStrings, offset + 2, strBytes.length);
        newStrings[offset + len + 2] = 0;
        newStrings[offset + len + 3] = 0;
    }

    private static void writeSingleStrBytesUTF8(byte[] strBytes, byte[] newStrings, int offset, int charLen) {
        int len = strBytes.length;
        newStrings[offset] = (byte) charLen;
        newStrings[offset + 1] = (byte) charLen;
        System.arraycopy(strBytes, 0, newStrings, offset + 2, strBytes.length);
        newStrings[offset + len + 2] = 0;
    }
}
