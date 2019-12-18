.class public Lcom/reverse/stub/YaoheApp;
.super Landroid/app/Application;
.source "YaoheApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initReverseSDK()V
    .locals 2

    .line 16
    new-instance v0, Lcom/adhoc/config/AdhocConfig$Builder;

    invoke-direct {v0}, Lcom/adhoc/config/AdhocConfig$Builder;-><init>()V

    .line 17
    invoke-virtual {v0, p0}, Lcom/adhoc/config/AdhocConfig$Builder;->context(Landroid/content/Context;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    const-string v1, "ADHOC_6cd6a401-05ca-4ae8-acb1-35254d2f3042"

    .line 18
    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->appKey(Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->enableDebugAssist(Z)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/adhoc/config/AdhocConfig$Builder;->supportMultiProcess()Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/adhoc/config/AdhocConfig$Builder;->build()Lcom/adhoc/config/AdhocConfig;

    move-result-object v0

    .line 22
    .local v0, "adhocConfig":Lcom/adhoc/config/AdhocConfig;
    invoke-static {v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->init(Lcom/adhoc/config/AdhocConfig;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-direct {p0}, Lcom/reverse/stub/App;->initReverseSDK()V

    .line 13
    return-void
.end method
