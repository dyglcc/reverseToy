package com.appadhoc.reversetoy;

import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.jar.JarManager;

public class ManagerFactory {
    public static AbstractManager getIToyManager(String filepath){
        if(filepath.endsWith(".jar")){
            return new JarManager(filepath);
        }else if(filepath.endsWith(".aar")){
            return new AarManager(filepath);
        }
        return null;
    }
}
