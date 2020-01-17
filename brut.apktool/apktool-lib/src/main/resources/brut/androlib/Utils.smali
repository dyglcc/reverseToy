.class public Lcom/reverse/stub/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reverse/stub/Utils$Reflection;,
        Lcom/reverse/stub/Utils$CodeBean;,
        Lcom/reverse/stub/Utils$JSONparse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;
    .param p1, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 21
    invoke-static {p0, p1}, Lcom/reverse/stub/Utils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 364
    if-eqz p0, :cond_0

    .line 365
    invoke-static {p0}, Lcom/reverse/stub/Utils;->makeAccessible(Ljava/lang/reflect/Field;)V

    .line 367
    :cond_0
    if-eqz p0, :cond_1

    .line 368
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 370
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initReverseSDK(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "codeBean":Lcom/reverse/stub/Utils$CodeBean;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "reverse_code_json_default.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/reverse/stub/Utils;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    .local v2, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/reverse/stub/Utils$JSONparse;->getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;

    move-result-object v3

    move-object v0, v3

    .line 29
    const-string v3, "Reflection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/reverse/stub/Utils$CodeBean;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 30
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 31
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 35
    :goto_0
    invoke-static {v0, p0}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;

    .line 36
    const-string v1, "reverseToy"

    const-string v2, "onCreate:  init sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static makeAccessible(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 374
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 378
    :cond_1
    return-void
.end method

.method public static readStringFromStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    goto :goto_1

    .line 50
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    nop

    .line 52
    :goto_1
    return-object v1

    .line 50
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    throw v2
.end method
