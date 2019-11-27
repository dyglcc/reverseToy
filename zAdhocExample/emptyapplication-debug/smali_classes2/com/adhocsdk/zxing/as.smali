.class final Lcom/adhocsdk/zxing/as;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adhocsdk/zxing/as;->a:I

    iput-object p2, p0, Lcom/adhocsdk/zxing/as;->b:[B

    return-void
.end method

.method static a([BLcom/adhocsdk/zxing/az;Lcom/adhocsdk/zxing/aw;)[Lcom/adhocsdk/zxing/as;
    .registers 16

    const/4 v1, 0x0

    array-length v0, p0

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/az;->c()I

    move-result v2

    if-eq v0, v2, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {p1, p2}, Lcom/adhocsdk/zxing/az;->a(Lcom/adhocsdk/zxing/aw;)Lcom/adhocsdk/zxing/az$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adhocsdk/zxing/az$b;->b()[Lcom/adhocsdk/zxing/az$a;

    move-result-object v6

    array-length v3, v6

    move v0, v1

    move v2, v1

    :goto_19
    if-ge v0, v3, :cond_25

    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/az$a;->a()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    new-array v9, v2, [Lcom/adhocsdk/zxing/as;

    array-length v7, v6

    move v4, v1

    move v2, v1

    :goto_2a
    if-ge v4, v7, :cond_52

    aget-object v8, v6, v4

    move v0, v1

    :goto_2f
    invoke-virtual {v8}, Lcom/adhocsdk/zxing/az$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_4e

    invoke-virtual {v8}, Lcom/adhocsdk/zxing/az$a;->b()I

    move-result v10

    invoke-virtual {v5}, Lcom/adhocsdk/zxing/az$b;->a()I

    move-result v3

    add-int v11, v3, v10

    add-int/lit8 v3, v2, 0x1

    new-instance v12, Lcom/adhocsdk/zxing/as;

    new-array v11, v11, [B

    invoke-direct {v12, v10, v11}, Lcom/adhocsdk/zxing/as;-><init>(I[B)V

    aput-object v12, v9, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2f

    :cond_4e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2a

    :cond_52
    aget-object v0, v9, v1

    iget-object v0, v0, Lcom/adhocsdk/zxing/as;->b:[B

    array-length v3, v0

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    :goto_5a
    if-ltz v0, :cond_63

    aget-object v4, v9, v0

    iget-object v4, v4, Lcom/adhocsdk/zxing/as;->b:[B

    array-length v4, v4

    if-ne v4, v3, :cond_81

    :cond_63
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5}, Lcom/adhocsdk/zxing/az$b;->a()I

    move-result v0

    sub-int/2addr v3, v0

    move v8, v1

    move v0, v1

    :goto_6c
    if-ge v8, v3, :cond_89

    move v4, v1

    move v5, v0

    :goto_70
    if-ge v4, v2, :cond_84

    aget-object v0, v9, v4

    iget-object v0, v0, Lcom/adhocsdk/zxing/as;->b:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v0, v8

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v6

    goto :goto_70

    :cond_81
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    :cond_84
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v0, v5

    goto :goto_6c

    :cond_89
    move v4, v7

    :goto_8a
    if-ge v4, v2, :cond_9a

    aget-object v5, v9, v4

    iget-object v6, v5, Lcom/adhocsdk/zxing/as;->b:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v6, v3

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_8a

    :cond_9a
    aget-object v4, v9, v1

    iget-object v4, v4, Lcom/adhocsdk/zxing/as;->b:[B

    array-length v8, v4

    :goto_9f
    if-ge v3, v8, :cond_be

    move v4, v1

    move v5, v0

    :goto_a3
    if-ge v4, v2, :cond_ba

    if-ge v4, v7, :cond_b7

    move v0, v3

    :goto_a8
    aget-object v6, v9, v4

    iget-object v10, v6, Lcom/adhocsdk/zxing/as;->b:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v10, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v6

    goto :goto_a3

    :cond_b7
    add-int/lit8 v0, v3, 0x1

    goto :goto_a8

    :cond_ba
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_9f

    :cond_be
    return-object v9
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/as;->a:I

    return v0
.end method

.method b()[B
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/as;->b:[B

    return-object v0
.end method
