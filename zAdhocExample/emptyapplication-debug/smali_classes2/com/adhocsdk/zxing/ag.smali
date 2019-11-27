.class public Lcom/adhocsdk/zxing/ag;
.super Lcom/adhocsdk/zxing/b;


# static fields
.field private static final a:[B


# instance fields
.field private final b:[I

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/adhocsdk/zxing/ag;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/adhocsdk/zxing/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/b;-><init>(Lcom/adhocsdk/zxing/g;)V

    sget-object v0, Lcom/adhocsdk/zxing/ag;->a:[B

    iput-object v0, p0, Lcom/adhocsdk/zxing/ag;->c:[B

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/ag;->b:[I

    return-void
.end method

.method private static a([I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v6, 0x0

    array-length v7, p0

    move v2, v6

    move v0, v6

    move v1, v6

    move v3, v6

    :goto_6
    if-ge v2, v7, :cond_18

    aget v4, p0, v2

    if-le v4, v0, :cond_f

    aget v0, p0, v2

    move v1, v2

    :cond_f
    aget v4, p0, v2

    if-le v4, v3, :cond_15

    aget v3, p0, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    move v5, v6

    move v2, v6

    move v4, v6

    :goto_1b
    if-ge v5, v7, :cond_2a

    sub-int v0, v5, v1

    aget v6, p0, v5

    mul-int/2addr v6, v0

    mul-int/2addr v0, v6

    if-le v0, v2, :cond_5a

    move v4, v5

    :goto_26
    add-int/lit8 v5, v5, 0x1

    move v2, v0

    goto :goto_1b

    :cond_2a
    if-le v1, v4, :cond_57

    move v5, v1

    move v6, v4

    :goto_2e
    sub-int v0, v5, v6

    shr-int/lit8 v1, v7, 0x4

    if-gt v0, v1, :cond_39

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_39
    add-int/lit8 v2, v5, -0x1

    const/4 v1, -0x1

    add-int/lit8 v4, v5, -0x1

    :goto_3e
    if-le v4, v6, :cond_52

    sub-int v0, v4, v6

    mul-int/2addr v0, v0

    sub-int v7, v5, v4

    mul-int/2addr v0, v7

    aget v7, p0, v4

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    if-le v0, v1, :cond_55

    move v2, v4

    :goto_4e
    add-int/lit8 v4, v4, -0x1

    move v1, v0

    goto :goto_3e

    :cond_52
    shl-int/lit8 v0, v2, 0x3

    return v0

    :cond_55
    move v0, v1

    goto :goto_4e

    :cond_57
    move v5, v4

    move v6, v1

    goto :goto_2e

    :cond_5a
    move v0, v2

    goto :goto_26
.end method

.method private a(I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/ag;->c:[B

    array-length v0, v0

    if-ge v0, p1, :cond_a

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/adhocsdk/zxing/ag;->c:[B

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/adhocsdk/zxing/ag;->b:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method


# virtual methods
.method public b()Lcom/adhocsdk/zxing/aa;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ag;->a()Lcom/adhocsdk/zxing/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/g;->b()I

    move-result v4

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/g;->c()I

    move-result v5

    new-instance v6, Lcom/adhocsdk/zxing/aa;

    invoke-direct {v6, v4, v5}, Lcom/adhocsdk/zxing/aa;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/adhocsdk/zxing/ag;->a(I)V

    iget-object v7, p0, Lcom/adhocsdk/zxing/ag;->b:[I

    const/4 v0, 0x1

    move v2, v0

    :goto_19
    const/4 v0, 0x5

    if-ge v2, v0, :cond_41

    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    iget-object v8, p0, Lcom/adhocsdk/zxing/ag;->c:[B

    invoke-virtual {v3, v0, v8}, Lcom/adhocsdk/zxing/g;->a(I[B)[B

    move-result-object v8

    shl-int/lit8 v0, v4, 0x2

    div-int/lit8 v9, v0, 0x5

    div-int/lit8 v0, v4, 0x5

    :goto_2c
    if-ge v0, v9, :cond_3d

    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_41
    invoke-static {v7}, Lcom/adhocsdk/zxing/ag;->a([I)I

    move-result v7

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/g;->a()[B

    move-result-object v3

    move v2, v1

    :goto_4a
    if-ge v2, v5, :cond_63

    mul-int v8, v2, v4

    move v0, v1

    :goto_4f
    if-ge v0, v4, :cond_5f

    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v7, :cond_5c

    invoke-virtual {v6, v0, v2}, Lcom/adhocsdk/zxing/aa;->b(II)V

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    :cond_63
    return-object v6
.end method
