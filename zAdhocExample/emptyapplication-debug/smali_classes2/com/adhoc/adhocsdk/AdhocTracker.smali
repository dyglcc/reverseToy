.class public Lcom/adhoc/adhocsdk/AdhocTracker;
.super Ljava/lang/Object;


# static fields
.field public static APPKEY:Ljava/lang/String;

.field private static crashed:Z

.field private static final current_api_level:I

.field public static sAdhocContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/adhoc/adhocsdk/AdhocTracker;->current_api_level:I

    sput-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    sput-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static abNormalSdkState()Z
    .registers 3

    const/4 v0, 0x1

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/o;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "AdhocTracker"

    const-string v2, "AdhocSDK\u7248\u672c\u9a8c\u8bc1\u5931\u8d25,\u8bf7\u67e5\u770b\u540e\u53f0\u914d\u7f6e\u6700\u4f4e\u7248\u672c\u53f7\u3002"

    invoke-static {v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    sget v1, Lcom/adhoc/adhocsdk/AdhocTracker;->current_api_level:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_24

    const-string v1, "AdhocTracker"

    const-string v2, "ADHOC_SDK\u4ec5\u652f\u6301 Android SDK API level 11\u53ca\u4ee5\u4e0a,level 10\u53ca\u4ee5\u4e0b\u7248\u672cclient\u5c06\u4e0d\u52a0\u5165\u8bd5\u9a8c"

    invoke-static {v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_24
    sget-boolean v1, Lcom/adhoc/adhocsdk/AdhocTracker;->crashed:Z

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/adhoc/adhocsdk/AdhocTracker;->crashed:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->closeAndroidPDialog()V

    return-void
.end method

.method public static asyncGetFlag(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    if-gez p0, :cond_14

    :goto_a
    :try_start_a
    invoke-static {v0, p1}, Lcom/adhoc/i;->b(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f

    :goto_d
    const/4 v0, 0x1

    goto :goto_7

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_14
    move v0, p0

    goto :goto_a
.end method

.method public static asyncGetFlag(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z
    .registers 2

    const/16 v0, 0x7530

    invoke-static {v0, p0}, Lcom/adhoc/adhocsdk/AdhocTracker;->asyncGetFlag(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z

    move-result v0

    return v0
.end method

.method private static checkHost(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "host\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a."

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "\u534f\u8bae\u9700\u4ee5http\u5f00\u5934"

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private static closeAndroidPDialog()V
    .registers 4

    :try_start_0
    const-string v0, "android.content.pm.PackageParser$Package"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_40

    :goto_16
    :try_start_16
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mHiddenApiWarningShown"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_45

    :goto_3f
    return-void

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method

.method public static fastGetFlag(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    if-gez p0, :cond_14

    :goto_a
    :try_start_a
    invoke-static {v0, p1}, Lcom/adhoc/i;->a(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f

    :goto_d
    const/4 v0, 0x1

    goto :goto_7

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_14
    move v0, p0

    goto :goto_a
.end method

.method public static declared-synchronized getClientId()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/adhoc/adhocsdk/AdhocTracker;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    :goto_b
    monitor-exit v1

    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-nez v0, :cond_14

    const-string v0, ""

    goto :goto_b

    :cond_14
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/a;->a()Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    move-result-object v0

    goto :goto_b

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentExperiments()Lorg/json/JSONArray;
    .registers 1

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->e()Lorg/json/JSONArray;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_b

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_b
.end method

.method public static getCurrentVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "5.1.3"

    return-object v0
.end method

.method public static getFlag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/j;->b()Lcom/adhoc/adhocsdk/ExperimentFlags;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->getFlag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6
.end method

.method public static init(Lcom/adhoc/config/AdhocConfig;)V
    .registers 3

    const-string v0, "AdhocTracker"

    const-string v1, "init start."

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdhocConfig can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    :goto_15
    return-void

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/adhoc/config/AdhocConfig;->a(Lcom/adhoc/config/AdhocConfig;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "AdhocSDK \u521d\u59cb\u5316\u5931\u8d25\uff08\u8bbe\u7f6eclientId\u4e0d\u80fd\u4e3a\u7a7a\uff09"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_15

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    :goto_26
    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v1, Lcom/adhoc/adhocsdk/AdhocTracker$1;

    invoke-direct {v1}, Lcom/adhoc/adhocsdk/AdhocTracker$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_33
    :try_start_33
    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    const-string v1, "com.tester.debug"

    invoke-static {v0, v1}, Lcom/adhoc/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_43
    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Lcom/adhoc/ag;->a(Z)V

    invoke-static {}, Lcom/adhoc/am;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->setBack2Menu(Landroid/content/Context;)V

    goto :goto_26

    :cond_53
    const/4 v0, 0x0

    goto :goto_44

    :cond_55
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ac;->a(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_5a} :catch_22

    goto :goto_26
.end method

.method private static setBack2Menu(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/adhoc/ae;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v2, Lcom/adhoc/adhocsdk/AdhocTracker$2;

    invoke-direct {v2, v1}, Lcom/adhoc/adhocsdk/AdhocTracker$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_6
.end method

.method public static setClientId(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adhoc/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static setEditorHost(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/adhoc/adhocsdk/AdhocTracker;->checkHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    sput-object p0, Lcom/adhoc/b$a;->b:Ljava/lang/String;

    sput-object p1, Lcom/adhoc/b$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static setExperimentHost(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/adhoc/adhocsdk/AdhocTracker;->checkHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apps/{app_id}/exp_last_updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "get_flags_async"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apps/{app_id}/sdk_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "force_clients"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete_all_force_clients"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->i:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method public static setTrackerHost(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/adhoc/adhocsdk/AdhocTracker;->checkHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tracker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->f:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static setUploadHost(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/adhoc/adhocsdk/AdhocTracker;->checkHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "codeScreenShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/b$a;->h:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adhoc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Number;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Number;Ljava/util/HashMap;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/adhoc/l;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    goto :goto_7

    :catch_e
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x0

    invoke-static {p0, p2, v1, p1}, Lcom/adhoc/l;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    goto :goto_7

    :catch_e
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
