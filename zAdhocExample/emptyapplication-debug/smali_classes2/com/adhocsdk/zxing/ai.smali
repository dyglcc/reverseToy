.class public final Lcom/adhocsdk/zxing/ai;
.super Lcom/adhocsdk/zxing/ag;


# instance fields
.field private a:Lcom/adhocsdk/zxing/aa;


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/ag;-><init>(Lcom/adhocsdk/zxing/g;)V

    return-void
.end method

.method private static a(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static a([BIIIILcom/adhocsdk/zxing/aa;)V
    .registers 13

    const/16 v6, 0x8

    const/4 v1, 0x0

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    move v2, v0

    move v3, v1

    :goto_8
    if-ge v3, v6, :cond_25

    move v0, v1

    :goto_b
    if-ge v0, v6, :cond_1f

    add-int v4, v2, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_1c

    add-int v4, p1, v0

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/adhocsdk/zxing/aa;->b(II)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    add-int v0, v2, p4

    move v2, v0

    goto :goto_8

    :cond_25
    return-void
.end method

.method private static a([BIIII[[ILcom/adhocsdk/zxing/aa;)V
    .registers 18

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, p2, :cond_56

    shl-int/lit8 v0, v7, 0x3

    add-int/lit8 v2, p4, -0x8

    if-le v0, v2, :cond_59

    :goto_a
    const/4 v0, 0x0

    move v6, v0

    :goto_c
    if-ge v6, p1, :cond_52

    shl-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, p3, -0x8

    if-le v0, v1, :cond_57

    :goto_14
    const/4 v0, 0x2

    add-int/lit8 v3, p1, -0x3

    invoke-static {v6, v0, v3}, Lcom/adhocsdk/zxing/ai;->a(III)I

    move-result v4

    const/4 v0, 0x2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v7, v0, v3}, Lcom/adhocsdk/zxing/ai;->a(III)I

    move-result v5

    const/4 v3, 0x0

    const/4 v0, -0x2

    :goto_24
    const/4 v8, 0x2

    if-gt v0, v8, :cond_45

    add-int v8, v5, v0

    aget-object v8, p5, v8

    add-int/lit8 v9, v4, -0x2

    aget v9, v8, v9

    add-int/lit8 v10, v4, -0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    aget v10, v8, v4

    add-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    div-int/lit8 v3, v3, 0x19

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/adhocsdk/zxing/ai;->a([BIIIILcom/adhocsdk/zxing/aa;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_c

    :cond_52
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_56
    return-void

    :cond_57
    move v1, v0

    goto :goto_14

    :cond_59
    move v2, v0

    goto :goto_a
.end method

.method private static a([BIIII)[[I
    .registers 16

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v10, v1

    :goto_e
    if-ge v10, p2, :cond_a1

    shl-int/lit8 v2, v10, 0x3

    add-int/lit8 v1, p4, -0x8

    if-le v2, v1, :cond_ab

    :goto_16
    const/4 v2, 0x0

    move v9, v2

    :goto_18
    if-ge v9, p1, :cond_9c

    shl-int/lit8 v3, v9, 0x3

    add-int/lit8 v2, p3, -0x8

    if-le v3, v2, :cond_a8

    :goto_20
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int v4, v1, p3

    add-int/2addr v4, v2

    :goto_28
    const/16 v2, 0x8

    if-ge v5, v2, :cond_6a

    const/4 v2, 0x0

    move v8, v2

    :goto_2e
    const/16 v2, 0x8

    if-ge v8, v2, :cond_42

    add-int v2, v4, v8

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v6, v2

    if-ge v2, v7, :cond_3c

    move v7, v2

    :cond_3c
    if-le v2, v3, :cond_a6

    :goto_3e
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    goto :goto_2e

    :cond_42
    sub-int v2, v3, v7

    const/16 v8, 0x18

    if-le v2, v8, :cond_a4

    add-int/lit8 v5, v5, 0x1

    add-int v2, v4, p3

    move v4, v5

    :goto_4d
    const/16 v5, 0x8

    if-ge v4, v5, :cond_64

    const/4 v5, 0x0

    :goto_52
    const/16 v8, 0x8

    if-ge v5, v8, :cond_60

    add-int v8, v2, v5

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_60
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, p3

    goto :goto_4d

    :cond_64
    move v5, v4

    :goto_65
    add-int/lit8 v5, v5, 0x1

    add-int v4, v2, p3

    goto :goto_28

    :cond_6a
    shr-int/lit8 v2, v6, 0x6

    sub-int/2addr v3, v7

    const/16 v4, 0x18

    if-gt v3, v4, :cond_93

    shr-int/lit8 v3, v7, 0x1

    if-lez v10, :cond_a2

    if-lez v9, :cond_a2

    add-int/lit8 v2, v10, -0x1

    aget-object v2, v0, v2

    aget v2, v2, v9

    aget-object v4, v0, v10

    add-int/lit8 v5, v9, -0x1

    aget v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v10, -0x1

    aget-object v4, v0, v4

    add-int/lit8 v5, v9, -0x1

    aget v4, v4, v5

    add-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    if-ge v7, v2, :cond_a2

    :cond_93
    :goto_93
    aget-object v3, v0, v10

    aput v2, v3, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_18

    :cond_9c
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_e

    :cond_a1
    return-object v0

    :cond_a2
    move v2, v3

    goto :goto_93

    :cond_a4
    move v2, v4

    goto :goto_65

    :cond_a6
    move v2, v3

    goto :goto_3e

    :cond_a8
    move v2, v3

    goto/16 :goto_20

    :cond_ab
    move v1, v2

    goto/16 :goto_16
.end method


# virtual methods
.method public b()Lcom/adhocsdk/zxing/aa;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/16 v1, 0x28

    iget-object v0, p0, Lcom/adhocsdk/zxing/ai;->a:Lcom/adhocsdk/zxing/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adhocsdk/zxing/ai;->a:Lcom/adhocsdk/zxing/aa;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ai;->a()Lcom/adhocsdk/zxing/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/g;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/g;->c()I

    move-result v4

    if-lt v3, v1, :cond_3e

    if-lt v4, v1, :cond_3e

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/g;->a()[B

    move-result-object v0

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v2, v3, 0x7

    if-eqz v2, :cond_25

    add-int/lit8 v1, v1, 0x1

    :cond_25
    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v5, v4, 0x7

    if-eqz v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    :cond_2d
    invoke-static {v0, v1, v2, v3, v4}, Lcom/adhocsdk/zxing/ai;->a([BIIII)[[I

    move-result-object v5

    new-instance v6, Lcom/adhocsdk/zxing/aa;

    invoke-direct {v6, v3, v4}, Lcom/adhocsdk/zxing/aa;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/adhocsdk/zxing/ai;->a([BIIII[[ILcom/adhocsdk/zxing/aa;)V

    iput-object v6, p0, Lcom/adhocsdk/zxing/ai;->a:Lcom/adhocsdk/zxing/aa;

    :goto_3b
    iget-object v0, p0, Lcom/adhocsdk/zxing/ai;->a:Lcom/adhocsdk/zxing/aa;

    goto :goto_8

    :cond_3e
    invoke-super {p0}, Lcom/adhocsdk/zxing/ag;->b()Lcom/adhocsdk/zxing/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/ai;->a:Lcom/adhocsdk/zxing/aa;

    goto :goto_3b
.end method
