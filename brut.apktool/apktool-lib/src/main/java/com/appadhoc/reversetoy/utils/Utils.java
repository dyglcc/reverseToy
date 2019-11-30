package com.appadhoc.reversetoy.utils;


import java.io.*;

public class Utils {

    public static class FileUtils{


        public static StringBuilder readStringFromFile(File file) throws IOException {
            BufferedReader br = new BufferedReader(new FileReader(file));
            StringBuilder builder = new StringBuilder();
            String line;
            try {
                while ((line = br.readLine())!=null) {
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

        public static void writeString2File(File file,String str) throws IOException {
            FileWriter writer = new FileWriter(file);
            writer.write(str);
        }

    }

}
