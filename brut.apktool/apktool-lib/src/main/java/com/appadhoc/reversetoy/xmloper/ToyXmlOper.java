package com.appadhoc.reversetoy.xmloper;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ToyXmlOper {

    public static void main(String[] args) {
        try {
            Document doc = createXml();
            Document doc01 = readXml("/Users/dongyuangui/Xmlfiles","student.xml");
            saveXml(doc01, "/Users/dongyuangui/Xmlfiles");
            System.out.println(doc.toString());
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
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
            root.appendChild(student);
            Text text = doc.createTextNode("xusheng" + i);
            student.appendChild(text);
        }
        return doc;
    }

    private static void saveXml(Document document, String filepath) throws TransformerException {

        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.transform(new DOMSource(document), new StreamResult(new File(filepath, "student.xml")));

    }

    private static Document readXml(String filepath, String filename) throws ParserConfigurationException, IOException, SAXException {

        File file = new File(filepath, filename);

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(file);

        NodeList nodeList = document.getElementsByTagName("xusheng");
        for (int i = 0; i< nodeList.getLength(); i++) {

            Element element = (Element) nodeList.item(i);
            if(i % 2 ==0){
                element.setAttribute("性别","nv");
            }else{
                String text = element.getFirstChild().getTextContent();
                System.out.println(text);
            }

        }
        return document;
    }

    private static void write2file(Document doc,String file) throws TransformerException, FileNotFoundException {
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty(OutputKeys.INDENT,"yes");
        transformer.transform(new DOMSource(doc),new StreamResult(new FileOutputStream(new File(file,"student.xml"))));
    }
}
