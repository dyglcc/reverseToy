.class public Lcom/adhoc/x;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/adhoc/t;)Lcom/adhoc/y;
    .registers 2

    invoke-static {p0}, Lcom/adhoc/x;->b(Lcom/adhoc/t;)V

    new-instance v0, Lcom/adhoc/ab;

    invoke-direct {v0, p0}, Lcom/adhoc/ab;-><init>(Lcom/adhoc/t;)V

    return-object v0
.end method

.method static a(Lcom/adhoc/t;Lcom/adhoc/r;)V
    .registers 3

    invoke-static {}, Lcom/adhoc/u;->a()Lcom/adhoc/u;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/adhoc/r;->onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V

    return-void
.end method

.method static a(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V
    .registers 4

    if-nez p1, :cond_6

    invoke-static {p0, p2}, Lcom/adhoc/x;->a(Lcom/adhoc/t;Lcom/adhoc/r;)V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/adhoc/u;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1, p2}, Lcom/adhoc/x;->c(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    goto :goto_5

    :cond_10
    invoke-static {p0, p1, p2}, Lcom/adhoc/x;->b(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    goto :goto_5
.end method

.method private static b(Lcom/adhoc/t;)V
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The request argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method static b(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Lcom/adhoc/r;->onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V

    return-void
.end method

.method static c(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Lcom/adhoc/r;->onSuccess(Lcom/adhoc/t;Lcom/adhoc/u;)V

    return-void
.end method
