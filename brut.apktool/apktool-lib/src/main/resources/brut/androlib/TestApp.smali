.class public Lcom/reverse/stub/TestApp;
.super Landroid/app/Application;
.source "TestApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 30
    invoke-virtual {p0}, Lcom/reverse/stub/TestApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "reverse_code_json_default-adhoc.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 31
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/reverse/stub/Utils;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "codeString":Ljava/lang/String;
    invoke-static {v1}, Lcom/reverse/stub/Utils$JSONparse;->getCodeBeanByJSonString(Ljava/lang/String;)Lcom/reverse/stub/Utils$CodeBean;

    move-result-object v2

    .line 35
    .local v2, "codeBean":Lcom/reverse/stub/Utils$CodeBean;
    invoke-virtual {p0}, Lcom/reverse/stub/TestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/reverse/stub/Utils$Reflection;->callMethod(Lcom/reverse/stub/Utils$CodeBean;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocConfig;->defaultConfig()Lcom/adhoc/adhocsdk/AdhocConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/AdhocConfig;->enableDebugAssist(Z)Lcom/adhoc/adhocsdk/AdhocConfig;

    move-result-object v0

    const-string v1, "abc"

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/AdhocConfig;->appKey(Ljava/lang/String;)Lcom/adhoc/adhocsdk/AdhocConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->init(Landroid/content/Context;Lcom/adhoc/adhocsdk/AdhocConfig;)V

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/reverse/stub/TestApp;->initReverseSDK()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 21
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 22
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 26
    :goto_1
    const-string v0, "reverse"

    const-string v1, "reverse SDK initSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
