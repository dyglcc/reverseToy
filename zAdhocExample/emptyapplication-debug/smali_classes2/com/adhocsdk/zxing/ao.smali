.class public final Lcom/adhocsdk/zxing/ao;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/am;


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/am;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    return-void
.end method

.method private a(Lcom/adhocsdk/zxing/an;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/ap;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v3

    if-ne v3, v0, :cond_12

    new-array v2, v0, [I

    invoke-virtual {p1, v0}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v0

    aput v0, v2, v1

    move-object v0, v2

    :goto_11
    return-object v0

    :cond_12
    new-array v2, v3, [I

    :goto_14
    iget-object v4, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/am;->c()I

    move-result v4

    if-ge v0, v4, :cond_31

    if-ge v1, v3, :cond_31

    invoke-virtual {p1, v0}, Lcom/adhocsdk/zxing/an;->b(I)I

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v4, v0}, Lcom/adhocsdk/zxing/am;->c(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_31
    if-eq v1, v3, :cond_3b

    new-instance v0, Lcom/adhocsdk/zxing/ap;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/ap;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move-object v0, v2

    goto :goto_11
.end method

.method private a(Lcom/adhocsdk/zxing/an;[I)[I
    .registers 12

    const/4 v3, 0x0

    array-length v5, p2

    new-array v6, v5, [I

    move v4, v3

    :goto_5
    if-ge v4, v5, :cond_58

    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/adhocsdk/zxing/am;->c(I)I

    move-result v7

    const/4 v1, 0x1

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_30

    if-eq v4, v2, :cond_59

    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    aget v8, p2, v2

    invoke-virtual {v0, v8, v7}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v0

    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_2d

    or-int/lit8 v0, v0, 0x1

    :goto_23
    iget-object v8, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v8, v1, v0}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v0

    :goto_29
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_11

    :cond_2d
    and-int/lit8 v0, v0, -0x2

    goto :goto_23

    :cond_30
    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {p1, v7}, Lcom/adhocsdk/zxing/an;->b(I)I

    move-result v2

    iget-object v8, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v8, v1}, Lcom/adhocsdk/zxing/am;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v0

    aput v0, v6, v4

    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/am;->d()I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    aget v1, v6, v4

    invoke-virtual {v0, v1, v7}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v0

    aput v0, v6, v4

    :cond_54
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_58
    return-object v6

    :cond_59
    move v0, v1

    goto :goto_29
.end method


# virtual methods
.method public a([II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/ap;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/adhocsdk/zxing/an;

    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {v4, v0, p1}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    new-array v5, p2, [I

    move v2, v1

    move v0, v3

    :goto_d
    if-ge v2, p2, :cond_2c

    iget-object v6, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    iget-object v7, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v7}, Lcom/adhocsdk/zxing/am;->d()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/adhocsdk/zxing/am;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/adhocsdk/zxing/an;->b(I)I

    move-result v6

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    aput v6, v5, v7

    if-eqz v6, :cond_29

    move v0, v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    if-eqz v0, :cond_2f

    :cond_2e
    return-void

    :cond_2f
    new-instance v0, Lcom/adhocsdk/zxing/an;

    iget-object v2, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {v0, v2, v5}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    iget-object v2, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v2, p2, v3}, Lcom/adhocsdk/zxing/am;->b(II)Lcom/adhocsdk/zxing/an;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Lcom/adhocsdk/zxing/ao;->a(Lcom/adhocsdk/zxing/an;Lcom/adhocsdk/zxing/an;I)[Lcom/adhocsdk/zxing/an;

    move-result-object v0

    aget-object v2, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, v2}, Lcom/adhocsdk/zxing/ao;->a(Lcom/adhocsdk/zxing/an;)[I

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/adhocsdk/zxing/ao;->a(Lcom/adhocsdk/zxing/an;[I)[I

    move-result-object v0

    :goto_4c
    array-length v3, v2

    if-ge v1, v3, :cond_2e

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/adhocsdk/zxing/am;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_65

    new-instance v0, Lcom/adhocsdk/zxing/ap;

    const-string v1, "Bad error location"

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/ap;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    aget v4, p1, v3

    aget v5, v0, v1

    invoke-static {v4, v5}, Lcom/adhocsdk/zxing/am;->a(II)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c
.end method

.method public a(Lcom/adhocsdk/zxing/an;Lcom/adhocsdk/zxing/an;I)[Lcom/adhocsdk/zxing/an;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/ap;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v1

    if-ge v0, v1, :cond_c5

    move-object v0, p1

    move-object v1, p2

    :goto_d
    iget-object v2, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object v3

    iget-object v2, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/am;->b()Lcom/adhocsdk/zxing/an;

    move-result-object v2

    move-object v4, v0

    move-object v5, v1

    :goto_1b
    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_a0

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lcom/adhocsdk/zxing/ap;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/ap;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object v0

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v1

    iget-object v6, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v6, v1}, Lcom/adhocsdk/zxing/am;->c(I)I

    move-result v6

    move-object v1, v5

    :goto_46
    invoke-virtual {v1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v5

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v7

    if-lt v5, v7, :cond_80

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v5

    if-nez v5, :cond_80

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v5

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v7

    iget-object v8, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v8, v5, v7}, Lcom/adhocsdk/zxing/am;->b(II)Lcom/adhocsdk/zxing/an;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/adhocsdk/zxing/an;->a(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;

    move-result-object v0

    invoke-virtual {v4, v5, v7}, Lcom/adhocsdk/zxing/an;->a(II)Lcom/adhocsdk/zxing/an;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/adhocsdk/zxing/an;->a(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;

    move-result-object v1

    goto :goto_46

    :cond_80
    invoke-virtual {v0, v2}, Lcom/adhocsdk/zxing/an;->b(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adhocsdk/zxing/an;->a(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v3

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v5

    if-lt v3, v5, :cond_9a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Division algorithm failed to reduce polynomial?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    move-object v3, v2

    move-object v5, v4

    move-object v4, v1

    move-object v2, v0

    goto/16 :goto_1b

    :cond_a0
    invoke-virtual {v2, v9}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v0

    if-nez v0, :cond_ae

    new-instance v0, Lcom/adhocsdk/zxing/ap;

    const-string v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/ap;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    iget-object v1, p0, Lcom/adhocsdk/zxing/ao;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v1, v0}, Lcom/adhocsdk/zxing/am;->c(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/adhocsdk/zxing/an;->c(I)Lcom/adhocsdk/zxing/an;

    move-result-object v1

    invoke-virtual {v4, v0}, Lcom/adhocsdk/zxing/an;->c(I)Lcom/adhocsdk/zxing/an;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/adhocsdk/zxing/an;

    aput-object v1, v2, v9

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :cond_c5
    move-object v0, p2

    move-object v1, p1

    goto/16 :goto_d
.end method
