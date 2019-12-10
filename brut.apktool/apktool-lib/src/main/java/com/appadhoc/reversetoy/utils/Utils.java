package com.appadhoc.reversetoy.utils;

import brut.androlib.AndrolibException;
import brut.common.BrutException;
import brut.util.Jar;
import brut.util.OS;
import brut.util.OSDetection;
import com.appadhoc.reversetoy.aar.AarManager;
import com.appadhoc.reversetoy.data.AarID;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPathExpressionException;
import java.io.*;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import java.util.regex.Matcher;

public class Utils {

    public static <K, V> Map.Entry<K, V> getTailByReflection(LinkedHashMap<K, V> map)
            throws NoSuchFieldException, IllegalAccessException {
        Field tail = map.getClass().getDeclaredField("tail");
        tail.setAccessible(true);
        return (Map.Entry<K, V>) tail.get(map);
    }

    public static String getNameRemovedSuffix(String name) {

        return name.replaceFirst("\\.[^.]+$", "");

    }

    public static class FileUtils {


        public static boolean reNameFile(String srcfile, String newName) throws IOException {
            File file = new File(srcfile);

// File (or directory) with new name
            File destname = new File(newName);

            if (destname.exists()) {
                throw new java.io.IOException("file exists");
            }
            return file.renameTo(destname);
        }


        public static int getMaxIndex(File hostdir) {
            int maxIndex = 1;
            for (File file : hostdir.listFiles()) {
                if (file.getName().contains("smali_classes")) {
                    String index = file.getName().substring(13);
                    if (!index.equals("")) {
                        int intIndex = Integer.parseInt(index);
                        if (intIndex > maxIndex) {
                            maxIndex = intIndex;
                        }
                    }
                }
            }
            return maxIndex;
        }


        public static StringBuilder readStringFromFile(File file) throws IOException {
            BufferedReader br = new BufferedReader(new FileReader(file));
            StringBuilder builder = new StringBuilder();
            String line;
            try {
                while ((line = br.readLine()) != null) {
                    builder.append(line);
                    builder.append("\n");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                br.close();
            }
            return builder;
        }

        public static void writeString2File(File file, String str) throws IOException {
            FileWriter writer = new FileWriter(file);
            writer.write(str);
            writer.close();
        }

    }

    public static class RFileUtils {


        public static StringBuilder smaliFileIdReplace(File file, Map<String, LinkedHashMap> ids) throws IOException {
            if (!file.exists() || file.getName().startsWith(".")) {
                return null;
            }
            String key = getKeyByFileName(file.getName());

            LinkedHashMap<String, AarID> values = ids.get(key);

            BufferedReader br = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            String line;
            try {
                while ((line = br.readLine()) != null) {
                    if (line.contains("field public static final")) {
                        String[] words = line.split(" ");
                        String[] keys = words[4].split(":");
                        AarID integer_value = values.get(keys[0]);
                        words[6] = "0x" + Integer.toHexString(integer_value.getId());
                        StringBuilder s = new StringBuilder();
                        for (int i = 0; i < words.length; i++) {
                            s.append(words[i]).append(" ");
                        }
                        line = s.toString().trim();
                    }
                    sb.append(line).append("\n");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                br.close();
            }
            return sb;
        }

        private static String getKeyByFileName(String name) {
            String pre = name.substring(0, name.indexOf(".smali"));
            return pre.substring(2);
        }


        public static Map<String, LinkedHashMap> readAarIds(File file) throws IOException {
            Map<String, LinkedHashMap> map = new LinkedHashMap<String, LinkedHashMap>();
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            Map<String, AarID> mapValue = null;
            try {
                while ((line = br.readLine()) != null) {
                    if (line.contains("public static final class")) {
                        String type = getIdType(line);
                        if (!map.containsKey(type)) {
                            map.put(type, new LinkedHashMap<String, AarID>());
                        }
                        mapValue = map.get(type);
                    }
                    if (line.contains("public static final int")) {
                        line = line.trim();
                        String[] strings = line.split(" ");
                        if (strings.length >= 4) {
                            String kv = strings[4];
                            kv = kv.replaceFirst(";", "");
                            String[] kvs = kv.split("=");
                            if (kvs.length == 2) {
                                mapValue.put(kvs[0], new AarID(Integer.parseInt(kvs[1].substring(2), 16)));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                br.close();
            }
            return map;
        }


        private static String getIdType(String line) {
            if (line != null && !line.equals("")) {
                line = line.trim();
            }
            String[] strings = line.split(" ");
            if (strings.length >= 4) {
                return strings[4];
            }
            return null;
        }


    }

    public static class XmlUtils {

        public static void removeDuplicateLineAndRemoveIdType(Map<String, LinkedHashMap> ids, File aarres) throws Exception {
            File valuesXml = new File(aarres, "values/values.xml");
            if (!valuesXml.exists()) {
                throw new Exception("aar values.xml not found");
            }
            Document documentValues = loadDocument(valuesXml);
            Node nodeFirst = documentValues.getFirstChild();
            NodeList children = nodeFirst.getChildNodes();
            int len = children.getLength();
            for (int i = 0; i < len; i++) {
                String type = null;
                Node node = children.item(i);

                if (node == null) {
                    System.out.println("item " + i + "is null");
                    continue;
                }
                NamedNodeMap attrs = node.getAttributes();
                if (node.getNodeType() == Node.ELEMENT_NODE) {
                    type = node.getNodeName();
                    if (attrs != null) {
                        // get type remove duplicate tag
                        Node keynode = attrs.getNamedItem("name");
                        if (keynode != null) {
                            String key = keynode.getNodeValue();
                            if (type.equals("item")) {
                                nodeFirst.removeChild(node);
                                LOGGER.info("remove values.xml id key is " + key);
                                i--;
                                continue;
                            }
                            boolean isReadyRemove = checkIfRemoved(type, key, ids);
                            if (isReadyRemove) {
                                nodeFirst.removeChild(node);
                                LOGGER.info("remove values.xml key " + key);
                                i--;
                            }
                        }
                    }
                }
            }


            saveDocument(valuesXml, documentValues);
        }

        public static void addIDs2HostIds(Map<String, LinkedHashMap> ids, File aarres) throws Exception {

            File fileIds = new File(aarres, "res/values/ids.xml");
            if (!fileIds.exists()) {
                throw new Exception("host dir values/ids.xml not exist");
            }
            Document documentValues = loadDocument(fileIds);
            Node nodeFirst = documentValues.getFirstChild();
            LinkedHashMap<String, AarID> idMaps = ids.get("id");
            for (String key : idMaps.keySet()) {
                Element element = documentValues.createElement("item");
                element.setAttribute("type", "id");
                element.setAttribute("name", key);
                nodeFirst.appendChild(element);
            }
            saveDocument(fileIds, documentValues);
        }
//        public static void removeDuplicateLine(Map<String, LinkedHashMap> ids, File aarres) throws ParserConfigurationException, SAXException, IOException, TransformerException {
//
//            Document documentValues = loadDocument(aarres);
//            Node nodeFirst = documentValues.getFirstChild();
//            NodeList children = nodeFirst.getChildNodes();
//            int len = children.getLength();
//            for (int i = 0; i < len; i++) {
//                String type = null;
//                Node node = children.item(i);
//
//                if(node ==null){
//                    System.out.println("item " + i + "is null");
//                    continue;
//                }
//                NamedNodeMap attrs = node.getAttributes();
//                if (node.getNodeType() == Node.ELEMENT_NODE) {
//                    type = node.getNodeName();
//                    if (attrs != null) {
//                        Node typeNode = attrs.getNamedItem("type");
//                        if (typeNode != null) {
//                            type = typeNode.getNodeValue();
//                        }
//                        // get type remove duplicate tag
//                        Node keynode = attrs.getNamedItem("name");
//                        if (keynode != null) {
//                            String key = keynode.getNodeValue();
//                            boolean isReadyRemove = checkIfRemoved(type, key,ids);
//                            if(isReadyRemove){
//                                nodeFirst.removeChild(node);
//                                i--;
//                            }
//                        }
//                    }
//                }
//            }
//            saveDocument(aarres,documentValues);
//        }

        private static boolean checkIfRemoved(String type, String key, Map<String, LinkedHashMap> ids) {
            LinkedHashMap<String, AarID> typeIds = null;
            typeIds = ids.get(type);
            if (typeIds == null) {
                // 找不到说明出bug了
                return false;
            }

            AarID aarID = typeIds.get(key);
            if (aarID == null) {
                return false;
            }
            return aarID.isDuplicate();
        }


        /**
         * @param file File to load into Document
         * @return Document
         * @throws IOException
         * @throws SAXException
         * @throws ParserConfigurationException
         */
        private static org.w3c.dom.Document loadDocument(File file)
                throws IOException, SAXException, ParserConfigurationException {

            DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
            docFactory.setFeature(FEATURE_DISABLE_DOCTYPE_DECL, true);
            docFactory.setFeature(FEATURE_LOAD_DTD, false);

            try {
                docFactory.setAttribute(ACCESS_EXTERNAL_DTD, " ");
                docFactory.setAttribute(ACCESS_EXTERNAL_SCHEMA, " ");
            } catch (IllegalArgumentException ex) {
                LOGGER.warning("JAXP 1.5 Support is required to validate XML");
            }

            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
            // Not using the parse(File) method on purpose, so that we can control when
            // to close it. Somehow parse(File) does not seem to close the file in all cases.
            FileInputStream inputStream = new FileInputStream(file);
            try {
                return docBuilder.parse(inputStream);
            } finally {
                inputStream.close();
            }
        }

        public static void combin(File sourcefile, File destFile) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException, TransformerException {
            // uses-permission,uses-feature ,service,activity,provider,receiver,meta-data
            org.w3c.dom.Document documentSource = loadDocument(sourcefile);
            org.w3c.dom.Document documentDest = loadDocument(destFile);

            Element manifestNode = (Element) documentDest.getFirstChild();

            addSourceNode(manifestNode, "uses-permission", documentSource, documentDest);

            addSourceNode(manifestNode, "uses-feature", documentSource, documentDest);


            Node applicationNoe = documentDest.getElementsByTagName("application").item(0);
            addSourceNode(applicationNoe, "service", documentSource, documentDest);

            addSourceNode(applicationNoe, "activity", documentSource, documentDest);

            addSourceNode(applicationNoe, "provider", documentSource, documentDest);
            addSourceNode(applicationNoe, "receiver", documentSource, documentDest);
            addSourceNode(applicationNoe, "meta-data", documentSource, documentDest);
//
//
            saveDocument(destFile, documentDest);


        }

        public static void combinWithList(List<String> list, File destFile) throws Exception {
            // uses-permission
            org.w3c.dom.Document documentDest = loadDocument(destFile);

            Element manifestNode = (Element) documentDest.getFirstChild();
            if (list == null) {
                throw new Exception("添加permission 异常");
            }
            for (int i = 0; i < list.size(); i++) {
                Element nodePermission = documentDest.createElement("uses-permission");
                nodePermission.setAttribute("android:name", list.get(i));
                manifestNode.appendChild(nodePermission);
            }

            saveDocument(destFile, documentDest);


        }

        private static void addSourceNode(Node manifestNode, String tagName, org.w3c.dom.Document documentSource, org.w3c.dom.Document dest) throws XPathExpressionException {

            NodeList nodes = documentSource.getElementsByTagName(tagName);

            for (int i = 0; i < nodes.getLength(); i++) {
                Node nodeSourcePermission = nodes.item(i);
                Node newNode = dest.importNode(nodeSourcePermission, true);
                manifestNode.appendChild(newNode);
            }
        }

        /**
         * @param file File to save Document to (ie AndroidManifest.xml)
         * @param doc  Document being saved
         * @throws IOException
         * @throws SAXException
         * @throws ParserConfigurationException
         * @throws TransformerException
         */
        private static void saveDocument(File file, org.w3c.dom.Document doc)
                throws IOException, SAXException, ParserConfigurationException, TransformerException {

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(file);
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.transform(source, result);
        }

        private static final String ACCESS_EXTERNAL_DTD = "http://javax.xml.XMLConstants/property/accessExternalDTD";
        private static final String ACCESS_EXTERNAL_SCHEMA = "http://javax.xml.XMLConstants/property/accessExternalSchema";
        private static final String FEATURE_LOAD_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
        private static final String FEATURE_DISABLE_DOCTYPE_DECL = "http://apache.org/xml/features/disallow-doctype-decl";
        private static final Logger LOGGER = Logger.getLogger(Utils.XmlUtils.class.getName());

        public static String getPackageName(File manifest) throws ParserConfigurationException, SAXException, IOException {
            org.w3c.dom.Document document = loadDocument(manifest);
            Node firstNode = document.getFirstChild();
            if (firstNode != null) {
                NamedNodeMap attrs = firstNode.getAttributes();
                if (attrs != null) {
                    Node packageNode = attrs.getNamedItem("package");
                    if (packageNode != null) {
                        return packageNode.getNodeValue();
                    }
                }
            }
            return "";
        }

        public static String setApplicationName(File hostdir, String appname) throws Exception {

            File manifest = new File(hostdir, "AndroidManifest.xml");
            if (!manifest.exists()) {
                throw new Exception("dir manifest xml not exist");
            }
            Document document = XmlUtils.loadDocument(manifest);

            Element nodeAppplication = (Element) document.getElementsByTagName("application").item(0);
            NamedNodeMap attr = nodeAppplication.getAttributes();
            if (attr != null) {
                Node appNameNode = attr.getNamedItem("android:name");
                if (appNameNode != null) {
                    String appNameHost = appNameNode.getNodeValue();
                    return appNameHost;
                } else {
                    nodeAppplication.setAttribute("android:name", appname);
                    saveDocument(manifest, document);
                    return appname;
                }
            }
            return null;
        }
    }

    public static class BuildPackage {
        private final static Logger LOGGER = Logger.getLogger(BuildPackage.class.getName());

        public static File all2Smali(File hostdir, File dexFile, Class clazz) throws Exception {

//        File libs = getAarLibDir();
//        File inputdexfile = new File(libs, "classe000.dex");
            if (!dexFile.exists()) {
                throw new Exception("dexfile  not exist");
            }

            List<String> cmd = new ArrayList<>();
            File fileJar = Utils.BuildPackage.getBakSmali(clazz);
            if (hostdir == null || !hostdir.exists()) {
                throw new Exception("host apk out dir not exist");
            }
            int maxIndex = Utils.FileUtils.getMaxIndex(hostdir) + 1;
            String smaliAarFileNameOutDir = "smali_classes" + maxIndex;
            File outDir = new File(hostdir, smaliAarFileNameOutDir);
            if (outDir.exists()) {
                throw new Exception("cp file to host apk dir wrong ,cause have already exist dir not ");
            } else {
                outDir.mkdirs();
            }

            cmd.add("java");
            cmd.add("-jar");
            cmd.add(fileJar.getAbsolutePath());
            cmd.add("d");
            cmd.add("-o");
            cmd.add(outDir.getAbsolutePath());
            cmd.add(dexFile.getAbsolutePath());
            try {
                OS.exec(cmd.toArray(new String[0]));
                LOGGER.fine("command ran: ");
                LOGGER.info(cmd.toString());
            } catch (BrutException ex) {
                throw new AndrolibException(ex);
            }
            return outDir;
        }

        public static File dx2dexfiles(File parentDir, Class clazz) throws Exception {

            // tood change 2 getFilename
//        File libs = getAarLibDir();
            File dexFile = new File(parentDir, "classe000.dex");
            if (!parentDir.exists()) {
                throw new Exception("libs not exist");
            }
            List<String> cmd = new ArrayList<>();
            File fileJarCmd = Utils.BuildPackage.getDxJar(clazz);
            cmd.add("java");
            cmd.add("-jar");
            cmd.add(fileJarCmd.getAbsolutePath());
            cmd.add("--dex");
            cmd.add("--output=" + dexFile.getAbsolutePath());
            cmd.add(parentDir.getAbsolutePath());
            try {
                OS.exec(cmd.toArray(new String[0]));
                LOGGER.fine("command ran: ");
                LOGGER.info(cmd.toString());
            } catch (BrutException ex) {
                throw new AndrolibException(ex);
            }
            return dexFile;
        }


        public static File getJavacFile() throws BrutException {
            File jarBinary;

            if (!OSDetection.is64Bit() && OSDetection.isMacOSX()) {
                throw new BrutException("32 bit OS detected. No 32 bit binaries available.");
            }
            try {
                if (OSDetection.isMacOSX()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/macosx/javac", Utils.class);
                } else if (OSDetection.isUnix()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/linux/javac", Utils.class);
                } else if (OSDetection.isWindows()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/windows/javac" + ".exe", Utils.class);
                } else {
                    throw new BrutException("Could not identify platform: " + OSDetection.returnOS());
                }
            } catch (BrutException ex) {
                throw new BrutException(ex);
            }

            if (jarBinary.setExecutable(true)) {
                return jarBinary;
            }

            throw new BrutException("Can't set javac binary as executable");
        }

        public static File getJarComm(Class clzzz) throws BrutException {
            File jarBinary;

            if (!OSDetection.is64Bit() && OSDetection.isMacOSX()) {
                throw new BrutException("32 bit OS detected. No 32 bit binaries available.");
            }
            try {
                if (OSDetection.isMacOSX()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/macosx/jar", clzzz);
                } else if (OSDetection.isUnix()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/linux/jar", clzzz);
                } else if (OSDetection.isWindows()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/windows/jar" + ".exe", clzzz);
                } else {
                    throw new BrutException("Could not identify platform: " + OSDetection.returnOS());
                }
            } catch (BrutException ex) {
                throw new BrutException(ex);
            }

            if (jarBinary.setExecutable(true)) {
                return jarBinary;
            }

            throw new BrutException("Can't set jar binary as executable");
        }


        public static File getAndroidJar(Class clazz) throws IOException, BrutException {
            File file = Jar.getResourceAsFile("/brut/androlib/android.jar", clazz);
            file.setExecutable(true);
            return file;
        }

        public static File getDxJar(Class clazz) throws IOException, BrutException {
            File file = Jar.getResourceAsFile("/brut/androlib/dx.jar", clazz);
            file.setExecutable(true);
            return file;
        }

        public static File getBakSmali(Class clazz) throws IOException, BrutException {
            File file = Jar.getResourceAsFile("/brut/androlib/baksmali-2.3.4.jar", clazz);
            file.setExecutable(true);
            return file;
        }

        public static File getSigner(Class clazz) throws IOException, BrutException {
            File file = Jar.getResourceAsFile("/brut/androlib/apksigner.jar", clazz);
            file.setExecutable(true);
            return file;
        }

        public static File getSignatureFile(Class clazz) throws IOException, BrutException {
            File file = Jar.getResourceAsFile("/brut/androlib/reversetoy.jks", clazz);
            file.setReadable(true);
            return file;
        }

    }

    public static class IDUtils {
        private static int range = 2000;

        public static int getMipmapStartId() {
            return Integer.parseInt("7fff0000", 16);
        }

        public static int getDrawableStartId() {
            return getMipmapStartId() - range;
        }

        public static int getStringStartId() {
            return getDrawableStartId() - range;
        }
    }
}
