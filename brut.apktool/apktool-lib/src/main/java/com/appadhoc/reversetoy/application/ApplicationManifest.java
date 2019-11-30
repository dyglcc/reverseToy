package com.appadhoc.reversetoy.application;

import com.sun.webkit.dom.AttrImpl;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class ApplicationManifest {



    public static void main(String[] args){
        System.out.println(Integer.toHexString(128));
    }



//    public boolean dealWithManifestApplication(File file){

//        if (file.exists()) {
//            try {
//                Document doc = loadDocument(file);
//                XPath xPath = XPathFactory.newInstance().newXPath();
//                XPathExpression expression = xPath.compile("/manifest/application");
//
//                Object result = expression.evaluate(doc, XPathConstants.NODESET);
//                NodeList nodes = (NodeList) result;
//
//                for (int i = 0; i < nodes.getLength(); i++) {
//                    Node node = nodes.item(i);
//                    NamedNodeMap attrs = node.getAttributes();
//
//                    if (attrs != null) {
//                        Node provider = attrs.getNamedItem("android:name");
//
//                        if (provider != null) {
//
//                            // 找到文件 application smali 文件
//                            // 修改文件
//                            saved = isSaved(file, saved, provider);
//                        }else{
//                            Node applicatioNameNode = new Noite
//                            attrs.setNamedItem(new AttrImpl())
//                        }
//                    }
//                }
//
//                // android:scheme
//                xPath = XPathFactory.newInstance().newXPath();
//                expression = xPath.compile("/manifest/application/activity/intent-filter/data");
//
//                result = expression.evaluate(doc, XPathConstants.NODESET);
//                nodes = (NodeList) result;
//
//                for (int i = 0; i < nodes.getLength(); i++) {
//                    Node node = nodes.item(i);
//                    NamedNodeMap attrs = node.getAttributes();
//
//                    if (attrs != null) {
//                        Node provider = attrs.getNamedItem("android:scheme");
//
//                        if (provider != null) {
//                            saved = isSaved(file, saved, provider);
//                        }
//                    }
//                }
//
//                if (saved) {
//                    saveDocument(file, doc);
//                }
//
//            }  catch (SAXException | ParserConfigurationException | IOException |
//                    XPathExpressionException | TransformerException ignored) {
//            }
//    }
//        return false;
//    }



//    private static Document loadDocument(File file)
//            throws IOException, SAXException, ParserConfigurationException {
//
//        DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
//        docFactory.setFeature(FEATURE_DISABLE_DOCTYPE_DECL, true);
//        docFactory.setFeature(FEATURE_LOAD_DTD, false);
//
//        try {
//            docFactory.setAttribute(ACCESS_EXTERNAL_DTD, " ");
//            docFactory.setAttribute(ACCESS_EXTERNAL_SCHEMA, " ");
//        } catch (IllegalArgumentException ex) {
//            LOGGER.warning("JAXP 1.5 Support is required to validate XML");
//        }
//
//        DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
//        // Not using the parse(File) method on purpose, so that we can control when
//        // to close it. Somehow parse(File) does not seem to close the file in all cases.
//        FileInputStream inputStream = new FileInputStream(file);
//        try {
//            return docBuilder.parse(inputStream);
//        } finally {
//            inputStream.close();
//        }
//    }

}
