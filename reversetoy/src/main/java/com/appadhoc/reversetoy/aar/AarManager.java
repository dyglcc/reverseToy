package com.appadhoc.reversetoy.aar;


import brut.directory.ExtFile;

import java.io.File;

public class AarManager {

    private File aarWorkspace;

    public String getHostPackageName() {
        return hostPackageName;
    }

    private String hostPackageName;
    // 第一步，解压包到一个临时文件加

    private ExtFile aarFile;

    public void setAarFile(String aarfile) throws Exception {
        ExtFile aarFile = new ExtFile(aarfile);
        if (aarFile != null) {
            try {
                aarFile.close();
            } catch (Exception e) {
            }
        }
        if (!aarFile.exists()) {
            throw new Exception("aar file not exist");
        }
        this.aarFile = aarFile;
    }

    private void createWorkAarworks() throws Exception {
        if(this.aarWorkspace!=null && aarWorkspace.exists()){
            return;
        }
        if(aarFile == null || !aarFile.exists()){
            throw new Exception("aar file not exist when create tmp file");
        }
        File file = new File(aarFile.getParent()+"aar/tmp");
        if(!file.exists()){
            file.mkdirs();
            this.aarWorkspace = file;
        }
    }

    private void setHostPackageName(String hostPackageName){
        this.hostPackageName = hostPackageName;
    }

    private void unzipFile(ExtFile aarFile){



    }

    public void manipulate() {


    }
    private void createRjavaFile(){

    }
}
