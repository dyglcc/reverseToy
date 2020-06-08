.class public Lcom/liepin/apply/ApplyApplication;
.super Lcom/liepin/basemodule/interfaces/ApplicationLifeListenerImpl;
.source "ApplyApplication.java"


# annotations
.annotation build Lcom/networkbench/agent/impl/instrumentation/NBSInstrumented;
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field private static instance:Lcom/liepin/apply/ApplyApplication;

.field private static mContext:Landroid/app/Application;

.field private static sResources:Landroid/content/res/Resources;


# instance fields
.field private NEW_USER_PUSH:I

.field private aMapLocation:Lcom/amap/api/location/AMapLocation;

.field private cameraImgPath:Ljava/lang/String;

.field private hasInit:Z

.field private mImgItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liepin/apply/model/ReleaseImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

.field private searchHintIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/liepin/apply/ApplyApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liepin/apply/ApplyApplication;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/liepin/apply/ApplyApplication;

    invoke-direct {v0}, Lcom/liepin/apply/ApplyApplication;-><init>()V

    sput-object v0, Lcom/liepin/apply/ApplyApplication;->instance:Lcom/liepin/apply/ApplyApplication;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/liepin/basemodule/interfaces/ApplicationLifeListenerImpl;-><init>()V

    .line 93
    const/16 v0, 0x2766

    iput v0, p0, Lcom/liepin/apply/ApplyApplication;->NEW_USER_PUSH:I

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/liepin/apply/ApplyApplication;->cameraImgPath:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/liepin/apply/ApplyApplication;)Lcom/liepin/basemodule/mvp/model/GetUUIDModel;
    .locals 1
    .param p0, "x0"    # Lcom/liepin/apply/ApplyApplication;

    .line 85
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liepin/apply/ApplyApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/liepin/apply/ApplyApplication;

    .line 85
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initUUID()V

    return-void
.end method

.method static synthetic access$200()Landroid/app/Application;
    .locals 1

    .line 85
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$302(Lcom/liepin/apply/ApplyApplication;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0
    .param p0, "x0"    # Lcom/liepin/apply/ApplyApplication;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .line 85
    iput-object p1, p0, Lcom/liepin/apply/ApplyApplication;->aMapLocation:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 342
    invoke-static {}, Lcom/liepin/basemodule/application/BaseApplication;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .line 346
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->sResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getInstance()Lcom/liepin/apply/ApplyApplication;
    .locals 1

    .line 101
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->instance:Lcom/liepin/apply/ApplyApplication;

    return-object v0
.end method

.method private initAdTestConfig()V
    .locals 2

    .line 249
    new-instance v0, Lcom/adhoc/config/AdhocConfig$Builder;

    invoke-direct {v0}, Lcom/adhoc/config/AdhocConfig$Builder;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/liepin/apply/ApplyApplication;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->context(Landroid/content/Context;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    const-string v1, "ADHOC_1482eb0c-8eac-44bc-8004-4d2c6a5483a1"

    .line 253
    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->appKey(Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adhoc/config/AdhocConfig$Builder;->enableDebugAssist(Z)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/adhoc/config/AdhocConfig$Builder;->build()Lcom/adhoc/config/AdhocConfig;

    move-result-object v0

    .line 261
    .local v0, "adhocConfig":Lcom/adhoc/config/AdhocConfig;
    invoke-static {v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->init(Lcom/adhoc/config/AdhocConfig;)V

    .line 262
    return-void
.end method

.method private initAndroidConfig()V
    .locals 2

    .line 207
    new-instance v0, Lcom/liepin/apply/model/FeatureModel;

    sget-object v1, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/liepin/apply/model/FeatureModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/liepin/apply/model/FeatureModel;->getFeature()V

    .line 208
    return-void
.end method

.method private initDb()V
    .locals 1

    .line 318
    new-instance v0, Lcom/liepin/apply/ApplyApplication$6;

    invoke-direct {v0, p0}, Lcom/liepin/apply/ApplyApplication$6;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    .line 327
    invoke-virtual {v0}, Lcom/liepin/apply/ApplyApplication$6;->start()V

    .line 328
    return-void
.end method

.method private initDynamicDomain()V
    .locals 1

    .line 338
    invoke-static {}, Lcom/liepin/apply/manager/DynamicDomainManager;->getInstance()Lcom/liepin/apply/manager/DynamicDomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liepin/apply/manager/DynamicDomainManager;->init()V

    .line 339
    return-void
.end method

.method private initGlobalConstant()V
    .locals 2

    .line 231
    invoke-static {}, Lcom/liepin/basemodule/manager/MemoryCacheManager;->getInstance()Lcom/liepin/basemodule/manager/MemoryCacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liepin/basemodule/manager/MemoryCacheManager;->updateGlobalConstant(Lcom/liepin/basemodule/manager/MemoryCacheManager$OnRequestCompleteListener;)V

    .line 232
    invoke-static {}, Lcom/liepin/basemodule/validator/ValidatorManager;->getInstance()Lcom/liepin/basemodule/validator/ValidatorManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/liepin/basemodule/validator/ValidatorManager;->updateGlobalConstant(Lcom/liepin/basemodule/validator/ValidatorManager$OnRequestCompleteListener;)V

    .line 233
    return-void
.end method

.method private initHttp()V
    .locals 2

    .line 290
    invoke-static {}, Lcom/liepin/apply/ApplyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/liepin/apply/R$string;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liepin/swift/httpclient/inters/impl/BaseHttpClient;->NETERRORTIP:Ljava/lang/String;

    .line 291
    return-void
.end method

.method private initIm()V
    .locals 1

    .line 286
    invoke-static {}, Lcom/liepin/apply/ApplyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liepin/emchat/wrapper/util/ImAppContextHolder;->initContext(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method private initLPModule()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initUUID()V

    .line 136
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/liepin/apply/ApplyApplication;->sResources:Landroid/content/res/Resources;

    .line 137
    invoke-static {}, Lcom/liepin/apply/Global;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 139
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->sendAppStartTLog()V

    .line 142
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initIm()V

    .line 143
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/liepin/basemodule/utils/BaseUtils;->initDefDP(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initHttp()V

    .line 145
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/liepin/apply/Global;->init(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initScreenShot()V

    .line 147
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initDb()V

    .line 149
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initDynamicDomain()V

    .line 150
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initAndroidConfig()V

    .line 151
    invoke-virtual {p0}, Lcom/liepin/apply/ApplyApplication;->initLogger()V

    .line 152
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initGlobalConstant()V

    .line 153
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initLPWebView()V

    .line 154
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initAdTestConfig()V

    .line 155
    return-void
.end method

.method private initLPWebView()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/liepin/apply/ApplyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liepin/webview/LPWebViewHolder;->init(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method private initScreenShot()V
    .locals 3

    .line 294
    invoke-static {}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->getInstance()Lcom/liepin/widget/screenshot/ScreenShotUtils;

    move-result-object v0

    sget-object v1, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/liepin/apply/ApplyApplication$4;

    invoke-direct {v2, p0}, Lcom/liepin/apply/ApplyApplication$4;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->init(Landroid/content/Context;Lcom/liepin/widget/screenshot/ScreenShotUtils$ShowViewManager;)V

    .line 300
    invoke-static {}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->getInstance()Lcom/liepin/widget/screenshot/ScreenShotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->startListener()V

    .line 301
    invoke-static {}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->getInstance()Lcom/liepin/widget/screenshot/ScreenShotUtils;

    move-result-object v0

    new-instance v1, Lcom/liepin/apply/ApplyApplication$5;

    invoke-direct {v1, p0}, Lcom/liepin/apply/ApplyApplication$5;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    invoke-virtual {v0, v1}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->setOnClickListener(Lcom/liepin/widget/screenshot/ScreenShotUtils$OnClickListener;)V

    .line 314
    return-void
.end method

.method private initUUID()V
    .locals 2

    .line 162
    invoke-static {}, Lcom/liepin/apply/Global;->hasUUID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    invoke-direct {v0}, Lcom/liepin/basemodule/mvp/model/GetUUIDModel;-><init>()V

    iput-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    sget-object v1, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liepin/basemodule/mvp/model/GetUUIDModel;->setParam(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mUuidModel:Lcom/liepin/basemodule/mvp/model/GetUUIDModel;

    new-instance v1, Lcom/liepin/apply/ApplyApplication$1;

    invoke-direct {v1, p0}, Lcom/liepin/apply/ApplyApplication$1;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    invoke-virtual {v0, v1}, Lcom/liepin/basemodule/mvp/model/GetUUIDModel;->doRequest(Lcom/liepin/basemodule/mvp/model/GetUUIDModel$GetUUIDListener;)V

    .line 195
    return-void
.end method

.method private sendAppStartTLog()V
    .locals 2

    .line 203
    invoke-static {}, Lcom/swift/analytics/core/LPTLogClient;->getInstance()Lcom/swift/analytics/core/LPTLogClient;

    move-result-object v0

    const-string v1, "I000000001"

    invoke-virtual {v0, v1}, Lcom/swift/analytics/core/LPTLogClient;->uploadLPTLog(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private showNewUserPush()V
    .locals 8

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/liepin/apply/Global;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/liepin/td/base/utils/SPUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, "kind":I
    invoke-static {}, Lcom/liepin/apply/Global;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liepin/apply/Global;->getNewUserPush(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/liepin/apply/Global;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-static {}, Lcom/liepin/apply/Global;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/liepin/apply/Global;->setNewUserPush(Ljava/lang/String;Z)V

    .line 425
    sget-object v2, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 426
    .local v2, "manager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v4, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    const-class v6, Lcom/liepin/apply/activity/CommonWebViewActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 428
    const-string v5, "redirectUrl"

    const-string v6, "https://m-c.liepin.com/lens/readme?imscid=R000012008"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    sget-object v5, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    const/high16 v6, 0x8000000

    invoke-static {v5, v3, v4, v6}, Lcom/growingio/android/sdk/autoburry/VdsAgent;->onPendingIntentGetActivityShortBefore(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v5, v3, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v5, v3, v4, v6, v7}, Lcom/growingio/android/sdk/autoburry/VdsAgent;->onPendingIntentGetActivityShortAfter(Landroid/content/Context;ILandroid/content/Intent;ILandroid/app/PendingIntent;)V

    move-object v5, v7

    .line 430
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v7, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/liepin/apply/R$drawable;->icon:I

    .line 431
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 432
    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string/jumbo v6, "\u9690\u85cf\u6280\u80fd\u5f00\u542f!"

    .line 433
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string/jumbo v6, "\u5927\u6570\u636e\u5e2e\u60a8\u6d1e\u6089\u804c\u4f4d\u80cc\u540e\u7684\u79d8\u5bc6"

    .line 434
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 435
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 437
    invoke-static {}, Lcom/liepin/apply/ApplyApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/liepin/apply/R$drawable;->icon:I

    invoke-static {v3, v6}, Lcom/networkbench/agent/impl/instrumentation/NBSBitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x2

    .line 438
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 440
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v2, :cond_0

    .line 441
    iget v3, p0, Lcom/liepin/apply/ApplyApplication;->NEW_USER_PUSH:I

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object v7, v2

    check-cast v7, Landroid/app/NotificationManager;

    invoke-static {v7, v3, v6}, Lcom/growingio/android/sdk/autoburry/VdsAgent;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 444
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v2    # "manager":Landroid/app/NotificationManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method


# virtual methods
.method public autoSetSearchHintIndex()V
    .locals 1

    .line 493
    iget v0, p0, Lcom/liepin/apply/ApplyApplication;->searchHintIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liepin/apply/ApplyApplication;->searchHintIndex:I

    .line 494
    return-void
.end method

.method public getAMapLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->aMapLocation:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public getCameraImgPath()Ljava/lang/String;
    .locals 3

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liepin/apply/ApplyApplication;->cameraImgPath:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->cameraImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->cameraImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/liepin/apply/model/ReleaseImageItem;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/liepin/apply/ApplyApplication;->mImgItemList:Ljava/util/List;

    return-object v0
.end method

.method public getSearchHintIndex()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/liepin/apply/ApplyApplication;->searchHintIndex:I

    return v0
.end method

.method public initLogger()V
    .locals 4

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liepin/apply/ApplyApplication$2;

    invoke-direct {v1, p0}, Lcom/liepin/apply/ApplyApplication$2;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method

.method public isLPApp()Z
    .locals 2

    .line 417
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/liepin/basemodule/utils/BaseUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "curProcessName":Ljava/lang/String;
    const-string v1, "com.lietou.mishu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onAppToBackground(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 373
    invoke-super {p0, p1}, Lcom/liepin/basemodule/interfaces/ApplicationLifeListenerImpl;->onAppToBackground(Landroid/app/Activity;)V

    .line 374
    invoke-static {}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->getInstance()Lcom/liepin/widget/screenshot/ScreenShotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->onStop()V

    .line 375
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->showNewUserPush()V

    .line 376
    invoke-static {}, Lcom/liepin/apply/Global;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Lcom/swift/analytics/core/LPTLogClient;->getInstance()Lcom/swift/analytics/core/LPTLogClient;

    move-result-object v0

    const-string v1, "O000000001"

    invoke-virtual {v0, v1}, Lcom/swift/analytics/core/LPTLogClient;->uploadLPTLog(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onAppToForeground(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 384
    invoke-super {p0, p1}, Lcom/liepin/basemodule/interfaces/ApplicationLifeListenerImpl;->onAppToForeground(Landroid/app/Activity;)V

    .line 386
    invoke-static {}, Lcom/liepin/apply/Global;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcom/liepin/apply/Global;->getAppKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    new-instance v0, Lcom/liepin/basemodule/mvp/model/UserLoginModel;

    invoke-direct {v0}, Lcom/liepin/basemodule/mvp/model/UserLoginModel;-><init>()V

    invoke-virtual {v0}, Lcom/liepin/basemodule/mvp/model/UserLoginModel;->autoLogin()V

    .line 392
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "APPStartupType"

    const-string v2, "otherStartup"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    invoke-static {}, Lcom/liepin/apply/ApplyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "S000015418"

    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSJSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lcom/swift/analytics/LPAnalytics;->addLogRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "object":Lorg/json/JSONObject;
    goto :goto_1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->getInstance()Lcom/liepin/widget/screenshot/ScreenShotUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liepin/widget/screenshot/ScreenShotUtils;->onResume()V

    .line 399
    invoke-virtual {p0}, Lcom/liepin/apply/ApplyApplication;->isLPApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/liepin/apply/ApplyApplication;->updateUserLocation()V

    .line 403
    :cond_2
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 404
    .local v0, "manager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_3

    .line 405
    iget v1, p0, Lcom/liepin/apply/ApplyApplication;->NEW_USER_PUSH:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 407
    :cond_3
    invoke-static {}, Lcom/liepin/apply/Global;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 408
    invoke-static {}, Lcom/swift/analytics/core/LPTLogClient;->getInstance()Lcom/swift/analytics/core/LPTLogClient;

    move-result-object v1

    const-string v2, "I000000001"

    invoke-virtual {v1, v2}, Lcom/swift/analytics/core/LPTLogClient;->uploadLPTLog(Ljava/lang/String;)V

    .line 411
    :cond_4
    invoke-static {}, Lcom/liepin/apply/Global;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/liepin/td/base/utils/Version;->isShowUpdateDialog:Z

    if-nez v1, :cond_5

    .line 412
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/liepin/td/base/utils/Version;->checkVersion(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 414
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .line 116
    invoke-super {p0, p1}, Lcom/liepin/basemodule/interfaces/ApplicationLifeListenerImpl;->onCreate(Landroid/app/Application;)V

    .line 117
    iget-boolean v0, p0, Lcom/liepin/apply/ApplyApplication;->hasInit:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liepin/apply/ApplyApplication;->hasInit:Z

    .line 119
    sput-object p1, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    .line 120
    invoke-direct {p0}, Lcom/liepin/apply/ApplyApplication;->initLPModule()V

    .line 122
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 126
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 127
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 131
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 132
    return-void
.end method

.method public setImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liepin/apply/model/ReleaseImageItem;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p1, "imgItemList":Ljava/util/List;, "Ljava/util/List<Lcom/liepin/apply/model/ReleaseImageItem;>;"
    iput-object p1, p0, Lcom/liepin/apply/ApplyApplication;->mImgItemList:Ljava/util/List;

    .line 364
    return-void
.end method

.method public updateUserLocation()V
    .locals 2

    .line 447
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    sget-object v1, Lcom/liepin/permission/Permission;->STORAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liepin/permission/LPPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    sget-object v1, Lcom/liepin/permission/Permission;->PHONE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liepin/permission/LPPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    sget-object v0, Lcom/liepin/apply/ApplyApplication;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/liepin/permission/LPPermission;->with(Landroid/content/Context;)Lcom/liepin/permission/Request;

    move-result-object v0

    sget-object v1, Lcom/liepin/permission/Permission;->LOCATION:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/liepin/permission/Request;->permission([Ljava/lang/String;)Lcom/liepin/permission/Request;

    move-result-object v0

    new-instance v1, Lcom/liepin/apply/ApplyApplication$7;

    invoke-direct {v1, p0}, Lcom/liepin/apply/ApplyApplication$7;-><init>(Lcom/liepin/apply/ApplyApplication;)V

    invoke-interface {v0, v1}, Lcom/liepin/permission/Request;->callback(Lcom/liepin/permission/PermissionListener;)Lcom/liepin/permission/Request;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lcom/liepin/permission/Request;->start()V

    .line 482
    :cond_0
    return-void
.end method
