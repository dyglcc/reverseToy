.class public final Lcom/adhocsdk/zxing/j;
.super Lcom/adhocsdk/zxing/g;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .registers 11

    invoke-direct {p0, p6, p7}, Lcom/adhocsdk/zxing/g;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_b

    add-int v0, p5, p7

    if-le v0, p3, :cond_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image com.adhoc.data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object p1, p0, Lcom/adhocsdk/zxing/j;->a:[B

    iput p2, p0, Lcom/adhocsdk/zxing/j;->b:I

    iput p3, p0, Lcom/adhocsdk/zxing/j;->c:I

    iput p4, p0, Lcom/adhocsdk/zxing/j;->d:I

    iput p5, p0, Lcom/adhocsdk/zxing/j;->e:I

    if-eqz p8, :cond_22

    invoke-direct {p0, p6, p7}, Lcom/adhocsdk/zxing/j;->a(II)V

    :cond_22
    return-void
.end method

.method private a(II)V
    .registers 11

    iget-object v4, p0, Lcom/adhocsdk/zxing/j;->a:[B

    const/4 v0, 0x0

    iget v1, p0, Lcom/adhocsdk/zxing/j;->e:I

    iget v2, p0, Lcom/adhocsdk/zxing/j;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/adhocsdk/zxing/j;->d:I

    add-int/2addr v2, v1

    move v3, v0

    :goto_c
    if-ge v3, p2, :cond_2d

    div-int/lit8 v0, p1, 0x2

    add-int v5, v2, v0

    add-int v0, v2, p1

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_17
    if-ge v1, v5, :cond_26

    aget-byte v6, v4, v1

    aget-byte v7, v4, v0

    aput-byte v7, v4, v1

    aput-byte v6, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_26
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/adhocsdk/zxing/j;->b:I

    add-int/2addr v2, v1

    move v3, v0

    goto :goto_c

    :cond_2d
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/j;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/j;->c()I

    move-result v4

    iget v0, p0, Lcom/adhocsdk/zxing/j;->b:I

    if-ne v3, v0, :cond_14

    iget v0, p0, Lcom/adhocsdk/zxing/j;->c:I

    if-ne v4, v0, :cond_14

    iget-object v0, p0, Lcom/adhocsdk/zxing/j;->a:[B

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    mul-int v5, v3, v4

    new-array v0, v5, [B

    iget v2, p0, Lcom/adhocsdk/zxing/j;->e:I

    iget v6, p0, Lcom/adhocsdk/zxing/j;->b:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/adhocsdk/zxing/j;->d:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/adhocsdk/zxing/j;->b:I

    if-ne v3, v6, :cond_2a

    iget-object v3, p0, Lcom/adhocsdk/zxing/j;->a:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_2a
    iget-object v5, p0, Lcom/adhocsdk/zxing/j;->a:[B

    :goto_2c
    if-ge v1, v4, :cond_13

    mul-int v6, v1, v3

    invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/adhocsdk/zxing/j;->b:I

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c
.end method

.method public a(I[B)[B
    .registers 7

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/j;->c()I

    move-result v0

    if-lt p1, v0, :cond_21

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/j;->b()I

    move-result v0

    if-eqz p2, :cond_2a

    array-length v1, p2

    if-ge v1, v0, :cond_2c

    :cond_2a
    new-array p2, v0, [B

    :cond_2c
    iget v1, p0, Lcom/adhocsdk/zxing/j;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/adhocsdk/zxing/j;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/adhocsdk/zxing/j;->d:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/adhocsdk/zxing/j;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
