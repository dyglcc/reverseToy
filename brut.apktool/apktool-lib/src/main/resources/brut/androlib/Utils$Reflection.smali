.class public Lcom/reverse/stub/Utils$Reflection;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reflection"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callInstanceMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;

    .line 272
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "className_codebean1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 275
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 276
    .local v2, "clazz_instance":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 277
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v3

    .line 278
    .local v3, "instanceMethod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 279
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/reverse/stub/Utils$CodeBean$Method_;

    .line 280
    .local v5, "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    invoke-static {v5, v2, v1, p1}, Lcom/reverse/stub/Utils$Reflection;->execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v5    # "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "clazz_instance":Ljava/lang/Class;
    .end local v3    # "instanceMethod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 285
    :catch_2
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 283
    :catch_3
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 291
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 292
    :goto_2
    return-object v1
.end method

.method public static callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;

    .line 206
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean$StaticField;->getFieldName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean$StaticField;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/reverse/stub/Utils$Reflection;->getStaticField(Lcom/reverse/stub/Utils$CodeBean;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 209
    :catch_2
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    invoke-static {p0, p1}, Lcom/reverse/stub/Utils$Reflection;->callStaticMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)V

    .line 219
    return-object v1

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 222
    invoke-static {p0, p1}, Lcom/reverse/stub/Utils$Reflection;->callInstanceMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 224
    :cond_2
    return-object v1
.end method

.method private static callStaticMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)V
    .locals 6
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;

    .line 228
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "className_codebean1":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 231
    .local v1, "clazz_instance":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v2

    .line 232
    .local v2, "staticMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 233
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/reverse/stub/Utils$CodeBean$Method_;

    .line 234
    .local v4, "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    const/4 v5, 0x0

    invoke-static {v4, v1, v5, p1}, Lcom/reverse/stub/Utils$Reflection;->execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v4    # "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "clazz_instance":Ljava/lang/Class;
    .end local v2    # "staticMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 239
    :catch_2
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 237
    :catch_3
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 245
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 246
    :goto_2
    return-void
.end method

.method private static execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 10
    .param p0, "method_"    # Lcom/reverse/stub/Utils$CodeBean$Method_;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "application"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean$Method_;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean$Method_;->getParas()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 298
    .local v1, "paras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_$Para;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    .line 299
    .local v2, "classes_":[Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 300
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 301
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;

    .line 302
    .local v5, "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    invoke-virtual {v5}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->getParatype()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->getParavalue()Ljava/lang/Object;

    move-result-object v7

    .line 304
    .local v7, "object":Ljava/lang/Object;
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 305
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 306
    aput-object v7, v3, v4

    goto :goto_1

    .line 307
    :cond_0
    const-string v8, "string"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    const-class v8, Ljava/lang/String;

    aput-object v8, v2, v4

    .line 309
    aput-object v7, v3, v4

    goto :goto_1

    .line 310
    :cond_1
    const-string v8, "long"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 311
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 312
    aput-object v7, v3, v4

    goto :goto_1

    .line 313
    :cond_2
    const-string v8, "boolean"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 314
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 315
    aput-object v7, v3, v4

    goto :goto_1

    .line 316
    :cond_3
    const-string v8, "this"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    const-class v8, Landroid/content/Context;

    aput-object v8, v2, v4

    .line 318
    aput-object p3, v3, v4

    goto :goto_1

    .line 319
    :cond_4
    const-string v8, "object"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 320
    invoke-static {v7}, Lcom/reverse/stub/Utils$Reflection;->getClassByValue(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v8

    .line 321
    .local v8, "clazz_obj":Ljava/lang/Class;
    aput-object v8, v2, v4

    .line 322
    move-object v9, v7

    check-cast v9, Lcom/reverse/stub/Utils$CodeBean;

    invoke-static {v9, p3}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v4

    .line 300
    .end local v5    # "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "clazz_obj":Ljava/lang/Class;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 327
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method private static getClassByValue(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    instance-of v0, p0, Lcom/reverse/stub/Utils$CodeBean;

    if-eqz v0, :cond_0

    .line 334
    move-object v0, p0

    check-cast v0, Lcom/reverse/stub/Utils$CodeBean;

    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 340
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u8fd9\u91cc\u5fc5\u987b\u662f\u4e00\u4e2aObject\u7ed3\u6784\u7684json\u683c\u5f0f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getStaticField(Lcom/reverse/stub/Utils$CodeBean;)Ljava/lang/Object;
    .locals 11
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;

    move-result-object v0

    .line 250
    .local v0, "field":Lcom/reverse/stub/Utils$CodeBean$StaticField;
    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean$StaticField;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 255
    .local v3, "clazz":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 256
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 257
    .local v4, "clayy":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    .line 258
    .local v6, "enumConstants":[Ljava/lang/Enum;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 259
    .local v9, "enumxyz":Ljava/lang/Enum;
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 260
    return-object v9

    .line 258
    .end local v9    # "enumxyz":Ljava/lang/Enum;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 263
    .end local v4    # "clayy":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    .end local v6    # "enumConstants":[Ljava/lang/Enum;
    :cond_1
    nop

    .line 267
    return-object v5

    .line 264
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 265
    .local v4, "field1":Ljava/lang/reflect/Field;
    invoke-static {v4, v5}, Lcom/reverse/stub/Utils;->access$100(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method
