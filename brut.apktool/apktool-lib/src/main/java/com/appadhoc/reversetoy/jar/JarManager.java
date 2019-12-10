package com.appadhoc.reversetoy.jar;

import brut.androlib.res.data.ResTable;
import brut.common.BrutException;
import brut.util.OS;
import com.appadhoc.reversetoy.AbstractManager;
import com.appadhoc.reversetoy.utils.Utils;

import java.io.File;
import java.util.logging.Logger;

public class JarManager extends AbstractManager {
    private final static Logger LOGGER = Logger.getLogger(JarManager.class.getName());
    private File hostdir;
    private File jarFile = null;

    public JarManager(String jarFile){
        try {
            setJarFile(jarFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setJarFile(String aarfile) throws Exception {
        jarFile = new File(aarfile);
        if (!jarFile.exists()) {
            throw new Exception("jar file not exist");
        }
    }
    public void smaliClass() throws Exception {
        File workDir = getWorkDir();
        File dexFile = Utils.BuildPackage.dx2dexfiles(workDir,JarManager.class);
        Utils.BuildPackage.all2Smali(hostdir,dexFile,JarManager.class);
    }

    private File getWorkDir() throws BrutException {
        File workDir = new File(jarFile.getAbsolutePath().replaceFirst("\\.[^.]+$",""));
        if(workDir.exists()){
            OS.rmdir(workDir);
        }
        workDir.mkdirs();
        return workDir;
    }

    @Override
    public void setHostPackageName(String packageNmae) {

    }

    @Override
    public void preCombin(File outputdir) {
    }

    @Override
    public void addAarids2ResTable(ResTable resTable) {

    }

    @Override
    public void addIDs2HostFile(File apkOutFile) {

    }

    @Override
    public File smaliClassFilesAndModifyids(File hostdir) {
        try {
            smaliClass();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void setHostDir(File hostDir) throws Exception {
        if(hostdir == null || !hostdir.exists()){
            throw new Exception("out put dir not exist");
        }
        this.hostdir = hostdir;
    }
}
