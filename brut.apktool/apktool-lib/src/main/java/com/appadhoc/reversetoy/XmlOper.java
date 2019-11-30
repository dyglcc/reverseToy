package com.appadhoc.reversetoy;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;

public class XmlOper {

    public static void main(String[] args){
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse("/Users/jiaozhengxiang/GITHUB/Apktool/abc.xml");
            add(doc);


        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void add(Document doc) {

        Element element = doc.createElement("anthertag");
        element.setAttribute("attr","attrvalue");

    }

    public static void update(Document document){

    }
}
