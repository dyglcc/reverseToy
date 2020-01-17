.class public Lcom/reverse/stub/EguanApp;
.super Landroid/app/Application;
.source "EguanApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 11
    const-string v0, "reverse"

    const-string v1, "onCreate init success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {p0}, Lcom/reverse/stub/Utils;->initReverseSDK(Landroid/content/Context;)V

    .line 13
    return-void
.end method
