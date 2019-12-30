package com.appadhoc.reversetoy;

import brut.util.Jar;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.jar.JarManager;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ManagerFactory {
    public static List<AbstractManager> getIToyManager(String filepath) throws Exception {
        List<AbstractManager> managers = new ArrayList<>();
        File sdks = new File(filepath);
        if (!sdks.exists()) {
            throw new Exception("input SDK file not exist");
        }
        if (sdks.isFile()) {
            if (sdks.getName().endsWith(".aar")) {
                managers.add(new AarManager(filepath));
            } else if (sdks.getName().endsWith(".jar")) {
                managers.add(new JarManager(filepath));
            } else {
                throw new Exception("sdk文件类型异常，请检查是否是aar或者jar");
            }
        } else {
            for (File sub_file : Objects.requireNonNull(sdks.listFiles())) {
                if(sub_file.isFile()){
                    if (sub_file.getName().endsWith(".aar")) {
                        managers.add(new AarManager(sub_file.getAbsolutePath()));
                    } else if (sub_file.getName().endsWith(".jar")) {
                        managers.add(new JarManager(sub_file.getAbsolutePath()));
                    }
                }
            }
        }

        boolean haveAar = false;
        boolean haveJar = false;
        for (AbstractManager manager : managers) {
            if (manager instanceof AarManager) {
                haveAar = true;
            } else if (manager instanceof JarManager) {
                haveJar = true;
            }
        }
        if (haveAar && haveJar) {
            throw new Exception("只能处理一种类型的sdk，要么是路径下面全部是aar要么全部是jar");
        }
        return managers;
    }
}
