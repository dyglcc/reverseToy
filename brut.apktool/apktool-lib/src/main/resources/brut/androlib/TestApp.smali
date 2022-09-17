.class public Lcom/reverse/stub/TestApp;
.super Landroid/app/Application;
.source "TestApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initReverseSDK()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/reverse/stub/TestApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "reverse_code_json_default-adhoc-old.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 28
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/reverse/stub/Utils;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "codeString":Ljava/lang/String;
    invoke-static {v1}, Lcom/reverse/stub/Utils$JSONparse;->getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;

    move-result-object v2

    .line 32
    .local v2, "codeBean":Lcom/reverse/stub/Utils$CodeBean;
    invoke-virtual {p0}, Lcom/reverse/stub/TestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/reverse/stub/TestApp;->initReverseSDK()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 18
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 19
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 23
    :goto_1
    const-string v0, "reverse"

    const-string v1, "reverse SDK initSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
