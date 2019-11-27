.class public final Lcom/adhocsdk/zxing/ae;
.super Lcom/adhocsdk/zxing/ah;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adhocsdk/zxing/aa;IILcom/adhocsdk/zxing/aj;)Lcom/adhocsdk/zxing/aa;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    if-lez p2, :cond_7

    if-gtz p3, :cond_c

    :cond_7
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v3, Lcom/adhocsdk/zxing/aa;

    invoke-direct {v3, p2, p3}, Lcom/adhocsdk/zxing/aa;-><init>(II)V

    shl-int/lit8 v0, p2, 0x1

    new-array v4, v0, [F

    move v2, v1

    :goto_16
    if-ge v2, p3, :cond_55

    array-length v5, v4

    int-to-float v0, v2

    add-float v6, v0, v8

    move v0, v1

    :goto_1d
    if-ge v0, v5, :cond_2c

    shr-int/lit8 v7, v0, 0x1

    int-to-float v7, v7

    add-float/2addr v7, v8

    aput v7, v4, v0

    add-int/lit8 v7, v0, 0x1

    aput v6, v4, v7

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    :cond_2c
    invoke-virtual {p4, v4}, Lcom/adhocsdk/zxing/aj;->a([F)V

    invoke-static {p1, v4}, Lcom/adhocsdk/zxing/ae;->a(Lcom/adhocsdk/zxing/aa;[F)V

    move v0, v1

    :goto_33
    if-ge v0, v5, :cond_51

    :try_start_35
    aget v6, v4, v0

    float-to-int v6, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, v4, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v6

    if-eqz v6, :cond_48

    shr-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6, v2}, Lcom/adhocsdk/zxing/aa;->b(II)V
    :try_end_48
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_35 .. :try_end_48} :catch_4b

    :cond_48
    add-int/lit8 v0, v0, 0x2

    goto :goto_33

    :catch_4b
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_55
    return-object v3
.end method
