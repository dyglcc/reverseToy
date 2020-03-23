.class public Lcom/reverse/stub/ReverseApp;
.super Landroid/app/Application;
.source "ReverseApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 27
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lcom/reverse/stub/MultiDex;->install(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/reverse/stub/ReverseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/reverse/stub/Utils;->initReverseSDK(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 17
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 18
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 22
    :goto_1
    const-string v0, "reverse"

    const-string v1, "reverse SDK initSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
