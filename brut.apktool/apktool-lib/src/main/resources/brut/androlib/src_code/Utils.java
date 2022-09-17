package com.reverse.stub;
import android.content.Context;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;


public class Utils {


    public static StringBuilder readStringFromStream(InputStream inputStream) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
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

    public static void initReverseSDK(Context applicationContext) throws IOException, JSONException {
        InputStream inputStream = applicationContext.getAssets().open("reverse_code_json_default" +
                ".txt");
        String codeString = Utils.readStringFromStream(inputStream).toString();

        Utils.CodeBean codeBean = Utils.JSONparse.getCodeBeanByJSonString(codeString);

        Utils.Reflection.callMethod(codeBean,applicationContext,null);
    }

    public static class JSONparse {


        private static ArrayList<CodeBean.Method_> getMethods(JSONObject object, String key) throws JSONException {
            ArrayList<CodeBean.Method_> methods = new ArrayList<>();
            JSONArray array = object.optJSONArray(key);
            if (array != null) {
                int length = array.length();
                for (int i = 0; i < length; i++) {
                    JSONObject object1 = array.optJSONObject(i);
                    CodeBean.Method_ singleMethod = new CodeBean.Method_();
                    singleMethod.setMethodName(object1.optString("methodName"));
                    ArrayList<CodeBean.Method_.Para> paras = new ArrayList();
                    JSONArray array1 = object1.optJSONArray("para");
                    for (int j = 0; j < array1.length(); j++) {
                        JSONObject objecPara = array1.optJSONObject(j);
                        CodeBean.Method_.Para para = new CodeBean.Method_.Para();
                        String type = objecPara.optString("paratype");
                        String value = objecPara.optString("paravalue");
                        para.setParatype(type);
                        if (type.equals("object")) {
                            para.setParavalue(getCodeBeanByJSonString(value));
                        } else if (type.equals("this")) {
                            para.setParavalue("this");
                        } else if (type.equals("int")) {
                            para.setParavalue(Integer.parseInt(value));
                        } else if (type.equals("string")) {
                            para.setParavalue(value);
                        } else if (type.equals("boolean")) {
                            para.setParavalue(Boolean.parseBoolean(value));
                        } else if (type.equals("long")) {
                            para.setParavalue(Long.parseLong(value));
                        }
                        paras.add(para);
                    }
                    singleMethod.setParas(paras);
                    methods.add(singleMethod);
                }
            }
            return methods;
        }

        public static CodeBean getCodeBeanByJSonString(String textJson) throws JSONException {
            JSONObject object = new JSONObject(textJson);
            CodeBean cb = new CodeBean();
            String className = object.optString("classname");
            cb.setClassName(className);
//            cb.setInstanceMethods(new ArrayList<>());
            ArrayList<CodeBean.Method_> methodS = getMethods(object, "staticMethods");
            cb.setMethods(methodS);
            ArrayList<CodeBean.Method_> instanceMethods = getMethods(object, "instanceMethods");
            cb.setInstanceMethods(instanceMethods);

            String staticFeilds = object.optString("staticfield");

            if (staticFeilds != null) {
                CodeBean.StaticField field = new CodeBean.StaticField();
                field.setFieldName(staticFeilds);
                cb.setStaticFields(field);
            }
            return cb;
        }
    }

    public static class CodeBean {
        private String className;

        public String getClassName() {
            return className;
        }

        public void setClassName(String className) {
            this.className = className;
        }

        public ArrayList<Method_> getMethods() {
            return methods;
        }

        public void setMethods(ArrayList<Method_> methods) {
            this.methods = methods;
        }

        public ArrayList<Method_> getInstanceMethods() {
            return instanceMethods;
        }

        public void setInstanceMethods(ArrayList<Method_> instanceMethods) {
            this.instanceMethods = instanceMethods;
        }

        private ArrayList<Method_> methods;

        public StaticField getStaticFields() {
            return staticFields;
        }

        public void setStaticFields(StaticField staticFields) {
            this.staticFields = staticFields;
        }

        private StaticField staticFields;
        private ArrayList<Method_> instanceMethods;

        private static class StaticField {


            private String fieldName;

            public String getFieldName() {
                return fieldName;
            }

            public void setFieldName(String fieldName) {
                this.fieldName = fieldName;
            }
        }

        public static class Method_ {
            private String methodName;

            public String getMethodName() {
                return methodName;
            }

            public void setMethodName(String methodName) {
                this.methodName = methodName;
            }

            public List<Para> getParas() {
                return paras;
            }

            public void setParas(List<Para> paras) {
                this.paras = paras;
            }

            private List<Para> paras;

            public static class Para {
                private String paratype;

                public String getParatype() {
                    return paratype;
                }

                public void setParatype(String paratype) {
                    this.paratype = paratype;
                }

                public Object getParavalue() {
                    return paravalue;
                }

                public void setParavalue(Object paravalue) {
                    this.paravalue = paravalue;
                }

                private Object paravalue;
            }
        }
    }


    public static class Reflection {
        public static Object callMethod(CodeBean cb, Context application,Object intance) {
            if (cb.getStaticFields() != null && cb.getStaticFields().getFieldName() != null && !cb.getStaticFields().getFieldName().equals("")) {
                try {
                    return getStaticField(cb);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (NoSuchFieldException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            Object obj = null;
            if (cb.getMethods() != null && cb.getMethods().size() > 0) {
                obj = callStaticMethod(cb, application);
            }
            if (cb.getInstanceMethods() != null && cb.getInstanceMethods().size() > 0) {
                if(intance != null){
                    obj = callInstanceMethod(cb, application,intance);
                }else {
                    obj =callInstanceMethod(cb, application,obj);
                }
            }
            return obj;
        }

        private static Object callStaticMethod(CodeBean cb, Context application) {
            String className_codebean1 = cb.getClassName();
            Object obj = null;
            try {
                Class clazz_instance = Class.forName(className_codebean1);
                ArrayList<CodeBean.Method_> staticMethods = cb.getMethods();
                for (int i = 0; i < staticMethods.size(); i++) {
                    CodeBean.Method_ method_ = staticMethods.get(i);
                    obj = execudeMethod(method_, clazz_instance, null, application, true);

                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            return obj;
        }

        private static Object getStaticField(CodeBean cb) throws ClassNotFoundException,
                NoSuchFieldException, IllegalAccessException {
            CodeBean.StaticField field = cb.getStaticFields();
            String fieldName = field.getFieldName();
            String className = cb.getClassName();


            Class clazz = Class.forName(className);
            if (clazz.isEnum()) {
                Class<Enum> clayy = (Class<Enum>) Class.forName(clazz.getName());
                Enum[] enumConstants = clayy.getEnumConstants();
                for (Enum enumxyz : enumConstants) {
                    if (enumxyz.name().equals(fieldName)) {
                        return enumxyz;
                    }
                }
            } else {
                Field field1 = clazz.getDeclaredField(fieldName);
                return getFieldValue(field1, null);
            }
            return null;

        }

        private static Object callInstanceMethod(CodeBean cb, Context application,Object instance) {
            String className_codebean1 = cb.getClassName();
            Object obj = instance;
            try {
                Class clazz_instance = Class.forName(className_codebean1);
                if(instance == null){
                    obj = clazz_instance.newInstance();
                }
                ArrayList<CodeBean.Method_> instanceMethod = cb.getInstanceMethods();
                for (int i = 0; i < instanceMethod.size(); i++) {
                    CodeBean.Method_ method_ = instanceMethod.get(i);
                    Object result = execudeMethod(method_, clazz_instance, obj, application, false);
                    if (result != null) {
                        obj = result;
                    }
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return obj;
        }

        private static Object execudeMethod(CodeBean.Method_ method_, Class clazz, Object obj,
                                            Context application, boolean isStatic) {
            String methodName = method_.getMethodName();
            ArrayList<CodeBean.Method_.Para> paras =
                    (ArrayList<CodeBean.Method_.Para>) method_.getParas();
            Class[] classes_ = new Class[paras.size()];
            Object[] values = new Object[paras.size()];
            for (int i = 0; i < paras.size(); i++) {
                CodeBean.Method_.Para para = paras.get(i);
                String type = para.getParatype();
                Object object = para.getParavalue();
                if (type.equals("int")) {
                    classes_[i] = int.class;
                    values[i] = object;
                } else if (type.equals("string")) {
                    classes_[i] = String.class;
                    values[i] = object;
                } else if (type.equals("long")) {
                    classes_[i] = long.class;
                    values[i] = object;
                } else if (type.equals("boolean")) {
                    classes_[i] = boolean.class;
                    values[i] = object;
                } else if (type.equals("this")) {
                    classes_[i] = Context.class;
                    values[i] = application;
                } else if (type.equals("object")) {
                    Class clazz_obj = null;
                    try {
                        clazz_obj = getClassByValue(object);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    values[i] = callMethod((CodeBean) object, application,null);
                    String resultClassName = values[i].getClass().getName();
                    if (resultClassName.equals(clazz_obj.getName())) {
                        classes_[i] = clazz_obj;
                    } else {
                        classes_[i] = values[i].getClass();
                    }
                }
            }
            Method method = null;
            try {
                method = clazz.getDeclaredMethod(methodName, classes_);
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
            Object result = null;
            try {
                result = method.invoke(obj, values);
            } catch (Exception et) {
                et.printStackTrace();
            }
            return result;


        }

        private static Class getClassByValue(Object obj) throws Exception {
            if (obj instanceof CodeBean) {
                String className = ((CodeBean) obj).getClassName();
                try {
                    return Class.forName(className);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            } else {
                throw new Exception("这里必须是一个Object结构的json格式");
            }
            return null;
        }

    }

    private static Object getFieldValue(Field field, Object obj) throws IllegalAccessException {
        if (field != null) {
            makeAccessible(field);
        }
        if (field != null) {
            return field.get(obj);
        } else {
            return null;
        }
    }

    private static void makeAccessible(Field field) {
        if (!Modifier.isPublic(field.getModifiers()) ||
                !Modifier.isPublic(field.getDeclaringClass().getModifiers())) {
            field.setAccessible(true);
        }
    }

}
