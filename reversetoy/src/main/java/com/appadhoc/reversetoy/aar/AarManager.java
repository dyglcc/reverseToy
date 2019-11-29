package com.appadhoc.reversetoy;


import brut.androlib.Androlib;
import brut.androlib.ApkDecoder;
import brut.androlib.ApkOptions;
import brut.common.BrutException;

import java.io.File;
import java.io.IOException;

public class AarManager {

    private File aarWorkspace;
    // 第一步，解压包到一个临时文件加

    private ExtFile aarFile;

    public void setAarFile(String aarfile) {
        ExtFile aarFile = new ExtFile(aarfile);
        if (aarFile != null) {
            try {
                aarFile.close;
            } catch (Exception e) {
            }
        }
        if (!aarFile.isExists()) {
            throw Exception("aar file not exist");
        }
        this.aarFile = aarFile;
    }

    private createWorkAarworks(){
        if(this.aarWrokspace!=null && aarWorkspace.exist()){
            return;
        }
        if(aarFile == null || !aarFile.exist()){
            throw new Exception("aar file not exist when create tmp file");
            return;
        }
        File file = new File(aarFile.getParent()+"aar/tmp");
        if(!file.exist()){
            file.mkdirs();
            this.aarWorkspace = file;
        }
    }

    private void unzipFile(ExtFile aarFile){



    }

    public void manipulate(String hostPackageName) {




    }
}
