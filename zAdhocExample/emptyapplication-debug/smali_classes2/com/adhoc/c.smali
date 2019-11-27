.class public Lcom/adhoc/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/adhoc/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adhoc/c;->e:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/adhoc/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adhoc/c;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/adhoc/c;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/adhoc/c;->a:Lcom/adhoc/c;

    if-nez v0, :cond_13

    const-class v1, Lcom/adhoc/c;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_19

    :try_start_7
    sget-object v0, Lcom/adhoc/c;->a:Lcom/adhoc/c;

    if-nez v0, :cond_12

    new-instance v0, Lcom/adhoc/c;

    invoke-direct {v0, p0}, Lcom/adhoc/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adhoc/c;->a:Lcom/adhoc/c;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    :goto_13
    sget-object v0, Lcom/adhoc/c;->a:Lcom/adhoc/c;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    goto :goto_2
.end method

.method private c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/adhoc/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/k;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_13

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    const-string v0, "json mSummary is error!"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    goto :goto_8

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adhoc/c;->e:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake track exid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_51

    move-result v1

    if-eqz v1, :cond_24

    :goto_22
    monitor-exit p0

    return-object v0

    :cond_24
    :try_start_24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_51

    :try_start_30
    const-string v1, "key"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "experiment_ids"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_4d} :catch_54
    .catchall {:try_start_30 .. :try_end_4d} :catchall_51

    :goto_4d
    :try_start_4d
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_22

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_54
    move-exception v1

    :try_start_55
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_51

    goto :goto_4d
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 14

    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_65

    if-nez p3, :cond_a

    :cond_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track experiments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v2, v3, :cond_8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_65

    :try_start_3c
    const-string v5, "key"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "value"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "timestamp"

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "experiment_ids"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_59} :catch_60
    .catchall {:try_start_3c .. :try_end_59} :catchall_65

    :try_start_59
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_5c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2a

    :catch_60
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_65

    goto :goto_5c

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "stats"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_31

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_31
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_36
    if-ge v0, v3, :cond_9

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_42
    return-object v1
.end method

.method public a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
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
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/adhoc/c;->a(Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/adhoc/c;->a(Ljava/util/List;)Lorg/json/JSONArray;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_28

    move-result-object v1

    :try_start_8
    const-string v2, "stats"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_33

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tracker json data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    const-string v0, "generatorJsonData is null"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_27

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/adhoc/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/a;->a()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_6b

    move-result-object p2

    :cond_15
    :try_start_15
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_key"

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    const-string v3, "network_state"

    if-nez v1, :cond_33

    const-string v1, ""

    :cond_33
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "summary"

    iget-object v2, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3d
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_58

    :cond_45
    iget-object v1, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_50

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    :cond_50
    const-string v1, "custom"

    iget-object v2, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_57
    return-object v0

    :cond_58
    const-string v1, "custom"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_62} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_62} :catch_6b

    goto :goto_57

    :catch_63
    move-exception v1

    :try_start_64
    const-string v1, "JSONException when filling basic key-value parameters."

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_69} :catch_6b

    const/4 v0, 0x0

    goto :goto_57

    :catch_6b
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_57
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    const-string v0, "\u53c2\u6570\u6709\u8bef,key \u6216\u8005 value \u7a7a"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/adhoc/c;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adhoc/c;->e:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/adhoc/c;->a(Ljava/util/Map;)V

    goto :goto_11
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/adhoc/c;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    goto :goto_2
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/adhoc/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/a;->a()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_41

    move-result-object v1

    :try_start_f
    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_key"

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_26

    const-string v1, "summary"

    iget-object v2, p0, Lcom/adhoc/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    iget-object v1, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_31

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    :cond_31
    const-string v1, "custom"

    iget-object v2, p0, Lcom/adhoc/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_38} :catch_39
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_38} :catch_41

    :goto_38
    return-object v0

    :catch_39
    move-exception v1

    :try_start_3a
    const-string v1, "JSONException when filling basic key-value parameters."

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3f} :catch_41

    const/4 v0, 0x0

    goto :goto_38

    :catch_41
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_38
.end method
