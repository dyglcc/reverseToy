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

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callInstanceMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "instance"    # Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "className_codebean1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 285
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 286
    .local v2, "clazz_instance":Ljava/lang/Class;
    if-nez p2, :cond_0

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 289
    :cond_0
    move-object v1, p2

    .line 290
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v3

    .line 291
    .local v3, "instanceMethod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 292
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/reverse/stub/Utils$CodeBean$Method_;

    .line 293
    .local v6, "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    invoke-static {v6, v2, v1, p1, v4}, Lcom/reverse/stub/Utils$Reflection;->execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v7, "result":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 295
    move-object v1, v7

    .line 291
    .end local v6    # "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "clazz_instance":Ljava/lang/Class;
    .end local v3    # "instanceMethod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    .end local v5    # "i":I
    :cond_2
    goto :goto_1

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 302
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 300
    :catch_2
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 298
    :catch_3
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 306
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 307
    :goto_2
    return-object v1
.end method

.method public static callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "intance"    # Ljava/lang/Object;

    .line 215
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

    .line 217
    :try_start_0
    invoke-static {p0}, Lcom/reverse/stub/Utils$Reflection;->getStaticField(Lcom/reverse/stub/Utils$CodeBean;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 226
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 227
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 228
    invoke-static {p0, p1}, Lcom/reverse/stub/Utils$Reflection;->callStaticMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getInstanceMethods()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 231
    if-eqz p2, :cond_2

    .line 232
    invoke-static {p0, p1, p2}, Lcom/reverse/stub/Utils$Reflection;->callInstanceMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 234
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/reverse/stub/Utils$Reflection;->callInstanceMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static callStaticMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .param p0, "cb"    # Lcom/reverse/stub/Utils$CodeBean;
    .param p1, "application"    # Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "className_codebean1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 244
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 245
    .local v2, "clazz_instance":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getMethods()Ljava/util/ArrayList;

    move-result-object v3

    .line 246
    .local v3, "staticMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 247
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/reverse/stub/Utils$CodeBean$Method_;

    .line 248
    .local v5, "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v2, v6, p1, v7}, Lcom/reverse/stub/Utils$Reflection;->execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 246
    .end local v5    # "method_":Lcom/reverse/stub/Utils$CodeBean$Method_;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "clazz_instance":Ljava/lang/Class;
    .end local v3    # "staticMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_;>;"
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 254
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-object v1
.end method

.method private static execudeMethod(Lcom/reverse/stub/Utils$CodeBean$Method_;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 11
    .param p0, "method_"    # Lcom/reverse/stub/Utils$CodeBean$Method_;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "application"    # Landroid/content/Context;
    .param p4, "isStatic"    # Z

    .line 312
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean$Method_;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "methodName":Ljava/lang/String;
    nop

    .line 314
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean$Method_;->getParas()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 315
    .local v1, "paras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/reverse/stub/Utils$CodeBean$Method_$Para;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    .line 316
    .local v2, "classes_":[Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 317
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 318
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;

    .line 319
    .local v5, "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    invoke-virtual {v5}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->getParatype()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/reverse/stub/Utils$CodeBean$Method_$Para;->getParavalue()Ljava/lang/Object;

    move-result-object v7

    .line 321
    .local v7, "object":Ljava/lang/Object;
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 322
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 323
    aput-object v7, v3, v4

    goto/16 :goto_2

    .line 324
    :cond_0
    const-string v8, "string"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 325
    const-class v8, Ljava/lang/String;

    aput-object v8, v2, v4

    .line 326
    aput-object v7, v3, v4

    goto :goto_2

    .line 327
    :cond_1
    const-string v8, "long"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 328
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 329
    aput-object v7, v3, v4

    goto :goto_2

    .line 330
    :cond_2
    const-string v8, "boolean"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 331
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    .line 332
    aput-object v7, v3, v4

    goto :goto_2

    .line 333
    :cond_3
    const-string v8, "this"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 334
    const-class v8, Landroid/content/Context;

    aput-object v8, v2, v4

    .line 335
    aput-object p3, v3, v4

    goto :goto_2

    .line 336
    :cond_4
    const-string v8, "object"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 337
    const/4 v8, 0x0

    .line 339
    .local v8, "clazz_obj":Ljava/lang/Class;
    :try_start_0
    invoke-static {v7}, Lcom/reverse/stub/Utils$Reflection;->getClassByValue(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 342
    goto :goto_1

    .line 340
    :catch_0
    move-exception v9

    .line 341
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    move-object v9, v7

    check-cast v9, Lcom/reverse/stub/Utils$CodeBean;

    const/4 v10, 0x0

    invoke-static {v9, p3, v10}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v4

    .line 344
    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "resultClassName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 346
    aput-object v8, v2, v4

    goto :goto_2

    .line 348
    :cond_5
    aget-object v10, v3, v4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v2, v4

    .line 317
    .end local v5    # "para":Lcom/reverse/stub/Utils$CodeBean$Method_$Para;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "clazz_obj":Ljava/lang/Class;
    .end local v9    # "resultClassName":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 352
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .line 354
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 357
    goto :goto_3

    .line 355
    :catch_1
    move-exception v5

    .line 356
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 358
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_3
    const/4 v5, 0x0

    .line 360
    .local v5, "result":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v4, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 363
    goto :goto_4

    .line 361
    :catch_2
    move-exception v6

    .line 362
    .local v6, "et":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v6    # "et":Ljava/lang/Exception;
    :goto_4
    return-object v5
.end method

.method private static getClassByValue(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    instance-of v0, p0, Lcom/reverse/stub/Utils$CodeBean;

    if-eqz v0, :cond_0

    .line 371
    move-object v0, p0

    check-cast v0, Lcom/reverse/stub/Utils$CodeBean;

    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 377
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 378
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

    .line 259
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getStaticFields()Lcom/reverse/stub/Utils$CodeBean$StaticField;

    move-result-object v0

    .line 260
    .local v0, "field":Lcom/reverse/stub/Utils$CodeBean$StaticField;
    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean$StaticField;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 265
    .local v3, "clazz":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 266
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 267
    .local v4, "clayy":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    .line 268
    .local v6, "enumConstants":[Ljava/lang/Enum;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 269
    .local v9, "enumxyz":Ljava/lang/Enum;
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 270
    return-object v9

    .line 268
    .end local v9    # "enumxyz":Ljava/lang/Enum;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 273
    .end local v4    # "clayy":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    .end local v6    # "enumConstants":[Ljava/lang/Enum;
    :cond_1
    nop

    .line 277
    return-object v5

    .line 274
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 275
    .local v4, "field1":Ljava/lang/reflect/Field;
    invoke-static {v4, v5}, Lcom/reverse/stub/Utils;->access$100(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method
