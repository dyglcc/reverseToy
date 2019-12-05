package com.appadhoc.reversetoy.xmloper;

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
import java.io.File;
import java.io.IOException;

public class ToyXmlOper {

    public static void main(String[] args) throws ParserConfigurationException, TransformerException, IOException, SAXException {
        Document doc = createXml();
        saveXml(doc, "/Users/jiaozhengxiang/Xmlfiles");
        removeChild();

    }

    private static void removeChild() {
        try {
            Document document = readXml(loadxml("/Users/jiaozhengxiang/Xmlfiles", "student.xml"));
            Node firstNode = document.getFirstChild();
            NodeList list = firstNode.getChildNodes();
            for (int i = 0; i < list.getLength(); i++) {

                Node childNode  = list.item(i);
                NamedNodeMap nodeMap  = childNode.getAttributes();
                if(nodeMap!=null){
                    Node idNode = nodeMap.getNamedItem("id");
                    if(idNode!=null){
                        if(idNode.getNodeValue().equals("4")){
                            System.out.println("now remove 4");
                            firstNode.removeChild(childNode);
                            i--;
                        }
                    }
                }
            }
            saveXml(document, "/Users/jiaozhengxiang/Xmlfiles");

            readXml(loadxml("/Users/jiaozhengxiang/Xmlfiles", "student.xml"));

            File file = new File("/Users/jiaozhengxiang/Xmlfiles", "student.xml");
            file.delete();

        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        }
    }

    private static Document createXml() throws ParserConfigurationException {

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();

        Document doc = builder.newDocument();
        Element root = doc.createElement("huamingce");
        doc.appendChild(root);
        for (int i = 0; i < 10; i++) {
            Element student = doc.createElement("xusheng");
            student.setAttribute("性别", "男");
            student.setAttribute("id", "" + i);
            root.appendChild(student);
            Text text = doc.createTextNode("xusheng" + i);
            student.appendChild(text);
        }
        return doc;
    }

    private static void saveXml(Document document, String filepath) throws TransformerException {
        File filepathdir = new File(filepath);
        if (!filepathdir.exists()) {
            filepathdir.mkdirs();
        }
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.transform(new DOMSource(document), new StreamResult(new File(filepathdir, "student.xml")));

    }

    private static Document readXml(Document document) throws ParserConfigurationException, IOException, SAXException {

        Node nodefirst = document.getFirstChild();
        NodeList nodeList = nodefirst.getChildNodes();
        System.out.println("node list size is " + nodeList.getLength());
        int len = nodeList.getLength();
        for (int i = 0; i < len; i++) {
            Node element = nodeList.item(i);
            if (element.getNodeType() == Node.ELEMENT_NODE) {
                String text = element.getNodeName();
                System.out.println(text + "#" + element.getNodeValue());
                NamedNodeMap attrs = element.getAttributes();
                if (attrs != null) {
                    Node sex = attrs.getNamedItem("id");
                    if (sex != null) {
                        System.out.println("id#" + sex.getNodeValue());
                    }
//                    Node idNode = attrs.getNamedItem("id");
//                    if(idNode.getNodeValue().equals("4")){
//                        System.out.println("has id 4");
//                    }
                }
            }
        }
        return document;
    }

    private static Document loadxml(String filepath, String filename) throws ParserConfigurationException, IOException, SAXException {
        File filedir = new File(filepath);
        if (!filedir.exists()) {
            filedir.mkdirs();
        }
        File file = new File(filepath, filename);

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(file);

        return document;
    }
}
