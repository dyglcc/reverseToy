.class public final Lcom/adhocsdk/zxing/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhocsdk/zxing/k;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;"
        }
    .end annotation
.end field

.field private b:[Lcom/adhocsdk/zxing/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/adhocsdk/zxing/c;)Lcom/adhocsdk/zxing/m;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    iget-object v0, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    :try_start_c
    iget-object v4, p0, Lcom/adhocsdk/zxing/h;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lcom/adhocsdk/zxing/k;->a(Lcom/adhocsdk/zxing/c;Ljava/util/Map;)Lcom/adhocsdk/zxing/m;
    :try_end_11
    .catch Lcom/adhocsdk/zxing/l; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lcom/adhocsdk/zxing/c;)Lcom/adhocsdk/zxing/m;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    iget-object v0, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/h;->a(Ljava/util/Map;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/h;->b(Lcom/adhocsdk/zxing/c;)Lcom/adhocsdk/zxing/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/adhocsdk/zxing/c;Ljava/util/Map;)Lcom/adhocsdk/zxing/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/zxing/c;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/adhocsdk/zxing/h;->a(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/h;->b(Lcom/adhocsdk/zxing/c;)Lcom/adhocsdk/zxing/m;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/adhocsdk/zxing/k;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/adhocsdk/zxing/h;->a:Ljava/util/Map;

    if-eqz p1, :cond_c3

    sget-object v0, Lcom/adhocsdk/zxing/e;->d:Lcom/adhocsdk/zxing/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    move v3, v2

    :goto_f
    if-nez p1, :cond_c6

    const/4 v0, 0x0

    :goto_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a2

    sget-object v5, Lcom/adhocsdk/zxing/a;->o:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->p:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->h:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->g:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->b:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->c:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->d:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->e:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->i:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->m:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Lcom/adhocsdk/zxing/a;->n:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    :cond_71
    move v1, v2

    :cond_72
    if-eqz v1, :cond_76

    if-nez v3, :cond_76

    :cond_76
    sget-object v2, Lcom/adhocsdk/zxing/a;->l:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    new-instance v2, Lcom/adhocsdk/zxing/aq;

    invoke-direct {v2}, Lcom/adhocsdk/zxing/aq;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_86
    sget-object v2, Lcom/adhocsdk/zxing/a;->f:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8e
    sget-object v2, Lcom/adhocsdk/zxing/a;->a:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_96
    sget-object v2, Lcom/adhocsdk/zxing/a;->j:Lcom/adhocsdk/zxing/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_9e
    if-eqz v1, :cond_a2

    if-eqz v3, :cond_a2

    :cond_a2
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b4

    if-nez v3, :cond_aa

    :cond_aa
    new-instance v0, Lcom/adhocsdk/zxing/aq;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/aq;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_b4

    :cond_b4
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/adhocsdk/zxing/k;

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adhocsdk/zxing/k;

    iput-object v0, p0, Lcom/adhocsdk/zxing/h;->b:[Lcom/adhocsdk/zxing/k;

    return-void

    :cond_c3
    move v3, v1

    goto/16 :goto_f

    :cond_c6
    sget-object v0, Lcom/adhocsdk/zxing/e;->c:Lcom/adhocsdk/zxing/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto/16 :goto_12
.end method
