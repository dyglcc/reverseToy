.class final Lcom/adhocsdk/zxing/ar;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/aa;

.field private b:Lcom/adhocsdk/zxing/az;

.field private c:Lcom/adhocsdk/zxing/ax;


# direct methods
.method constructor <init>(Lcom/adhocsdk/zxing/aa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    :cond_10
    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    return-void
.end method

.method private a(III)I
    .registers 5

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0, p1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    shl-int/lit8 v0, p3, 0x1

    goto :goto_c
.end method


# virtual methods
.method a()Lcom/adhocsdk/zxing/ax;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->c:Lcom/adhocsdk/zxing/ax;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->c:Lcom/adhocsdk/zxing/ax;

    :goto_a
    return-object v0

    :cond_b
    move v0, v1

    move v2, v1

    :goto_d
    const/4 v3, 0x6

    if-ge v0, v3, :cond_17

    invoke-direct {p0, v0, v5, v2}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    invoke-direct {p0, v4, v5, v2}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v5, v0}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v0

    invoke-direct {p0, v5, v4, v0}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v2

    const/4 v0, 0x5

    :goto_24
    if-ltz v0, :cond_2d

    invoke-direct {p0, v5, v0, v2}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_2d
    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v3

    add-int/lit8 v4, v3, -0x7

    add-int/lit8 v0, v3, -0x1

    :goto_37
    if-lt v0, v4, :cond_40

    invoke-direct {p0, v5, v0, v1}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_40
    add-int/lit8 v0, v3, -0x8

    :goto_42
    if-ge v0, v3, :cond_4b

    invoke-direct {p0, v0, v5, v1}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4b
    invoke-static {v2, v1}, Lcom/adhocsdk/zxing/ax;->b(II)Lcom/adhocsdk/zxing/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/ar;->c:Lcom/adhocsdk/zxing/ax;

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->c:Lcom/adhocsdk/zxing/ax;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->c:Lcom/adhocsdk/zxing/ax;

    goto :goto_a

    :cond_58
    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method b()Lcom/adhocsdk/zxing/az;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->b:Lcom/adhocsdk/zxing/az;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->b:Lcom/adhocsdk/zxing/az;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v5

    add-int/lit8 v0, v5, -0x11

    shr-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    if-gt v0, v3, :cond_1b

    invoke-static {v0}, Lcom/adhocsdk/zxing/az;->b(I)Lcom/adhocsdk/zxing/az;

    move-result-object v0

    goto :goto_8

    :cond_1b
    add-int/lit8 v6, v5, -0xb

    move v4, v2

    move v3, v1

    :goto_1f
    if-ltz v4, :cond_30

    add-int/lit8 v0, v5, -0x9

    :goto_23
    if-lt v0, v6, :cond_2c

    invoke-direct {p0, v0, v4, v3}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_2c
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1f

    :cond_30
    invoke-static {v3}, Lcom/adhocsdk/zxing/az;->c(I)Lcom/adhocsdk/zxing/az;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/az;->d()I

    move-result v3

    if-ne v3, v5, :cond_42

    iput-object v0, p0, Lcom/adhocsdk/zxing/ar;->b:Lcom/adhocsdk/zxing/az;

    goto :goto_8

    :cond_3f
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    :cond_42
    if-ltz v2, :cond_4f

    add-int/lit8 v0, v5, -0x9

    :goto_46
    if-lt v0, v6, :cond_3f

    invoke-direct {p0, v2, v0, v1}, Lcom/adhocsdk/zxing/ar;->a(III)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_4f
    invoke-static {v1}, Lcom/adhocsdk/zxing/az;->c(I)Lcom/adhocsdk/zxing/az;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/az;->d()I

    move-result v1

    if-ne v1, v5, :cond_5e

    iput-object v0, p0, Lcom/adhocsdk/zxing/ar;->b:Lcom/adhocsdk/zxing/az;

    goto :goto_8

    :cond_5e
    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method c()[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ar;->a()Lcom/adhocsdk/zxing/ax;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ar;->b()Lcom/adhocsdk/zxing/az;

    move-result-object v10

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ax;->b()B

    move-result v0

    invoke-static {v0}, Lcom/adhocsdk/zxing/at;->a(I)Lcom/adhocsdk/zxing/at;

    move-result-object v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v11

    iget-object v1, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0, v1, v11}, Lcom/adhocsdk/zxing/at;->a(Lcom/adhocsdk/zxing/aa;I)V

    invoke-virtual {v10}, Lcom/adhocsdk/zxing/az;->e()Lcom/adhocsdk/zxing/aa;

    move-result-object v12

    const/4 v1, 0x1

    invoke-virtual {v10}, Lcom/adhocsdk/zxing/az;->c()I

    move-result v0

    new-array v13, v0, [B

    add-int/lit8 v0, v11, -0x1

    move v3, v4

    move v5, v4

    move v7, v4

    move v9, v1

    :goto_2d
    if-lez v0, :cond_72

    const/4 v1, 0x6

    if-ne v0, v1, :cond_34

    add-int/lit8 v0, v0, -0x1

    :cond_34
    move v2, v4

    :goto_35
    if-ge v2, v11, :cond_6c

    if-eqz v9, :cond_67

    add-int/lit8 v1, v11, -0x1

    sub-int/2addr v1, v2

    :goto_3c
    move v8, v4

    :goto_3d
    const/4 v6, 0x2

    if-ge v8, v6, :cond_69

    sub-int v6, v0, v8

    invoke-virtual {v12, v6, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v6

    if-nez v6, :cond_7e

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/adhocsdk/zxing/ar;->a:Lcom/adhocsdk/zxing/aa;

    sub-int v14, v0, v8

    invoke-virtual {v6, v14, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v6

    if-eqz v6, :cond_58

    or-int/lit8 v5, v5, 0x1

    :cond_58
    const/16 v6, 0x8

    if-ne v3, v6, :cond_7e

    add-int/lit8 v6, v7, 0x1

    int-to-byte v3, v5

    aput-byte v3, v13, v7

    move v3, v4

    move v5, v4

    :goto_63
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto :goto_3d

    :cond_67
    move v1, v2

    goto :goto_3c

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_6c
    xor-int/lit8 v1, v9, 0x1

    add-int/lit8 v0, v0, -0x2

    move v9, v1

    goto :goto_2d

    :cond_72
    invoke-virtual {v10}, Lcom/adhocsdk/zxing/az;->c()I

    move-result v0

    if-eq v7, v0, :cond_7d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_7d
    return-object v13

    :cond_7e
    move v6, v7

    goto :goto_63
.end method
