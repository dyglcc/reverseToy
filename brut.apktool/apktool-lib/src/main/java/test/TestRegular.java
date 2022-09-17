package test;

import brut.common.BrutException;
import com.google.common.base.Utf8;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;

public class TestRegular {
    String string ="asdf";
    public static void main(String[] args) throws IOException, BrutException {
        char h = '源';
        char h1 ='a' ;
        String s = new String("🆚".getBytes(), StandardCharsets.UTF_16);

        System.out.println(s.length() + " " + s);
        System.out.println(h1);

    }
}
