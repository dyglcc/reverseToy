.class public Lcom/group/module/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    new-instance v0, Lcom/adhoc/config/AdhocConfig$Builder;

    invoke-direct {v0}, Lcom/adhoc/config/AdhocConfig$Builder;-><init>()V

    const-string v1, "abckey"

    .line 13
    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->appKey(Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;
   
    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adhoc/config/AdhocConfig$Builder;->context(Landroid/content/Context;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->enableDebugAssist(Z)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/adhoc/config/AdhocConfig$Builder;->supportMultiProcess()Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/config/AdhocConfig$Builder;->build()Lcom/adhoc/config/AdhocConfig;

    move-result-object v0

    .line 15
    .local v0, "config":Lcom/adhoc/config/AdhocConfig;
    invoke-static {v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->init(Lcom/adhoc/config/AdhocConfig;)V

    .line 17
    return-void
.end method
