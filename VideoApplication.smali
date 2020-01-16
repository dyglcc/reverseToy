.class public Lcom/qiyi/video/VideoApplication;
.super Lcom/tencent/tinker/loader/app/TinkerApplication;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/tencent/tinker/loader/TinkerLoaderEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "com.qiyi.video.VideoApplicationDelegate"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
.method public onCreaate()V
    .locals 2

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    const-string v0, "reverse"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lorg/qiyi/android/g/aux;->install(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
