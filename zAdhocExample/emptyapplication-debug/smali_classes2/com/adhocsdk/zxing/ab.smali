.class public final Lcom/adhocsdk/zxing/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/ab;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/adhocsdk/zxing/ab;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/adhocsdk/zxing/ab;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/adhocsdk/zxing/ab;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)I
    .registers 10

    const/16 v7, 0xff

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    const/16 v0, 0x20

    if-gt p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v0

    if-le p1, v0, :cond_1c

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget v0, p0, Lcom/adhocsdk/zxing/ab;->c:I

    if-lez v0, :cond_7b

    iget v0, p0, Lcom/adhocsdk/zxing/ab;->c:I

    rsub-int/lit8 v1, v0, 0x8

    if-ge p1, v1, :cond_61

    move v0, p1

    :goto_27
    sub-int/2addr v1, v0

    rsub-int/lit8 v2, v0, 0x8

    shr-int v2, v7, v2

    shl-int/2addr v2, v1

    iget-object v4, p0, Lcom/adhocsdk/zxing/ab;->a:[B

    iget v5, p0, Lcom/adhocsdk/zxing/ab;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v2, v4

    shr-int/2addr v2, v1

    sub-int v1, p1, v0

    iget v4, p0, Lcom/adhocsdk/zxing/ab;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/adhocsdk/zxing/ab;->c:I

    iget v0, p0, Lcom/adhocsdk/zxing/ab;->c:I

    if-ne v0, v6, :cond_48

    iput v3, p0, Lcom/adhocsdk/zxing/ab;->c:I

    iget v0, p0, Lcom/adhocsdk/zxing/ab;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adhocsdk/zxing/ab;->b:I

    :cond_48
    move v0, v2

    :goto_49
    if-lez v1, :cond_7a

    :goto_4b
    if-lt v1, v6, :cond_63

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/adhocsdk/zxing/ab;->a:[B

    iget v3, p0, Lcom/adhocsdk/zxing/ab;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget v2, p0, Lcom/adhocsdk/zxing/ab;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adhocsdk/zxing/ab;->b:I

    add-int/lit8 v1, v1, -0x8

    goto :goto_4b

    :cond_61
    move v0, v1

    goto :goto_27

    :cond_63
    if-lez v1, :cond_7a

    rsub-int/lit8 v2, v1, 0x8

    shr-int v3, v7, v2

    shl-int/2addr v3, v2

    shl-int/2addr v0, v1

    iget-object v4, p0, Lcom/adhocsdk/zxing/ab;->a:[B

    iget v5, p0, Lcom/adhocsdk/zxing/ab;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shr-int v2, v3, v2

    or-int/2addr v0, v2

    iget v2, p0, Lcom/adhocsdk/zxing/ab;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/adhocsdk/zxing/ab;->c:I

    :cond_7a
    return v0

    :cond_7b
    move v0, v3

    move v1, p1

    goto :goto_49
.end method
