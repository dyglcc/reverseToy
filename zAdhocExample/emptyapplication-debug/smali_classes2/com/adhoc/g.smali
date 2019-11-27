.class public Lcom/adhoc/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "ExperimentUtils"

    const-string v1, "ExperimentUtils -------- init start"

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/adhoc/g;->a:Landroid/content/Context;

    const-string v0, "ExperimentUtils"

    const-string v1, "ExperimentUtils -------- init end"

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/g$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhoc/g;
    .registers 1

    invoke-static {}, Lcom/adhoc/g$a;->a()Lcom/adhoc/g;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0, p1}, Lcom/adhoc/e;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/g;->b:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/adhoc/e;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    invoke-virtual {v0}, Lcom/adhoc/e;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_2a
    move-object v0, v1

    goto :goto_4
.end method

.method public a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/adhoc/e;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/e;",
            ">;)",
            "Lcom/adhoc/e;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, "flags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/adhoc/e;

    invoke-direct {v3}, Lcom/adhoc/e;-><init>()V

    const-string v1, "stats"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "stats"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/adhoc/e;->a(Lorg/json/JSONArray;)V

    :cond_2d
    invoke-virtual {v3, v0}, Lcom/adhoc/e;->c(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/adhoc/e;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    move v4, v5

    :goto_49
    if-ge v4, v7, :cond_81

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_55

    :goto_51
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_49

    :cond_55
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/adhoc/e;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-virtual {v0}, Lcom/adhoc/e;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_7d
    invoke-virtual {v3, v1, v2}, Lcom/adhoc/e;->a(Ljava/lang/String;Z)V

    goto :goto_51

    :cond_81
    const-string v0, "ExperimentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addElementFromNetWork experiment.checkAllCalled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/adhoc/e;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4
.end method

.method protected a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adhoc/g;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    invoke-virtual {v0}, Lcom/adhoc/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/adhoc/e;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_44
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_44

    :cond_66
    const-string v2, "flags"

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "allcalled"

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stats"

    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_92

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_86
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_12

    :cond_92
    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_86

    :cond_97
    const-string v0, "ExperimentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShareExperiment -------- EXPERIMENTS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiments"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .registers 8

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string v0, "experiments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4c

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_22

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    const-string v3, "ExperimentUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateExperiments -------- item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v3}, Lcom/adhoc/g;->a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/adhoc/e;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_43} :catch_44
    .catchall {:try_start_5 .. :try_end_43} :catchall_49

    goto :goto_1f

    :catch_44
    move-exception v0

    :try_start_45
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_3

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_51} :catch_44
    .catchall {:try_start_4c .. :try_end_51} :catchall_49

    goto :goto_3

    :catch_52
    move-exception v0

    :try_start_53
    const-string v0, "error save sharepref"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_58} :catch_44
    .catchall {:try_start_53 .. :try_end_58} :catchall_49

    goto :goto_3
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p0, p2}, Lcom/adhoc/g;->d(Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-direct {v0}, Lcom/adhoc/g;->g()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->c()V

    :cond_27
    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p2}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adhoc/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/adhoc/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adhoc/g;->b(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4a} :catch_4b

    goto :goto_2

    :catch_4b
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b(Lorg/json/JSONObject;)Lcom/adhoc/e;
    .registers 13

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "ExperimentUtils"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_18

    move-object v0, v1

    goto :goto_4

    :cond_18
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v0, "ExperimentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addElement jsonarray = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/adhoc/e;

    invoke-direct {v2}, Lcom/adhoc/e;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "stats"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "stats"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adhoc/e;->a(Lorg/json/JSONArray;)V

    :cond_5a
    invoke-virtual {v2, v6}, Lcom/adhoc/e;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/adhoc/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_62
    if-ge v3, v5, :cond_bf

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_6e

    :goto_6a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_62

    :cond_6e
    const-string v0, "ExperimentUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addElement JsonObject = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "ExperimentUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addElement key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "__autoexperiment__"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    move-object v0, v1

    goto/16 :goto_4

    :cond_b7
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v0, v7}, Lcom/adhoc/e;->a(Ljava/lang/String;Z)V

    goto :goto_6a

    :cond_bf
    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto/16 :goto_4
.end method

.method public b()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    iget-object v0, v0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {v0, p1}, Lcom/adhoc/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adhoc/l;->a:Z

    invoke-static {}, Lcom/adhoc/aa;->a()Lcom/adhoc/aa;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adhoc/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adhoc/g;->c(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_35
    invoke-virtual {p0, v0}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_c

    :catch_39
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_40} :catch_39

    goto :goto_35
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhoc/g;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    const-string v0, "experiments"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_42

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x0

    :try_start_16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_3d
    .catchall {:try_start_16 .. :try_end_1b} :catchall_42

    move-object v1, v0

    :goto_1c
    if-eqz v1, :cond_5

    :try_start_1e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_45

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adhoc/g;->b(Lorg/json/JSONObject;)Lcom/adhoc/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_42

    goto :goto_1c

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_45
    const/4 v0, 0x1

    :try_start_46
    iput-boolean v0, p0, Lcom/adhoc/g;->b:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_42

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    const-string v0, "ExperimentUtils"

    const-string v1, "all flag used"

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Event-GET_EXPERIMENT_FLAGS"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    return-void
.end method

.method public d()Lorg/json/JSONArray;
    .registers 6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "CONTROL"

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_33
    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :cond_3b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "CONTROL"

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_46
    return-object v1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_25
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v0

    iget-object v1, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, p1}, Lcom/adhoc/g;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/adhoc/e;

    move-result-object v1

    if-eq v1, v0, :cond_9

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_25
    .catchall {:try_start_b .. :try_end_24} :catchall_2a

    goto :goto_9

    :catch_25
    move-exception v0

    :try_start_26
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_9

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2d
    if-eqz v1, :cond_42

    :try_start_2f
    iget-object v2, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_42
    iget-object v1, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4b} :catch_25
    .catchall {:try_start_2f .. :try_end_4b} :catchall_2a

    goto :goto_9
.end method

.method public e()Lorg/json/JSONArray;
    .registers 7

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    invoke-virtual {v0}, Lcom/adhoc/e;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2c} :catch_47

    :try_start_2c
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/adhoc/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0}, Lcom/adhoc/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_41} :catch_42

    goto :goto_f

    :catch_42
    move-exception v0

    :try_start_43
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_f

    :catch_47
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_4c
    return-object v0

    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_47

    move-result v0

    if-nez v0, :cond_69

    :try_start_53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    const-string v3, "CONTROL"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    const-string v3, "CONTROL"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_69} :catch_6b

    :cond_69
    :goto_69
    move-object v0, v1

    goto :goto_4c

    :catch_6b
    move-exception v0

    :try_start_6c
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_47

    goto :goto_69
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/adhoc/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/adhoc/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
