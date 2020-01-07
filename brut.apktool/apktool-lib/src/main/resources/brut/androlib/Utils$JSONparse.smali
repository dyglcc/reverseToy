.class public Lcom/reverse/stub/Utils$JSONparse;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONparse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;
    .locals 8
    .param p0, "textJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v1, Lcom/reverse/stub/Utils$CodeBean;

    invoke-direct {v1}, Lcom/reverse/stub/Utils$CodeBean;-><init>()V

    .line 85
    .local v1, "cb":Lcom/reverse/stub/Utils$CodeBean;
    const-string v2, "classname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/reverse/stub/Utils$CodeBean;->setClassName(Ljava/lang/String;)V

    .line 88
    const-string v3, "staticMethods"

    invoke-static {v0, v3}, Lcom/reverse/stub/Utils$JSONparse;->getMethods(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 89
    .local v3, "methodS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    invoke-virtual {v1, v3}, Lcom/reverse/stub/Utils$CodeBean;->setMethods(Ljava/util/ArrayList;)V

    .line 90
    const-string v4, "instanceMethods"

    invoke-static {v0, v4}, Lcom/reverse/stub/Utils$JSONparse;->getMethods(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    .local v4, "instanceMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    invoke-virtual {v1, v4}, Lcom/reverse/stub/Utils$CodeBean;->setInstanceMethods(Ljava/util/ArrayList;)V

    .line 93
    const-string v5, "staticfield"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "staticFeilds":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 96
    new-instance v6, Lcom/reverse/stub/Utils$CodeBean$StaticField;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/reverse/stub/Utils$CodeBean$StaticField;-><init>(Lcom/reverse/stub/Utils$1;)V

    .line 97
    .local v6, "field":Lcom/reverse/stub/Utils$CodeBean$StaticField;
    invoke-virtual {v6, v5}, Lcom/reverse/stub/Utils$CodeBean$StaticField;->setFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v6}, Lcom/reverse/stub/Utils$CodeBean;->setStaticFields(Lcom/reverse/stub/Utils$CodeBean$StaticField;)V

    .line 100
    .end local v6    # "field":Lcom/reverse/stub/Utils$CodeBean$StaticField;
    :cond_0
    return-object v1
.end method

.method private static getMethods(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/reverse/stub/Utils$CodeBean$Method_;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_7

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 48
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 49
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 50
    .local v4, "object1":Lorg/json/JSONObject;
    new-instance v5, Lcom/reverse/stub/Utils$CodeBean$Method_;

    invoke-direct {v5}, Lcom/reverse/stub/Utils$CodeBean$Method_;-><init>()V

    .line 51
    .local v5, "singleMethod":Lcom/reverse/stub/Utils$CodeBean$Method_;
    const-string v6, "methodName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/reverse/stub/Utils$CodeBean$Method_;->setMethodName(Ljava/lang/String;)V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v6, "paras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_$Para;>;"
    const-string v7, "para"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 54
    .local v7, "array1":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 55
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 56
    .local v9, "objecPara":Lorg/json/JSONObject;
    new-instance v10, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;

    invoke-direct {v10}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;-><init>()V

    .line 57
    .local v10, "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    const-string v11, "paratype"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "type":Ljava/lang/String;
    const-string v12, "paravalue"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParatype(Ljava/lang/String;)V

    .line 60
    const-string v13, "object"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 61
    invoke-static {v12}, Lcom/reverse/stub/Utils$JSONparse;->getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    goto :goto_2

    .line 62
    :cond_0
    const-string v13, "this"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 63
    invoke-virtual {v10, v13}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_1
    const-string v13, "int"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 65
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_2
    const-string v13, "string"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 67
    invoke-virtual {v10, v12}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    goto :goto_2

    .line 68
    :cond_3
    const-string v13, "boolean"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 69
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    goto :goto_2

    .line 70
    :cond_4
    const-string v13, "long"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 71
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->setParavalue(Ljava/lang/Object;)V

    .line 73
    :cond_5
    :goto_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v9    # "objecPara":Lorg/json/JSONObject;
    .end local v10    # "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 75
    .end local v8    # "j":I
    :cond_6
    invoke-virtual {v5, v6}, Lcom/reverse/stub/Utils$CodeBean$Method_;->setParas(Ljava/util/List;)V

    .line 76
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v4    # "object1":Lorg/json/JSONObject;
    .end local v5    # "singleMethod":Lcom/reverse/stub/Utils$CodeBean$Method_;
    .end local v6    # "paras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_$Para;>;"
    .end local v7    # "array1":Lorg/json/JSONArray;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 79
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_7
    return-object v0
.end method
