package com.appadhoc.reversetoy.utils;


import brut.androlib.res.xml.ResXmlPatcher;
import brut.common.BrutException;
import brut.util.AaptManager;
import brut.util.Jar;
import brut.util.OS;
import brut.util.OSDetection;
import org.jf.util.Hex;
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
import javax.xml.xpath.*;
import java.io.*;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Logger;

public class Utils {

    public static <K, V> Map.Entry<K, V> getTailByReflection(LinkedHashMap<K, V> map)
            throws NoSuchFieldException, IllegalAccessException {
        Field tail = map.getClass().getDeclaredField("tail");
        tail.setAccessible(true);
        return (Map.Entry<K, V>) tail.get(map);
    }

    public static class FileUtils {



        public static boolean reNameFile(String srcfile,String newName) throws IOException {
            File file = new File(srcfile);

// File (or directory) with new name
            File destname = new File(newName);

            if (destname.exists()){
                throw new java.io.IOException("file exists");
            }
            return file.renameTo(destname);
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


        public static StringBuilder  smaliFileIdReplace(File file,Map<String,LinkedHashMap> ids) throws IOException {
            if(!file.exists() || file.getName().startsWith(".")){
                return null;
            }
            String key = getKeyByFileName(file.getName());

            LinkedHashMap<String,Integer> values = ids.get(key);

            BufferedReader br = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            String line;
            try {
                while ((line = br.readLine()) != null) {
                    if (line.contains("field public static final")) {
                        String[] words = line.split(" ");
                        String[] keys =  words[4].split(":");
                        Integer integer_value = values.get(keys[0]);
                        words[6] = "0x"+Integer.toHexString(integer_value);
                        StringBuilder s = new StringBuilder();
                        for(int i=0;i<words.length;i++){
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
            String pre = name.substring(0,name.indexOf(".smali"));
            return pre.substring(2);
        }


        public static Map<String,LinkedHashMap> readAarIds(File file) throws IOException {
            Map<String,LinkedHashMap> map = new LinkedHashMap<String,LinkedHashMap>();
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            Map<String,Integer> mapValue = null;
            try {
                while ((line = br.readLine()) != null) {
                    if (line.contains("public static final class")) {
                        String type = getIdType(line);
                        if (!map.containsKey(type)) {
                            map.put(type, new LinkedHashMap<String,Integer>());
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
                                mapValue.put(kvs[0], Integer.parseInt(kvs[1].substring(2),16));
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

    public static class XmlUtils{
        /**
         *
         * @param file File to load into Document
         * @return Document
         * @throws IOException
         * @throws SAXException
         * @throws ParserConfigurationException
         */
        private static Document loadDocument(File file)
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

        public static void combin(File sourcefile,File destFile) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException, TransformerException {
            //        <uses-permission
//                <uses-feature
//                <service
//                <activity
//                <provider
//                <receiver
//                <meta-data
            Document documentSource = loadDocument(sourcefile);
            Document documentDest = loadDocument(destFile);

            Element manifestNode = (Element) documentDest.getFirstChild();

            addSourceNode(manifestNode,"uses-permission",documentSource,documentDest);

            addSourceNode(manifestNode,"uses-feature",documentSource,documentDest);


            Node applicationNoe = documentDest.getElementsByTagName("application").item(0);
            addSourceNode(applicationNoe,"service",documentSource,documentDest);

            addSourceNode(applicationNoe,"activity",documentSource,documentDest);

            addSourceNode(applicationNoe,"provider",documentSource,documentDest);
            addSourceNode(applicationNoe,"receiver",documentSource,documentDest);
            addSourceNode(applicationNoe,"meta-data",documentSource,documentDest);
//
//
            saveDocument(destFile,documentDest);


        }

        private static void addSourceNode(Node manifestNode, String tagName,Document documentSource,Document dest) throws XPathExpressionException {

            NodeList nodes =documentSource.getElementsByTagName(tagName);

            for (int i = 0; i < nodes.getLength(); i++) {
                Node nodeSourcePermission = nodes.item(i);
                Node newNode = dest.importNode(nodeSourcePermission,true);
                manifestNode.appendChild(newNode);
            }
        }

//        private static Element copyNode(Node nodeSourcePermission, Document dest,String tagName) {
//            Element node = dest.createElement(tagName);
//            String content = nodeSourcePermission.getFirstChild().getTextContent();
//            if(content!=null){
//                node.setTextContent();
//            }
//        }


        /**
         *
         * @param file File to save Document to (ie AndroidManifest.xml)
         * @param doc Document being saved
         * @throws IOException
         * @throws SAXException
         * @throws ParserConfigurationException
         * @throws TransformerException
         */
        private static void saveDocument(File file, Document doc)
                throws IOException, SAXException, ParserConfigurationException, TransformerException {

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(file);
            transformer.setOutputProperty(OutputKeys.INDENT,"yes");
            transformer.transform(source, result);
        }

        private static final String ACCESS_EXTERNAL_DTD = "http://javax.xml.XMLConstants/property/accessExternalDTD";
        private static final String ACCESS_EXTERNAL_SCHEMA = "http://javax.xml.XMLConstants/property/accessExternalSchema";
        private static final String FEATURE_LOAD_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
        private static final String FEATURE_DISABLE_DOCTYPE_DECL = "http://apache.org/xml/features/disallow-doctype-decl";
        private static final Logger LOGGER = Logger.getLogger(XmlUtils.class.getName());
    }
    public static class BuildPackage{

        public static File getJavacFile() throws BrutException {
            File jarBinary;

            if (! OSDetection.is64Bit() && OSDetection.isMacOSX()) {
                throw new BrutException("32 bit OS detected. No 32 bit binaries available.");
            }
            try {
                if (OSDetection.isMacOSX()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/macosx/javac", Utils.class);
                } else if (OSDetection.isUnix()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/linux/javac", Utils.class);
                } else if (OSDetection.isWindows()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/windows/javac"+ ".exe", Utils.class);
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

            if (! OSDetection.is64Bit() && OSDetection.isMacOSX()) {
                throw new BrutException("32 bit OS detected. No 32 bit binaries available.");
            }
            try {
                if (OSDetection.isMacOSX()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/macosx/jar", clzzz);
                } else if (OSDetection.isUnix()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/linux/jar", clzzz);
                } else if (OSDetection.isWindows()) {
                    jarBinary = Jar.getResourceAsFile("/prebuilt/windows/jar"+ ".exe", clzzz);
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
            File file =  Jar.getResourceAsFile("/brut/androlib/android.jar", clazz);;
            file.setExecutable(true);
            return file;
        }
        public static File getDxJar(Class clazz) throws IOException, BrutException {
            File file =  Jar.getResourceAsFile("/brut/androlib/dx.jar", clazz);;
            file.setExecutable(true);
            return file;
        }
        public static File getBakSmali(Class clazz) throws IOException, BrutException {
            File file =  Jar.getResourceAsFile("/brut/androlib/baksmali-2.3.4.jar", clazz);;
            file.setExecutable(true);
            return file;
        }
        public static File getSigner(Class clazz) throws IOException, BrutException {
            File file =  Jar.getResourceAsFile("/brut/androlib/apksigner.jar", clazz);;
            file.setExecutable(true);
            return file;
        }

    }

}
