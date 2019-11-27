.class public Lcom/adhoc/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:J

.field private static c:Z

.field private static d:J

.field private static e:Z

.field private static f:Lcom/adhoc/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/adhoc/l;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/l;->b:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adhoc/l;->c:Z

    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/adhoc/l;->d:J

    sput-boolean v2, Lcom/adhoc/l;->e:Z

    new-instance v0, Lcom/adhoc/ah;

    invoke-direct {v0}, Lcom/adhoc/ah;-><init>()V

    sput-object v0, Lcom/adhoc/l;->f:Lcom/adhoc/ah;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/adhoc/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/adhoc/l;->d(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v3, :cond_46

    :try_start_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_36

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_3d} :catch_41

    :goto_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_3d

    :cond_46
    move-object v0, v1

    goto :goto_c
.end method

.method public static a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/c;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_11
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_4a

    :cond_3d
    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_15

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    :cond_49
    return-object v1

    :cond_4a
    :try_start_4a
    invoke-virtual {v0, p0}, Lcom/adhoc/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_57} :catch_45

    goto :goto_15
.end method

.method public static a()V
    .registers 0

    invoke-static {}, Lcom/adhoc/l;->g()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v1, Lcom/adhoc/l$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adhoc/l$1;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1f

    :try_start_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lcom/adhoc/c;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/adhoc/l;->a(Lorg/json/JSONArray;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/l;->c()V

    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x2

    if-ne p4, v1, :cond_35

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/g;->d()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/adhoc/c;->a(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_14

    :cond_35
    if-nez p4, :cond_14

    invoke-static {p0}, Lcom/adhoc/l;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/adhoc/c;->a(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_14

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    const-class v1, Lcom/adhoc/l;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_17

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/adhoc/l;->a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    monitor-exit v1

    goto :goto_2

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "clientId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_3d

    :goto_5
    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increment_cache_file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adhoc/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_b
    invoke-static {p0, p2}, Lcom/adhoc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-static {p0, p1, p2}, Lcom/adhoc/l;->b(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/adhoc/l;->e:Z

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/adhoc/l;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v7, v3, 0x1

    move v5, v4

    :goto_3b
    if-ge v5, v7, :cond_16

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v9, v5, 0x64

    add-int/lit8 v3, v7, -0x1

    if-ne v5, v3, :cond_63

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_4c
    invoke-interface {v0, v9, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v3

    invoke-virtual {v3, v8, p1, v1}, Lcom/adhoc/c;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_68

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3b

    :cond_63
    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v3, 0x64

    goto :goto_4c

    :cond_68
    invoke-static {v3}, Lcom/adhoc/l;->a(Lorg/json/JSONObject;)Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-static {v3, p1, v1}, Lcom/adhoc/l;->c(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    move v2, v4

    goto :goto_5f

    :cond_73
    move v0, v2

    goto :goto_8
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "TrackerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send -------- request body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stats"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    :goto_27
    return v0

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    sget-object v2, Lcom/adhoc/b$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lcom/adhoc/t;->c(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adhoc/t;->b(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v1

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adhoc/s;->a(Lcom/adhoc/t;)Lcom/adhoc/u;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adhoc/u;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v2}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrackerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send -------- success response result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_70} :catch_72

    const/4 v0, 0x1

    goto :goto_27

    :catch_72
    move-exception v1

    const-string v2, "TrackerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send -------- Throw error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public static b()V
    .registers 2

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v1, Lcom/adhoc/l$2;

    invoke-direct {v1}, Lcom/adhoc/l$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string v0, "clientId"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_76

    :goto_8
    invoke-static {p1}, Lcom/adhoc/l;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/am;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other_increment_cache_file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/adhoc/h;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_3d
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_7b

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_48
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_4b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other_increment_cache_file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adhoc/h;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_70} :catch_71

    goto :goto_2

    :catch_71
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_76
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_7b
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_48
.end method

.method public static b(Z)V
    .registers 3

    if-eqz p0, :cond_6

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adhoc/l;->d:J

    :cond_6
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/adhoc/l;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/adhoc/l;->f()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/adhoc/l;->d()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_17
    const-string v2, "TrackerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestSync -------- isCanPush = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    sput-boolean v1, Lcom/adhoc/l;->c:Z

    invoke-static {}, Lcom/adhoc/l;->i()V

    goto :goto_9

    :cond_37
    move v0, v1

    goto :goto_17
.end method

.method private static c(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "stats"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/adhoc/l;->a(Lorg/json/JSONArray;Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "TrackerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFailedTrackerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/adhoc/l;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/adhoc/h;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2e
    move v1, v0

    goto :goto_11

    :cond_30
    move v0, v1

    goto :goto_b

    :cond_32
    move v0, v1

    goto :goto_2e
.end method

.method static d()Z
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/adhoc/l;->b:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increment_cache_file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other_increment_cache_file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adhoc/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "TrackerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "///TrackIntervalTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/adhoc/l;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/adhoc/l;->c:Z

    if-nez v3, :cond_74

    sget-wide v4, Lcom/adhoc/l;->d:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_74

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-nez v0, :cond_74

    sget-boolean v0, Lcom/adhoc/l;->a:Z

    if-nez v0, :cond_74

    const/4 v0, 0x7

    if-lt v2, v0, :cond_76

    :cond_74
    const/4 v0, 0x1

    :goto_75
    return v0

    :cond_76
    const/4 v0, 0x0

    goto :goto_75
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adhoc/am;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/adhoc/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adhoc/l;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static f()Z
    .registers 1

    sget-boolean v0, Lcom/adhoc/l;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ak;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_5
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const-class v1, Lcom/adhoc/l;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/adhoc/h;->a()Lcom/adhoc/h;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/adhoc/h;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_12

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_94

    const-string v1, "TrackerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOtherData --------- other_cache = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "TrackerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOtherData -------- custom key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-static {v0}, Lcom/adhoc/l;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v0, "TrackerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOtherData -------- tracker = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_80
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_97

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    invoke-static {v7, v5}, Lcom/adhoc/l;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_a3

    move v0, v2

    :goto_9e
    move v1, v0

    goto :goto_30

    :cond_a0
    move v0, v1

    goto/16 :goto_11

    :cond_a3
    move v0, v1

    goto :goto_9e
.end method

.method private static g(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    :cond_26
    return-object v1
.end method

.method public static g()V
    .registers 2

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v1, Lcom/adhoc/l$3;

    invoke-direct {v1}, Lcom/adhoc/l$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increment_cache_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/l;->e(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other_increment_cache_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/adhoc/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/l;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_45

    if-eqz v1, :cond_45

    sget-wide v0, Lcom/adhoc/l;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/adhoc/l;->k()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method public static i()V
    .registers 1

    invoke-static {}, Lcom/adhoc/l;->h()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adhoc/l;->a:Z

    return-void
.end method

.method static synthetic j()Lcom/adhoc/ah;
    .registers 1

    sget-object v0, Lcom/adhoc/l;->f:Lcom/adhoc/ah;

    return-object v0
.end method

.method private static k()V
    .registers 4

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-nez v0, :cond_e

    sget-wide v0, Lcom/adhoc/l;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/l;->b:J

    goto :goto_e
.end method
