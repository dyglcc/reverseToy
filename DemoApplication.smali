.class public Lcom/example/adhoc/base/DemoApplication;
.super Landroid/app/Application;
.source "DemoApplication.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "ADHOC_6cd6a401-05ca-4ae8-acb1-35254d2f3042"

.field private static final TAG:Ljava/lang/String; = "DemoApplication"

.field private static final TAG2:Ljava/lang/String; = "demo-runner"

.field public static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/example/adhoc/base/DemoApplication;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private deleteForceClient()V
    .locals 4

    .line 204
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 205
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://experiment.appadhoc.com/delete_all_force_clients?client_id=xxxx"

    .line 206
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 209
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/example/adhoc/base/DemoApplication$2;

    invoke-direct {v3, p0}, Lcom/example/adhoc/base/DemoApplication$2;-><init>(Lcom/example/adhoc/base/DemoApplication;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 220
    return-void
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 6

    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 172
    .local v0, "pid":I
    const-string v1, ""

    .line 173
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/adhoc/base/DemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 174
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 175
    .local v4, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_0

    .line 176
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 178
    .end local v4    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 199
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 200
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method public isMainProcess()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/example/adhoc/base/DemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/example/adhoc/base/DemoApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnitTest()Z
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 11

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    sput-object p0, Lcom/example/adhoc/base/DemoApplication;->sContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/example/adhoc/base/DemoApplication$1;

    invoke-direct {v0, p0}, Lcom/example/adhoc/base/DemoApplication$1;-><init>(Lcom/example/adhoc/base/DemoApplication;)V

    invoke-virtual {p0, v0}, Lcom/example/adhoc/base/DemoApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    const-string v0, "demo-runner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: adhocsdk init.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/example/adhoc/base/DemoApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/example/adhoc/base/DemoApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "sdfsafs1"

    .line 100
    .local v0, "clientId":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/example/adhoc/services/Myservice;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/example/adhoc/base/DemoApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    .local v1, "t1":J
    new-instance v3, Lcom/adhoc/config/AdhocConfig$Builder;

    invoke-direct {v3}, Lcom/adhoc/config/AdhocConfig$Builder;-><init>()V

    .line 105
    invoke-virtual {v3, p0}, Lcom/adhoc/config/AdhocConfig$Builder;->context(Landroid/content/Context;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    const-string v4, "ADHOC_6cd6a401-05ca-4ae8-acb1-35254d2f3042"

    .line 107
    invoke-virtual {v3, v4}, Lcom/adhoc/config/AdhocConfig$Builder;->appKey(Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adhoc/config/AdhocConfig$Builder;->enableDebugAssist(Z)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    const-string v5, "sex"

    const-string v6, "male"

    .line 110
    invoke-virtual {v3, v5, v6}, Lcom/adhoc/config/AdhocConfig$Builder;->addCustom(Ljava/lang/String;Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    const-string v5, "age"

    const-string v6, "20"

    .line 111
    invoke-virtual {v3, v5, v6}, Lcom/adhoc/config/AdhocConfig$Builder;->addCustom(Ljava/lang/String;Ljava/lang/String;)Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/adhoc/config/AdhocConfig$Builder;->supportMultiProcess()Lcom/adhoc/config/AdhocConfig$Builder;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/adhoc/config/AdhocConfig$Builder;->build()Lcom/adhoc/config/AdhocConfig;

    move-result-object v3

    .line 136
    .local v3, "adhocConfig":Lcom/adhoc/config/AdhocConfig;
    const-string v5, "demo-runner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v1

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "demo-runner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/example/adhoc/base/DemoApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onCreate: start --no support"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v3}, Lcom/adhoc/adhocsdk/AdhocTracker;->init(Lcom/adhoc/config/AdhocConfig;)V

    .line 146
    const-string v5, "flag_init"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adhoc/adhocsdk/AdhocTracker;->getFlag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v5, 0x14

    .line 149
    .local v5, "i":I
    :goto_1
    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 150
    const-string v6, "flag_int"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/adhoc/adhocsdk/AdhocTracker;->getFlag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 151
    .local v6, "a":Z
    const-string v7, "DemoApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: value a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v6    # "a":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    .end local v5    # "i":I
    :cond_1
    const-string v4, "demo-runner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clientID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/example/adhoc/base/DemoApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    return-void

    .line 162
    :cond_2
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 164
    invoke-virtual {p0}, Lcom/example/adhoc/base/DemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "6bc6310c69"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 165
    return-void
.end method
