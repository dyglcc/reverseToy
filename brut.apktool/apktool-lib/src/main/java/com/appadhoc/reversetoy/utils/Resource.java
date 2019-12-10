package com.appadhoc.reversetoy.utils;

import brut.common.BrutException;
import brut.util.Jar;
import org.apache.commons.io.IOUtils;

import java.io.*;

public class Resource {

//    public static File extractToTmp(String resourcePath, String tmpPrefix, Class clazz) throws BrutException {
//        try {
//            InputStream in = clazz.getResourceAsStream(resourcePath);
//            if (in == null) {
//                throw new FileNotFoundException(resourcePath);
//            }
//            File fileOut = File.createTempFile(tmpPrefix, null);
//            fileOut.deleteOnExit();
//            OutputStream out = new FileOutputStream(fileOut);
//            IOUtils.copy(in, out);
//            in.close();
//            out.close();
//            return fileOut;
//        } catch (IOException ex) {
//            throw new BrutException("Could not extract resource: " + resourcePath, ex);
//        }
//    }

    public static File getResourceAsFile(String path, Class clazz) throws BrutException {
        return extractToTmp(path, clazz);
    }

    public static File extractToTmp(String resourcePath, Class clazz) throws BrutException {
        File in = new File(clazz.getResource(resourcePath).getFile());
        return in;
    }
}
