package com.reverse.stub;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

import dalvik.system.DexFile;

public final class MultiDex {
    static final String TAG = "MultiDex";
    private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final String CODE_CACHE_NAME = "code_cache";
    private static final String CODE_CACHE_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final int MAX_SUPPORTED_SDK_VERSION = 20;
    private static final int MIN_SDK_VERSION = 4;
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static final String NO_KEY_PREFIX = "";
    private static final Set<File> installedApk = new HashSet();
    private static final boolean IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));

    private MultiDex() {
    }

    public static void install(Context context) {
        Log.i("MultiDex", "Installing application");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (VERSION.SDK_INT < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        } else {
            try {
                ApplicationInfo applicationInfo = getApplicationInfo(context);
                if (applicationInfo == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }

                doInstallation(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
            } catch (Exception var2) {
                Log.e("MultiDex", "MultiDex installation failure", var2);
                throw new RuntimeException("MultiDex installation failed (" + var2.getMessage() + ").");
            }

            Log.i("MultiDex", "install done");
        }
    }

    public static void installInstrumentation(Context instrumentationContext, Context targetContext) {
        Log.i("MultiDex", "Installing instrumentation");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (VERSION.SDK_INT < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        } else {
            try {
                ApplicationInfo instrumentationInfo = getApplicationInfo(instrumentationContext);
                if (instrumentationInfo == null) {
                    Log.i("MultiDex", "No ApplicationInfo available for instrumentation, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }

                ApplicationInfo applicationInfo = getApplicationInfo(targetContext);
                if (applicationInfo == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }

                String instrumentationPrefix = instrumentationContext.getPackageName() + ".";
                File dataDir = new File(applicationInfo.dataDir);
                doInstallation(targetContext, new File(instrumentationInfo.sourceDir), dataDir, instrumentationPrefix + "secondary-dexes", instrumentationPrefix, false);
                doInstallation(targetContext, new File(applicationInfo.sourceDir), dataDir, "secondary-dexes", "", false);
            } catch (Exception var6) {
                Log.e("MultiDex", "MultiDex installation failure", var6);
                throw new RuntimeException("MultiDex installation failed (" + var6.getMessage() + ").");
            }

            Log.i("MultiDex", "Installation done");
        }
    }

    private static void doInstallation(Context mainContext, File sourceApk, File dataDir, String secondaryFolderName, String prefsKeyPrefix, boolean reinstallOnPatchRecoverableException) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        synchronized(installedApk) {
            if (!installedApk.contains(sourceApk)) {
                installedApk.add(sourceApk);
                if (VERSION.SDK_INT > 20) {
                    Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + VERSION.SDK_INT + ": SDK version higher than " + 20 + " should be backed by " + "runtime with built-in multidex capabilty but it's not the " + "case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
                }

                ClassLoader loader;
                try {
                    loader = mainContext.getClassLoader();
                } catch (RuntimeException var25) {
                    Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", var25);
                    return;
                }

                if (loader == null) {
                    Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                } else {
                    try {
                        clearOldDexDir(mainContext);
                    } catch (Throwable var24) {
                        Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", var24);
                    }

                    File dexDir = getDexDir(mainContext, dataDir, secondaryFolderName);
                    MultiDexExtractor extractor = new MultiDexExtractor(sourceApk, dexDir);
                    IOException closeException = null;

                    try {
                        List files = extractor.load(mainContext, prefsKeyPrefix, false);

                        try {
                            installSecondaryDexes(loader, dexDir, files);
                        } catch (IOException var26) {
                            if (!reinstallOnPatchRecoverableException) {
                                throw var26;
                            }

                            Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", var26);
                            files = extractor.load(mainContext, prefsKeyPrefix, true);
                            installSecondaryDexes(loader, dexDir, files);
                        }
                    } finally {
                        try {
                            extractor.close();
                        } catch (IOException var23) {
                            closeException = var23;
                        }

                    }

                    if (closeException != null) {
                        throw closeException;
                    }
                }
            }
        }
    }

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException var2) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", var2);
            return null;
        }
    }

    static boolean isVMMultidexCapable(String versionString) {
        boolean isMultidexCapable = false;
        if (versionString != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(versionString);
            if (matcher.matches()) {
                try {
                    int major = Integer.parseInt(matcher.group(1));
                    int minor = Integer.parseInt(matcher.group(2));
                    isMultidexCapable = major > 2 || major == 2 && minor >= 1;
                } catch (NumberFormatException var5) {
                }
            }
        }

        Log.i("MultiDex", "VM with version " + versionString + (isMultidexCapable ? " has multidex support" : " does not have multidex support"));
        return isMultidexCapable;
    }

    private static void installSecondaryDexes(ClassLoader loader, File dexDir, List<? extends File> files) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (!files.isEmpty()) {
            if (VERSION.SDK_INT >= 19) {
                MultiDex.V19.install(loader, files, dexDir);
            } else if (VERSION.SDK_INT >= 14) {
                MultiDex.V14.install(loader, files);
            } else {
                MultiDex.V4.install(loader, files);
            }
        }

    }

    private static Field findField(Object instance, String name) throws NoSuchFieldException {
        Class clazz = instance.getClass();

        while(clazz != null) {
            try {
                Field field = clazz.getDeclaredField(name);
                if (!field.isAccessible()) {
                    field.setAccessible(true);
                }

                return field;
            } catch (NoSuchFieldException var4) {
                clazz = clazz.getSuperclass();
            }
        }

        throw new NoSuchFieldException("Field " + name + " not found in " + instance.getClass());
    }

    private static Method findMethod(Object instance, String name, Class<?>... parameterTypes) throws NoSuchMethodException {
        Class clazz = instance.getClass();

        while(clazz != null) {
            try {
                Method method = clazz.getDeclaredMethod(name, parameterTypes);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }

                return method;
            } catch (NoSuchMethodException var5) {
                clazz = clazz.getSuperclass();
            }
        }

        throw new NoSuchMethodException("Method " + name + " with parameters " + Arrays.asList(parameterTypes) + " not found in " + instance.getClass());
    }

    private static void expandFieldArray(Object instance, String fieldName, Object[] extraElements) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field jlrField = findField(instance, fieldName);
        Object[] original = (Object[])((Object[])jlrField.get(instance));
        Object[] combined = (Object[])((Object[])Array.newInstance(original.getClass().getComponentType(), original.length + extraElements.length));
        System.arraycopy(original, 0, combined, 0, original.length);
        System.arraycopy(extraElements, 0, combined, original.length, extraElements.length);
        jlrField.set(instance, combined);
    }

    private static void clearOldDexDir(Context context) throws Exception {
        File dexDir = new File(context.getFilesDir(), "secondary-dexes");
        if (dexDir.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + dexDir.getPath() + ").");
            File[] files = dexDir.listFiles();
            if (files == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + dexDir.getPath() + ").");
                return;
            }

            File[] var3 = files;
            int var4 = files.length;

            for(int var5 = 0; var5 < var4; ++var5) {
                File oldFile = var3[var5];
                Log.i("MultiDex", "Trying to delete old file " + oldFile.getPath() + " of size " + oldFile.length());
                if (!oldFile.delete()) {
                    Log.w("MultiDex", "Failed to delete old file " + oldFile.getPath());
                } else {
                    Log.i("MultiDex", "Deleted old file " + oldFile.getPath());
                }
            }

            if (!dexDir.delete()) {
                Log.w("MultiDex", "Failed to delete secondary dex dir " + dexDir.getPath());
            } else {
                Log.i("MultiDex", "Deleted old secondary dex dir " + dexDir.getPath());
            }
        }

    }

    private static File getDexDir(Context context, File dataDir, String secondaryFolderName) throws IOException {
        File cache = new File(dataDir, "code_cache");

        try {
            mkdirChecked(cache);
        } catch (IOException var5) {
            cache = new File(context.getFilesDir(), "code_cache");
            mkdirChecked(cache);
        }

        File dexDir = new File(cache, secondaryFolderName);
        mkdirChecked(dexDir);
        return dexDir;
    }

    private static void mkdirChecked(File dir) throws IOException {
        dir.mkdir();
        if (!dir.isDirectory()) {
            File parent = dir.getParentFile();
            if (parent == null) {
                Log.e("MultiDex", "Failed to create dir " + dir.getPath() + ". Parent file is null.");
            } else {
                Log.e("MultiDex", "Failed to create dir " + dir.getPath() + ". parent file is a dir " + parent.isDirectory() + ", a file " + parent.isFile() + ", exists " + parent.exists() + ", readable " + parent.canRead() + ", writable " + parent.canWrite());
            }

            throw new IOException("Failed to create directory " + dir.getPath());
        }
    }

    private static final class V4 {
        private V4() {
        }

        static void install(ClassLoader loader, List<? extends File> additionalClassPathEntries) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int extraSize = additionalClassPathEntries.size();
            Field pathField = MultiDex.findField(loader, "path");
            StringBuilder path = new StringBuilder((String)pathField.get(loader));
            String[] extraPaths = new String[extraSize];
            File[] extraFiles = new File[extraSize];
            ZipFile[] extraZips = new ZipFile[extraSize];
            DexFile[] extraDexs = new DexFile[extraSize];

            String entryPath;
            int index;
            for(ListIterator iterator = additionalClassPathEntries.listIterator(); iterator.hasNext(); extraDexs[index] = DexFile.loadDex(entryPath, entryPath + ".dex", 0)) {
                File additionalEntry = (File)iterator.next();
                entryPath = additionalEntry.getAbsolutePath();
                path.append(':').append(entryPath);
                index = iterator.previousIndex();
                extraPaths[index] = entryPath;
                extraFiles[index] = additionalEntry;
                extraZips[index] = new ZipFile(additionalEntry);
            }

            pathField.set(loader, path.toString());
            MultiDex.expandFieldArray(loader, "mPaths", extraPaths);
            MultiDex.expandFieldArray(loader, "mFiles", extraFiles);
            MultiDex.expandFieldArray(loader, "mZips", extraZips);
            MultiDex.expandFieldArray(loader, "mDexs", extraDexs);
        }
    }

    private static final class V14 {
        private static final int EXTRACTED_SUFFIX_LENGTH = ".zip".length();
        private final MultiDex.V14.ElementConstructor elementConstructor;

        static void install(ClassLoader loader, List<? extends File> additionalClassPathEntries) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Field pathListField = MultiDex.findField(loader, "pathList");
            Object dexPathList = pathListField.get(loader);
            Object[] elements = (new MultiDex.V14()).makeDexElements(additionalClassPathEntries);

            try {
                MultiDex.expandFieldArray(dexPathList, "dexElements", elements);
            } catch (NoSuchFieldException var6) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", var6);
                MultiDex.expandFieldArray(dexPathList, "pathElements", elements);
            }

        }

        private V14() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            Class elementClass = Class.forName("dalvik.system.DexPathList$Element");

            Object constructor;
            try {
                constructor = new MultiDex.V14.ICSElementConstructor(elementClass);
            } catch (NoSuchMethodException var6) {
                try {
                    constructor = new MultiDex.V14.JBMR11ElementConstructor(elementClass);
                } catch (NoSuchMethodException var5) {
                    constructor = new MultiDex.V14.JBMR2ElementConstructor(elementClass);
                }
            }

            this.elementConstructor = (MultiDex.V14.ElementConstructor)constructor;
        }

        private Object[] makeDexElements(List<? extends File> files) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            Object[] elements = new Object[files.size()];

            for(int i = 0; i < elements.length; ++i) {
                File file = (File)files.get(i);
                elements[i] = this.elementConstructor.newInstance(file, DexFile.loadDex(file.getPath(), optimizedPathFor(file), 0));
            }

            return elements;
        }

        private static String optimizedPathFor(File path) {
            File optimizedDirectory = path.getParentFile();
            String fileName = path.getName();
            String optimizedFileName = fileName.substring(0, fileName.length() - EXTRACTED_SUFFIX_LENGTH) + ".dex";
            File result = new File(optimizedDirectory, optimizedFileName);
            return result.getPath();
        }

        private static class JBMR2ElementConstructor implements MultiDex.V14.ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR2ElementConstructor(Class<?> elementClass) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = elementClass.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dex) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(file, Boolean.FALSE, file, dex);
            }
        }

        private static class JBMR11ElementConstructor implements MultiDex.V14.ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR11ElementConstructor(Class<?> elementClass) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = elementClass.getConstructor(File.class, File.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dex) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(file, file, dex);
            }
        }

        private static class ICSElementConstructor implements MultiDex.V14.ElementConstructor {
            private final Constructor<?> elementConstructor;

            ICSElementConstructor(Class<?> elementClass) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = elementClass.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dex) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.elementConstructor.newInstance(file, new ZipFile(file), dex);
            }
        }

        private interface ElementConstructor {
            Object newInstance(File var1, DexFile var2) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }
    }

    private static final class V19 {
        private V19() {
        }

        static void install(ClassLoader loader, List<? extends File> additionalClassPathEntries, File optimizedDirectory) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            Field pathListField = MultiDex.findField(loader, "pathList");
            Object dexPathList = pathListField.get(loader);
            ArrayList<IOException> suppressedExceptions = new ArrayList();
            MultiDex.expandFieldArray(dexPathList, "dexElements", makeDexElements(dexPathList, new ArrayList(additionalClassPathEntries), optimizedDirectory, suppressedExceptions));
            if (suppressedExceptions.size() > 0) {
                Iterator var6 = suppressedExceptions.iterator();

                while(var6.hasNext()) {
                    IOException e = (IOException)var6.next();
                    Log.w("MultiDex", "Exception in makeDexElement", e);
                }

                Field suppressedExceptionsField = MultiDex.findField(dexPathList, "dexElementsSuppressedExceptions");
                IOException[] dexElementsSuppressedExceptions = (IOException[])((IOException[])suppressedExceptionsField.get(dexPathList));
                if (dexElementsSuppressedExceptions == null) {
                    dexElementsSuppressedExceptions = (IOException[])suppressedExceptions.toArray(new IOException[suppressedExceptions.size()]);
                } else {
                    IOException[] combined = new IOException[suppressedExceptions.size() + dexElementsSuppressedExceptions.length];
                    suppressedExceptions.toArray(combined);
                    System.arraycopy(dexElementsSuppressedExceptions, 0, combined, suppressedExceptions.size(), dexElementsSuppressedExceptions.length);
                    dexElementsSuppressedExceptions = combined;
                }

                suppressedExceptionsField.set(dexPathList, dexElementsSuppressedExceptions);
                IOException exception = new IOException("I/O exception during makeDexElement");
                exception.initCause((Throwable)suppressedExceptions.get(0));
                throw exception;
            }
        }

        private static Object[] makeDexElements(Object dexPathList, ArrayList<File> files, File optimizedDirectory, ArrayList<IOException> suppressedExceptions) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            Method makeDexElements = MultiDex.findMethod(dexPathList, "makeDexElements", ArrayList.class, File.class, ArrayList.class);
            return (Object[])((Object[])makeDexElements.invoke(dexPathList, files, optimizedDirectory, suppressedExceptions));
        }
    }
}
