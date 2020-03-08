package com.appadhoc.reversetoy.aar;

import brut.androlib.res.data.ResConfigFlags;

public class ConfigFlagRaw {
    private String configName;

    public int getEntryCount() {
        return entryCount;
    }

    public void setEntryCount(int entryCount) {
        this.entryCount = entryCount;
    }

    private int entryCount;
    private ResConfigFlags configFlags;
    private int[] entryOffsets;

    public String getConfigName() {
        return configName;
    }

    public void setConfigName(String configName) {
        this.configName = configName;
    }

    public ResConfigFlags getConfigFlags() {
        return configFlags;
    }

    public void setConfigFlags(ResConfigFlags configFlags) {
        this.configFlags = configFlags;
    }


    public void setEntryOffsets(int[] entryOffsets) {
        this.entryOffsets = entryOffsets;
    }
    public int[] getEntryOffsets(){
        return entryOffsets;
    }
}
