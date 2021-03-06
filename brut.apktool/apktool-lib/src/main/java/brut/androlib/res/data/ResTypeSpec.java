/**
 * Copyright (C) 2019 Ryszard Wiśniewski <brut.alll@gmail.com>
 * Copyright (C) 2019 Connor Tumbleson <connor.tumbleson@gmail.com>
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package brut.androlib.res.data;

import brut.androlib.AndrolibException;
import brut.androlib.err.UndefinedResObject;
import com.appadhoc.reversetoy.utils.Utils;

import java.util.*;
import java.util.logging.Logger;

/**
 * @author Ryszard Wiśniewski <brut.alll@gmail.com>
 */
public final class ResTypeSpec {

    public static final String RES_TYPE_NAME_ARRAY = "array";
    public static final String RES_TYPE_NAME_PLURALS = "plurals";
    public static final String RES_TYPE_NAME_STYLES = "style";
    public static final String RES_TYPE_NAME_ATTR = "attr";
    private static final Logger LOGGER = Logger.getLogger(ResTypeSpec.class.getName());

    private final String mName;
    private int maxValue;

    public Map<String, ResResSpec> getmResSpecs() {
        return mResSpecs;
    }

    private final Map<String, ResResSpec> mResSpecs = new LinkedHashMap<String, ResResSpec>();

    private final ResTable mResTable;
    private final ResPackage mPackage;

    private int mId;
    private int mEntryCount;

    public void setEntryCount(int count){
        this.mEntryCount = count;
    }
    public ResTypeSpec(String name, ResTable resTable, ResPackage package_, int id, int entryCount) {
        this.mName = name;
        this.mResTable = resTable;
        this.mPackage = package_;
        this.mId = id;
        this.mEntryCount = entryCount;
    }

    public String getName() {
        return mName;
    }

    public int getId() {
        return mId;
    }

    public int getEntryCount() {
        return mEntryCount;
    }

    public boolean isString() {
        return mName.equalsIgnoreCase("string");
    }

    public Set<ResResSpec> listResSpecs() {
        return new LinkedHashSet<ResResSpec>(mResSpecs.values());
    }

    public ResResSpec getResSpec(String name) throws AndrolibException {
        ResResSpec spec = getResSpecUnsafe(name);
        if (spec == null) {
            throw new UndefinedResObject(String.format("resource spec: %s/%s", getName(), name));
        }
        return spec;
    }

    public ResResSpec getResSpecUnsafe(String name) {
        return mResSpecs.get(name);
    }

    public void removeResSpec(ResResSpec spec) throws AndrolibException {
        mResSpecs.remove(spec.getName());
    }

    public void addResSpec(ResResSpec spec) throws AndrolibException {
        if (mResSpecs.put(spec.getName(), spec) != null) {
            throw new AndrolibException(String.format("Multiple res specs: %s/%s", getName(), spec.getName()));
        }
//        LOGGER.info("add ResResSpec" + spec.getName());
    }

    @Override
    public String toString() {
        return mName;
    }

    public boolean hasKey(String key) {
        return mResSpecs.containsKey(key);
    }

    public int getTail() {
        if (maxValue != 0) {
            maxValue++;
            return maxValue;
        }
        for (ResResSpec resResSpec : mResSpecs.values()) {
            if (resResSpec.getId().id > maxValue) {
                maxValue = resResSpec.getId().id;
            }
        }
        return maxValue;
    }

    public void setMaxValue() {
        if ("mipmap".equals(getName())) {
            maxValue = Utils.IDUtils.getMipmapStartId();
        } else if ("drawable".equals(getName())) {
            maxValue = Utils.IDUtils.getDrawableStartId();
        } else if ("string".equals(getName())) {
            maxValue = Utils.IDUtils.getStringStartId();
        }
        // 遇到了再添加
    }

    public byte[] getSkipRawBytes() {
        return skipRawBytes;
    }

    private byte[] skipRawBytes;

    public LinkedHashMap<ResConfigFlags, ResResource> getRawConfigs() {
        return rawConfigs;
    }

    private LinkedHashMap<ResConfigFlags,ResResource>  rawConfigs = new LinkedHashMap();
    public void setSkipRawBytes(byte[] skipRawBytes) {
        this.skipRawBytes = skipRawBytes;
    }

    public void setId(int newId) {
        mId = newId;
    }
}
