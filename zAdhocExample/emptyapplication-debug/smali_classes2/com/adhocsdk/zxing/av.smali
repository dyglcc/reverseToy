.class public final Lcom/adhocsdk/zxing/av;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/ao;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adhocsdk/zxing/ao;

    sget-object v1, Lcom/adhocsdk/zxing/am;->e:Lcom/adhocsdk/zxing/am;

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/ao;-><init>(Lcom/adhocsdk/zxing/am;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/av;->a:Lcom/adhocsdk/zxing/ao;

    return-void
.end method

.method private a([BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/d;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p1

    new-array v3, v2, [I

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_10

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    array-length v1, p1

    sub-int/2addr v1, p2

    :try_start_12
    iget-object v2, p0, Lcom/adhocsdk/zxing/av;->a:Lcom/adhocsdk/zxing/ao;

    invoke-virtual {v2, v3, v1}, Lcom/adhocsdk/zxing/ao;->a([II)V
    :try_end_17
    .catch Lcom/adhocsdk/zxing/ap; {:try_start_12 .. :try_end_17} :catch_21

    :goto_17
    if-ge v0, p2, :cond_27

    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_21
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/d;->a()Lcom/adhocsdk/zxing/d;

    move-result-object v0

    throw v0

    :cond_27
    return-void
.end method


# virtual methods
.method public a(Lcom/adhocsdk/zxing/aa;Ljava/util/Map;)Lcom/adhocsdk/zxing/ad;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/zxing/aa;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/ad;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;,
            Lcom/adhocsdk/zxing/d;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/adhocsdk/zxing/ar;

    invoke-direct {v0, p1}, Lcom/adhocsdk/zxing/ar;-><init>(Lcom/adhocsdk/zxing/aa;)V

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ar;->b()Lcom/adhocsdk/zxing/az;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ar;->a()Lcom/adhocsdk/zxing/ax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/ax;->a()Lcom/adhocsdk/zxing/aw;

    move-result-object v6

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ar;->c()[B

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/adhocsdk/zxing/as;->a([BLcom/adhocsdk/zxing/az;Lcom/adhocsdk/zxing/aw;)[Lcom/adhocsdk/zxing/as;

    move-result-object v7

    array-length v3, v7

    move v0, v1

    move v2, v1

    :goto_1d
    if-ge v0, v3, :cond_29

    aget-object v4, v7, v0

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/as;->a()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    new-array v8, v2, [B

    array-length v9, v7

    move v4, v1

    move v2, v1

    :goto_2e
    if-ge v4, v9, :cond_4e

    aget-object v0, v7, v4

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/as;->b()[B

    move-result-object v10

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/as;->a()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/adhocsdk/zxing/av;->a([BI)V

    move v0, v1

    :goto_3e
    if-ge v0, v11, :cond_4a

    add-int/lit8 v3, v2, 0x1

    aget-byte v12, v10, v0

    aput-byte v12, v8, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3e

    :cond_4a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2e

    :cond_4e
    invoke-static {v8, v5, v6, p2}, Lcom/adhocsdk/zxing/au;->a([BLcom/adhocsdk/zxing/az;Lcom/adhocsdk/zxing/aw;Ljava/util/Map;)Lcom/adhocsdk/zxing/ad;

    move-result-object v0

    return-object v0
.end method
