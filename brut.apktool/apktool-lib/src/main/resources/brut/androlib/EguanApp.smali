.class public Lcom/reverse/stub/EguanApp;
.super Landroid/app/Application;
.source "EguanApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initReverseSDK()V
    .locals 6

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "codeBean":Lcom/reverse/stub/Utils$CodeBean;
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "reverse_code_json_default.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 24
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/reverse/stub/Utils;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    .local v2, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/reverse/stub/Utils$JSONparse;->getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;

    move-result-object v3

    move-object v0, v3

    .line 26
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

    .line 31
    nop

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 28
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 32
    :goto_0
    invoke-static {v0, p0}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;)Ljava/lang/Object;

    .line 33
    const-string v1, "reverseToy"

    const-string v2, "onCreate:  init sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-direct {p0}, Lcom/reverse/stub/EguanApp;->initReverseSDK()V

    .line 18
    return-void
.end method
