package com.appadhoc.reversetoy;

import com.appadhoc.reversetoy.aar.AarManager;
import luyao.parser.xml.XmlParser;
import luyao.parser.xml.bean.chunk.IDChunk;
import org.w3c.dom.Node;
import org.yaml.snakeyaml.events.Event;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.logging.Logger;

public class MergeAndMestFile {
    private final static Logger LOGGER = Logger.getLogger(AarManager.class.getName());

    public static void main(String[] args) throws Exception {


    }


    public static void mergeAndroidMestFile() throws Exception {

        File fileHost = new File("/Users/dongyuangui/Desktop/apk-blue/abcxmltest/AndroidManifest.xml");
        File fileAar = new File("/Users/dongyuangui/Desktop/apk-blue/aar_tmp/AndroidManifest.xml");

        XmlParser hostParse  = new XmlParser(new FileInputStream(fileHost));
        XmlParser aarParser  = new XmlParser(new FileInputStream(fileAar));
        mergeXml(hostParse,aarParser);


    }

    private static void mergeXml(XmlParser hostParse, XmlParser aarParser) throws Exception {
        MergeArsc.mergelStringBlock(hostParse.getStringBlock(),aarParser.getStringBlock());
        mergeIds(hostParse,aarParser);

        // 大概的思路已经理清楚，那么我们在menifest 后面追加 permisiion 和feacher等
        // 在application 后面追加service，activity，provider，receiver，meta-data

    }

    private static void mergeIds(XmlParser hostParse, XmlParser aarParser) {
        IDChunk idHost  = hostParse.getIdTrunk();
        IDChunk idAar = aarParser.getIdTrunk();

        todo ,mergeIds();
    }


//    addSourceNode(manifestNode, "uses-permission", documentSource, documentDest);
//
//    addSourceNode(manifestNode, "uses-feature", documentSource, documentDest);
//
//
//    Node applicationNoe = documentDest.getElementsByTagName("application").item(0);
//    addSourceNode(applicationNoe, "service", documentSource, documentDest);
//
//    addSourceNode(applicationNoe, "activity", documentSource, documentDest);
//
//    addSourceNode(applicationNoe, "provider", documentSource, documentDest);
//    addSourceNode(applicationNoe, "receiver", documentSource, documentDest);
//    addSourceNode(applicationNoe, "meta-data", documentSource, documentDest);

}
