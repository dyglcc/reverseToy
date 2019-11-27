.class public Lcom/adhoc/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/i$a;,
        Lcom/adhoc/i$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:Ljava/util/concurrent/ExecutorService;

.field private static e:Ljava/util/concurrent/Future;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adhoc/i;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/i;->e:Ljava/util/concurrent/Future;

    const-string v0, "current_version_number"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/adhoc/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/i;->c:J

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->e()Lorg/json/JSONArray;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const-string v1, "flags"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v3, "adhoc_abtest_flags_auto_visual"

    const-string v4, "__visualexperiment__"

    const-string v6, "{}"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    if-nez v1, :cond_34

    const/4 v0, 0x0

    :goto_33
    return-object v0

    :cond_34
    const-string v3, "__visualexperiment__"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "experiments"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_42
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_ac

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v6, "id"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "flags"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "__visualexperiment__"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_90

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "__visualexperiment__"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    :cond_7f
    invoke-static {}, Lcom/adhoc/i;->b()V

    move v4, v5

    :goto_83
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_86
    const-string v6, "flags"

    invoke-virtual {v10, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_8e
    move v4, v2

    goto :goto_83

    :cond_90
    move v6, v2

    move v7, v3

    :goto_92
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_de

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v7, v5

    goto :goto_92

    :cond_ac
    const-string v0, "adhoc_has_auto_experiment"

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "adhoc_has_code_experiment"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "adhoc_abtest_flags"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FlagUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSharePrefFlags -------- adhoc_abtest_flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_33

    :cond_de
    move v3, v7

    goto :goto_86
.end method

.method public static a()V
    .registers 3

    sget-object v0, Lcom/adhoc/i;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/adhoc/i;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/adhoc/i;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adhoc/i$1;

    invoke-direct {v1}, Lcom/adhoc/i$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, Lcom/adhoc/i;->e:Ljava/util/concurrent/Future;

    goto :goto_c
.end method

.method public static a(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 4

    invoke-static {}, Lcom/adhoc/af;->a()Lcom/adhoc/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/af;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/i;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/adhoc/i$2;

    invoke-direct {v1, p1}, Lcom/adhoc/i$2;-><init>(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/j;->d()V

    :goto_1d
    return-void

    :cond_1e
    invoke-static {p0, p1}, Lcom/adhoc/i;->b(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    goto :goto_1d
.end method

.method static synthetic a(Landroid/os/Handler;Lcom/adhoc/t;Lcom/adhoc/i$b;Ljava/lang/String;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/adhoc/i;->b(Landroid/os/Handler;Lcom/adhoc/t;Lcom/adhoc/i$b;Ljava/lang/String;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method

.method private static a(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/adhoc/i;->b(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method

.method private static a(Lcom/adhoc/t;Lcom/adhoc/i$b;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/adhoc/t;->a(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/adhoc/i$b;->a(Lcom/adhoc/i$b;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/adhoc/i$4;

    invoke-direct {v0, p2, p4}, Lcom/adhoc/i$4;-><init>(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/adhoc/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/adhoc/i;->b(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method

.method static a(J)Z
    .registers 6

    const/4 v1, 0x1

    sget-wide v2, Lcom/adhoc/i;->c:J

    cmp-long v0, p0, v2

    if-eqz v0, :cond_16

    move v0, v1

    :goto_8
    if-eqz v0, :cond_15

    const-string v2, "is_get_new_flag"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-wide p0, Lcom/adhoc/i;->b:J

    :cond_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b()V
    .registers 2

    const-string v0, "FlagUtils"

    const-string v1, "saveAutoExpNeedTrackerUV -------- "

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adhoc_is_need_track_uv_atuo"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static b(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 8

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/adhoc/af;->a()Lcom/adhoc/af;

    move-result-object v0

    new-instance v1, Lcom/adhoc/i$3;

    invoke-direct {v1, p1}, Lcom/adhoc/i$3;-><init>(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-virtual {v0, v1}, Lcom/adhoc/af;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    sget-object v2, Lcom/adhoc/b$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adhoc/t;->b(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    add-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->a(I)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "testTimeout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u56de\u8c03\u5f00\u59cb\u65f6\u95f4\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/adhoc/i$b;

    invoke-direct {v1, v0, p1}, Lcom/adhoc/i$b;-><init>(Lcom/adhoc/t;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v2

    new-instance v3, Lcom/adhoc/i$a;

    invoke-static {}, Lcom/adhoc/af;->a()Lcom/adhoc/af;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adhoc/af;->b()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4, v1, p1}, Lcom/adhoc/i$a;-><init>(Landroid/os/Handler;Lcom/adhoc/i$b;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-virtual {v2, v0, v3}, Lcom/adhoc/s;->a(Lcom/adhoc/t;Lcom/adhoc/r;)Z

    invoke-static {}, Lcom/adhoc/af;->a()Lcom/adhoc/af;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adhoc/af;->a(Ljava/lang/Runnable;J)Ljava/lang/Boolean;

    goto :goto_14
.end method

.method private static b(Landroid/os/Handler;Lcom/adhoc/t;Lcom/adhoc/i$b;Ljava/lang/String;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 14

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "The http response body is null"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/adhoc/i;->a(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    :goto_12
    return-void

    :cond_13
    if-eqz p2, :cond_1e

    :try_start_15
    invoke-static {p2}, Lcom/adhoc/i$b;->a(Lcom/adhoc/i$b;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adhoc/i;->a:Ljava/lang/String;

    if-nez v3, :cond_35

    const-string v3, "source_flags"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adhoc/i;->a:Ljava/lang/String;

    :cond_35
    sget-object v3, Lcom/adhoc/i;->a:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    const-string v0, "same flags return"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, v2, p0, p4}, Lcom/adhoc/i;->a(Lcom/adhoc/t;Lcom/adhoc/i$b;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    const-string v0, "is_get_new_flag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "Event-GET_EXPERIMENT_FS_FLAGS"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;)Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_59} :catch_c9
    .catchall {:try_start_15 .. :try_end_59} :catchall_e3

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_63
    :try_start_63
    const-string v3, "source_flags"

    invoke-static {v3, p3}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p3, Lcom/adhoc/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adhoc/j;->e()V

    invoke-static {v2}, Lcom/adhoc/i;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/adhoc/g;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/adhoc/i;->h()V

    const-string v4, "Event-GET_EXPERIMENT_FS_FLAGS"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;)Z

    const-string v4, "is_get_new_flag"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "testTimeout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u672c\u5730\u64cd\u4f5c\u8017\u65f6\u95f4\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v0, v4, v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v2, p0, p4}, Lcom/adhoc/i;->a(Lcom/adhoc/t;Lcom/adhoc/i$b;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    invoke-static {v3}, Lcom/adhoc/ac;->a(Lorg/json/JSONObject;)V

    const-string v0, "Flag"

    const-string v1, "Get server data"

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_be} :catch_c9
    .catchall {:try_start_63 .. :try_end_be} :catchall_e3

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catch_c9
    move-exception v0

    :try_start_ca
    const-string v1, "Flag"

    const-string v2, "Get server data"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/adhoc/i;->a(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_e3

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catchall_e3
    move-exception v0

    const-string v1, "Flag"

    const-string v2, "Get server data"

    const-string v3, "End."

    invoke-static {v1, v2, v3}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "The http response body is null"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/adhoc/i;->a(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    :goto_13
    return-void

    :cond_14
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Event-GET_EXPERIMENT_FS_FLAGS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;)Z

    sget-object v1, Lcom/adhoc/i;->a:Ljava/lang/String;

    if-nez v1, :cond_31

    const-string v1, "source_flags"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adhoc/i;->a:Ljava/lang/String;

    :cond_31
    sget-object v1, Lcom/adhoc/i;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v0, "same flags return"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    const-string v0, "is_get_new_flag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_48} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_48} :catch_a7
    .catchall {:try_start_14 .. :try_end_48} :catchall_b6

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_52
    :try_start_52
    const-string v1, "source_flags"

    invoke-static {v1, p0}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/adhoc/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/j;->e()V

    invoke-static {v0}, Lcom/adhoc/i;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/i;->h()V

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adhoc/g;->a(Lorg/json/JSONObject;)V

    const-string v1, "is_get_new_flag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/adhoc/ac;->a(Lorg/json/JSONObject;)V

    const-string v0, "Flag"

    const-string v1, "Get server data"

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_82} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_82} :catch_a7
    .catchall {:try_start_52 .. :try_end_82} :catchall_b6

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_8c
    move-exception v0

    :try_start_8d
    const-string v1, "Flag"

    const-string v2, "Get server data"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adhoc/i;->a(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_b6

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_a7
    move-exception v0

    :try_start_a8
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_b6

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "End."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catchall_b6
    move-exception v0

    const-string v1, "Flag"

    const-string v2, "Get server data"

    const-string v3, "End."

    invoke-static {v1, v2, v3}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p0, :cond_9

    invoke-static {}, Lcom/adhoc/i;->c()Lorg/json/JSONObject;

    move-result-object p0

    :cond_9
    if-nez p0, :cond_18

    invoke-static {}, Lcom/adhoc/adhocsdk/ExperimentFlags;->getNullExperimentflag()Lcom/adhoc/adhocsdk/ExperimentFlags;

    move-result-object v0

    :goto_f
    const-string v1, "EXPERIMENT_OK"

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->setFlagState(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/adhoc/adhocsdk/OnAdHocReceivedData;->onReceivedData(Lcom/adhoc/adhocsdk/ExperimentFlags;)V

    goto :goto_2

    :cond_18
    new-instance v0, Lcom/adhoc/adhocsdk/ExperimentFlags;

    invoke-direct {v0, p0}, Lcom/adhoc/adhocsdk/ExperimentFlags;-><init>(Lorg/json/JSONObject;)V

    goto :goto_f
.end method

.method static c()Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "adhoc_abtest_flags"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_17

    move-object v0, v1

    goto :goto_f

    :catch_17
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public static d()Z
    .registers 1

    invoke-static {}, Lcom/adhoc/i;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static e()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/i;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic f()Lcom/adhoc/u;
    .registers 1

    invoke-static {}, Lcom/adhoc/i;->g()Lcom/adhoc/u;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/adhoc/u;
    .registers 2

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adhoc/t;->b(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->c(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    sget-object v1, Lcom/adhoc/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adhoc/s;->a(Lcom/adhoc/t;)Lcom/adhoc/u;

    move-result-object v0

    return-object v0
.end method

.method private static h()V
    .registers 4

    const-string v0, "current_version_number"

    sget-wide v2, Lcom/adhoc/i;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Long;)V

    sget-wide v0, Lcom/adhoc/i;->b:J

    sput-wide v0, Lcom/adhoc/i;->c:J

    return-void
.end method
