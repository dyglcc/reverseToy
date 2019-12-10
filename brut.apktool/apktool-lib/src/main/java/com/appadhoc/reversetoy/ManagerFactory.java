package com.appadhoc.reversetoy;

import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.jar.JarManager;

public class ManagerFactory {
    public static AbstractManager getIToyManager(String filepath){
        if(filepath.endsWith(".aar")){
            return new AarManager(filepath);
        }else { // file dir
            return new JarManager(filepath);
        }
    }
}
