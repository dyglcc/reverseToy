.class public Lcom/adhoc/ah;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 7

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    const-string v0, "Event-GET_EXPERIMENT_FLAGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const-string v0, "Event-GET_EXPERIMENT_FS_FLAGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "Event-GET_SDK_CONFIG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "Event-crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x2

    goto :goto_9

    :cond_2e
    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/e;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_62

    invoke-virtual {v0}, Lcom/adhoc/e;->e()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_64

    :cond_62
    move v0, v2

    goto :goto_9

    :cond_64
    invoke-virtual {v0, p1}, Lcom/adhoc/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v2

    goto :goto_9

    :cond_6c
    move v0, v1

    goto :goto_9
.end method
