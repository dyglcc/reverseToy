package com.appadhoc.reversetoy.inject;

import brut.androlib.AndrolibException;
import brut.androlib.err.AXmlDecodingException;
import brut.androlib.err.RawXmlEncounteredException;
import brut.androlib.res.data.ResTable;
import brut.androlib.res.decoder.AXmlResourceParser;
import brut.androlib.res.decoder.ResAttrDecoder;
import brut.androlib.res.util.ExtMXSerializer;
import brut.androlib.res.util.ExtXmlSerializer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.wrapper.XmlPullParserWrapper;
import org.xmlpull.v1.wrapper.XmlPullWrapperFactory;
import org.xmlpull.v1.wrapper.XmlSerializerWrapper;
import org.xmlpull.v1.wrapper.classic.StaticXmlSerializerWrapper;

import java.io.*;
import java.util.logging.Logger;

public class Test {
    Logger LOGGER = Logger.getLogger(this.getClass().getName());

    public static void main(String[] args) throws FileNotFoundException {

        Test test = new Test();
        InputStream inputStream = new FileInputStream("/Users/jiaozhengxiang/Desktop/apk-blue/header_yun_anim.xml");
        File fileout = new File("/Users/jiaozhengxiang/Desktop/apk-blue/header_yun_anim----------.xml");
        OutputStream outputStream = new FileOutputStream(fileout);
        try {
            test.decode(inputStream, outputStream);
        } catch (AndrolibException e) {
            e.printStackTrace();
        }

    }

    public ExtMXSerializer getResXmlSerializer() {
        ExtMXSerializer serial = new ExtMXSerializer();
        serial.setProperty(ExtXmlSerializer.PROPERTY_SERIALIZER_INDENTATION, "    ");
        serial.setProperty(ExtXmlSerializer.PROPERTY_SERIALIZER_LINE_SEPARATOR, System.getProperty("line.separator"));
        serial.setProperty(ExtXmlSerializer.PROPERTY_DEFAULT_ENCODING, "utf-8");
        serial.setDisabledAttrEscape(true);
        return serial;
    }

    public void decode(InputStream in, OutputStream out)
            throws AndrolibException {
        AXmlResourceParser axmlParser = new AXmlResourceParser();
        axmlParser.setAttrDecoder(new ResAttrDecoder());
        try {
            XmlPullWrapperFactory factory = XmlPullWrapperFactory.newInstance();
            XmlPullParserWrapper par = factory.newPullParserWrapper(axmlParser);
//            final ResTable resTable = ((AXmlResourceParser) axmlParser).getAttrDecoder().getCurrentPackage().getResTable();

            XmlSerializerWrapper ser = new StaticXmlSerializerWrapper(getResXmlSerializer(), factory) {
                boolean hideSdkInfo = false;
                boolean hidePackageInfo = false;

                @Override
                public void event(XmlPullParser pp)
                        throws XmlPullParserException, IOException {
                    int type = pp.getEventType();

                    if (type == XmlPullParser.START_TAG) {
                        if ("manifest".equalsIgnoreCase(pp.getName())) {
                            try {
                                hidePackageInfo = parseManifest(pp);
                            } catch (AndrolibException ignored) {
                            }
                        } else if ("uses-sdk".equalsIgnoreCase(pp.getName())) {
                            try {
                                hideSdkInfo = parseAttr(pp);
                                if (hideSdkInfo) {
                                    return;
                                }
                            } catch (AndrolibException ignored) {
                            }
                        }
                    } else if (hideSdkInfo && type == XmlPullParser.END_TAG
                            && "uses-sdk".equalsIgnoreCase(pp.getName())) {
                        return;
                    } else if (hidePackageInfo && type == XmlPullParser.END_TAG
                            && "manifest".equalsIgnoreCase(pp.getName())) {
                        super.event(pp);
                        return;
                    }
                    super.event(pp);
                }

                private boolean parseManifest(XmlPullParser pp)
                        throws AndrolibException {
                    String attr_name;

                    // read <manifest> for package:
                    for (int i = 0; i < pp.getAttributeCount(); i++) {
                        attr_name = pp.getAttributeName(i);
                        LOGGER.info("parseManifest attr_name " + attr_name);

                        if (attr_name.equalsIgnoreCase(("package"))) {
                            System.out.println("abc");
//                            resTable.setPackageRenamed(pp.getAttributeValue(i));
                        } else if (attr_name.equalsIgnoreCase("versionCode")) {
//                            resTable.setVersionCode(pp.getAttributeValue(i));
                            System.out.println("abcd");
                        } else if (attr_name.equalsIgnoreCase("versionName")) {
//                            resTable.setVersionName(pp.getAttributeValue(i));
                            System.out.println("abcef");
                        }
                    }
                    return true;
                }

                private boolean parseAttr(XmlPullParser pp)
                        throws AndrolibException {
                    for (int i = 0; i < pp.getAttributeCount(); i++) {
                        final String a_ns = "http://schemas.android.com/apk/res/android";
                        String ns = pp.getAttributeNamespace(i);

                        if (a_ns.equalsIgnoreCase(ns)) {
                            String name = pp.getAttributeName(i);
                            String value = pp.getAttributeValue(i);
                            if (name != null && value != null) {
                                if (name.equalsIgnoreCase("minSdkVersion")
                                        || name.equalsIgnoreCase("targetSdkVersion")
                                        || name.equalsIgnoreCase("maxSdkVersion")) {
//                                    resTable.addSdkInfo(name, value);
                                    System.out.println("abcef");
                                } else {
//                                    resTable.clearSdkInfo();
                                    System.out.println("abcef");
                                    return false; // Found unknown flags
                                }
                            }
                        } else {
                            System.out.println("abcef");
//                            resTable.clearSdkInfo();

                            if (i >= pp.getAttributeCount()) {
                                return false; // Found unknown flags
                            }
                        }
                    }

                    return false;
                }
            };

            //todo outfile 时候可以把aar的资源加载到这里
            par.setInput(in, null);
            ser.setOutput(out, null);

            while (par.nextToken() != XmlPullParser.END_DOCUMENT) {
                ser.event(par);
            }
            ser.flush();
        } catch (XmlPullParserException ex) {
            throw new AXmlDecodingException("Could not decode XML", ex);
        } catch (IOException ex) {
            throw new RawXmlEncounteredException("Could not decode XML", ex);
        }
    }
}
