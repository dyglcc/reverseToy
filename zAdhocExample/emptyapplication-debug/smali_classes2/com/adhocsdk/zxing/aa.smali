.class public final Lcom/adhocsdk/zxing/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1, p1}, Lcom/adhocsdk/zxing/aa;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_8

    if-ge p2, v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput p1, p0, Lcom/adhocsdk/zxing/aa;->a:I

    iput p2, p0, Lcom/adhocsdk/zxing/aa;->b:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 14

    const/4 v8, 0x1

    if-ltz p2, :cond_5

    if-gez p1, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-lt p4, v8, :cond_11

    if-ge p3, v8, :cond_19

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    add-int v1, p1, p3

    add-int v2, p2, p4

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->b:I

    if-gt v2, v0, :cond_25

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->a:I

    if-le v1, v0, :cond_2f

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    :cond_2f
    if-ge p2, v2, :cond_49

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    mul-int v3, p2, v0

    move v0, p1

    :goto_36
    if-ge v0, v1, :cond_2d

    iget-object v4, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    shr-int/lit8 v5, v0, 0x5

    add-int/2addr v5, v3

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_49
    return-void
.end method

.method public a(II)Z
    .registers 5

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v0, v1, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a()[I
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v2, v2

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    iget v2, p0, Lcom/adhocsdk/zxing/aa;->c:I

    div-int v2, v0, v2

    iget v3, p0, Lcom/adhocsdk/zxing/aa;->c:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v4, v4, v0

    move v0, v1

    :goto_26
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v4, v5

    if-nez v5, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_2f
    add-int/2addr v3, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_16
.end method

.method public b(II)V
    .registers 8

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public b()[I
    .registers 6

    iget-object v0, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_10

    iget-object v1, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v1, v1, v0

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_10
    if-gez v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    iget v1, p0, Lcom/adhocsdk/zxing/aa;->c:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/adhocsdk/zxing/aa;->c:I

    rem-int v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v3, v3, v0

    const/16 v0, 0x1f

    :goto_24
    ushr-int v4, v3, v0

    if-nez v4, :cond_2b

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_2b
    add-int/2addr v2, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_13
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->a:I

    return v0
.end method

.method public c(II)V
    .registers 8

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/adhocsdk/zxing/aa;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    check-cast p1, Lcom/adhocsdk/zxing/aa;

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->a:I

    iget v2, p1, Lcom/adhocsdk/zxing/aa;->a:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->b:I

    iget v2, p1, Lcom/adhocsdk/zxing/aa;->b:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->c:I

    iget v2, p1, Lcom/adhocsdk/zxing/aa;->c:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v0, v0

    iget-object v2, p1, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v2, v2

    if-ne v0, v2, :cond_5

    move v0, v1

    :goto_23
    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/adhocsdk/zxing/aa;->d:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_35
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/adhocsdk/zxing/aa;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/adhocsdk/zxing/aa;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/adhocsdk/zxing/aa;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/adhocsdk/zxing/aa;->d:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_1f

    aget v4, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1f
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/adhocsdk/zxing/aa;->b:I

    iget v2, p0, Lcom/adhocsdk/zxing/aa;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_e
    iget v2, p0, Lcom/adhocsdk/zxing/aa;->b:I

    if-ge v0, v2, :cond_30

    move v2, v1

    :goto_13
    iget v3, p0, Lcom/adhocsdk/zxing/aa;->a:I

    if-ge v2, v3, :cond_28

    invoke-virtual {p0, v2, v0}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "X "

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    const-string v3, "  "

    goto :goto_1f

    :cond_28
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
