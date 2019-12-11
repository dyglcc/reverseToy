package com.appadhoc.reversetoy.utils;

import brut.common.BrutException;

import java.io.*;

public class Resource {

    public static InputStream getResourceAsStream(String path, Class clazz) throws BrutException {
        return clazz.getResourceAsStream(path);
    }

}
