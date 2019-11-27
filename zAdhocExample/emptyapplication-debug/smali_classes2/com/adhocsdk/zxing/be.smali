.class public Lcom/adhocsdk/zxing/be;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhocsdk/zxing/be$a;,
        Lcom/adhocsdk/zxing/be$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/adhocsdk/zxing/aa;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adhocsdk/zxing/bd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[I

.field private final d:Lcom/adhocsdk/zxing/p;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/aa;Lcom/adhocsdk/zxing/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    iput-object p2, p0, Lcom/adhocsdk/zxing/be;->d:Lcom/adhocsdk/zxing/p;

    return-void
.end method

.method private a(IIII)F
    .registers 16

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    iget-object v2, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v3

    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->a()[I

    move-result-object v4

    move v1, p1

    :goto_11
    if-ltz v1, :cond_23

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_23
    if-gez v1, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    :goto_26
    if-ltz v1, :cond_3b

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_3b

    aget v5, v4, v8

    if-gt v5, p3, :cond_3b

    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_3b
    if-ltz v1, :cond_25

    aget v5, v4, v8

    if-gt v5, p3, :cond_25

    :goto_41
    if-ltz v1, :cond_56

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_56

    aget v5, v4, v7

    if-gt v5, p3, :cond_56

    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    :cond_56
    aget v1, v4, v7

    if-gt v1, p3, :cond_25

    add-int/lit8 v1, p1, 0x1

    :goto_5c
    if-ge v1, v3, :cond_6e

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_6e

    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6e
    if-eq v1, v3, :cond_25

    :goto_70
    if-ge v1, v3, :cond_85

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_85

    aget v5, v4, v9

    if-ge v5, p3, :cond_85

    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_85
    if-eq v1, v3, :cond_25

    aget v5, v4, v9

    if-ge v5, p3, :cond_25

    :goto_8b
    if-ge v1, v3, :cond_a0

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    aget v5, v4, v10

    if-ge v5, p3, :cond_a0

    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a0
    aget v2, v4, v10

    if-ge v2, p3, :cond_25

    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, p4, 0x2

    if-ge v2, v3, :cond_25

    invoke-static {v4}, Lcom/adhocsdk/zxing/be;->a([I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v4, v1}, Lcom/adhocsdk/zxing/be;->a([II)F

    move-result v0

    goto/16 :goto_25
.end method

.method private static a([II)F
    .registers 5

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method protected static a([I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_10

    aget v4, p0, v2

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x7

    if-lt v3, v2, :cond_b

    shl-int/lit8 v2, v3, 0x8

    div-int/lit8 v2, v2, 0x7

    div-int/lit8 v3, v2, 0x2

    aget v4, p0, v1

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_5c

    aget v4, p0, v0

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_5c

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_5c

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_5c

    const/4 v4, 0x4

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_5c

    :goto_5a
    move v1, v0

    goto :goto_b

    :cond_5c
    move v0, v1

    goto :goto_5a
.end method

.method private a()[I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->c:[I

    return-object v0
.end method

.method private b(IIII)F
    .registers 16

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    iget-object v2, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v3

    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->a()[I

    move-result-object v4

    move v1, p1

    :goto_11
    if-ltz v1, :cond_23

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_23
    if-gez v1, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    :goto_26
    if-ltz v1, :cond_3b

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_3b

    aget v5, v4, v8

    if-gt v5, p3, :cond_3b

    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_3b
    if-ltz v1, :cond_25

    aget v5, v4, v8

    if-gt v5, p3, :cond_25

    :goto_41
    if-ltz v1, :cond_56

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_56

    aget v5, v4, v7

    if-gt v5, p3, :cond_56

    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    :cond_56
    aget v1, v4, v7

    if-gt v1, p3, :cond_25

    add-int/lit8 v1, p1, 0x1

    :goto_5c
    if-ge v1, v3, :cond_6e

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_6e

    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6e
    if-eq v1, v3, :cond_25

    :goto_70
    if-ge v1, v3, :cond_85

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_85

    aget v5, v4, v9

    if-ge v5, p3, :cond_85

    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_85
    if-eq v1, v3, :cond_25

    aget v5, v4, v9

    if-ge v5, p3, :cond_25

    :goto_8b
    if-ge v1, v3, :cond_a0

    invoke-virtual {v2, v1, p2}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    aget v5, v4, v10

    if-ge v5, p3, :cond_a0

    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a0
    aget v2, v4, v10

    if-ge v2, p3, :cond_25

    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    if-ge v2, p4, :cond_25

    invoke-static {v4}, Lcom/adhocsdk/zxing/be;->a([I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v4, v1}, Lcom/adhocsdk/zxing/be;->a([II)F

    move-result v0

    goto/16 :goto_25
.end method

.method private b()I
    .registers 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->d()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4f

    if-nez v1, :cond_2a

    :goto_28
    move-object v1, v0

    goto :goto_13

    :cond_2a
    iput-boolean v6, p0, Lcom/adhocsdk/zxing/be;->e:Z

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v2

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v1

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_4d
    move v0, v2

    goto :goto_b

    :cond_4f
    move-object v0, v1

    goto :goto_28
.end method

.method private c()Z
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->d()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5a

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    add-float/2addr v0, v1

    :goto_2a
    move v1, v0

    goto :goto_10

    :cond_2c
    const/4 v0, 0x3

    if-ge v3, v0, :cond_30

    :cond_2f
    :goto_2f
    return v4

    :cond_30
    int-to-float v0, v5

    div-float v3, v1, v0

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_39

    :cond_50
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2f

    const/4 v4, 0x1

    goto :goto_2f

    :cond_5a
    move v0, v1

    goto :goto_2a
.end method

.method private d()[Lcom/adhocsdk/zxing/bd;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v7, :cond_12

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_12
    if-le v5, v7, :cond_83

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    add-float/2addr v3, v0

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_1c

    :cond_31
    int-to-float v0, v5

    div-float/2addr v3, v0

    int-to-float v0, v5

    div-float v0, v1, v0

    mul-float v1, v3, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    new-instance v5, Lcom/adhocsdk/zxing/be$b;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/adhocsdk/zxing/be$b;-><init>(FLcom/adhocsdk/zxing/be$1;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v1, v4

    :goto_53
    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_83

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7f

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_7f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    :cond_83
    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_c6

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_91

    :cond_a3
    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    new-instance v2, Lcom/adhocsdk/zxing/be$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/adhocsdk/zxing/be$a;-><init>(FLcom/adhocsdk/zxing/be$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_c6
    new-array v1, v7, [Lcom/adhocsdk/zxing/bd;

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    aput-object v0, v1, v9

    return-object v1
.end method


# virtual methods
.method final a(Ljava/util/Map;)Lcom/adhocsdk/zxing/bf;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/bf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v13, 0x4

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_55

    sget-object v0, Lcom/adhocsdk/zxing/e;->d:Lcom/adhocsdk/zxing/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_10
    iget-object v3, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v9

    iget-object v3, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v10

    mul-int/lit8 v3, v9, 0x3

    div-int/lit16 v3, v3, 0xe4

    if-lt v3, v4, :cond_24

    if-eqz v0, :cond_ee

    :cond_24
    move v0, v4

    :goto_25
    const/4 v3, 0x5

    new-array v11, v3, [I

    add-int/lit8 v5, v0, -0x1

    move v6, v2

    move v7, v0

    :goto_2c
    if-ge v5, v9, :cond_df

    if-nez v6, :cond_df

    aput v2, v11, v2

    aput v2, v11, v1

    aput v2, v11, v8

    aput v2, v11, v4

    aput v2, v11, v13

    move v3, v2

    move v0, v2

    :goto_3c
    if-ge v3, v10, :cond_c6

    iget-object v12, p0, Lcom/adhocsdk/zxing/be;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v12, v3, v5}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v12

    if-eqz v12, :cond_57

    and-int/lit8 v12, v0, 0x1

    if-ne v12, v1, :cond_4c

    add-int/lit8 v0, v0, 0x1

    :cond_4c
    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_55
    move v0, v2

    goto :goto_10

    :cond_57
    and-int/lit8 v12, v0, 0x1

    if-nez v12, :cond_bf

    if-ne v0, v13, :cond_b6

    invoke-static {v11}, Lcom/adhocsdk/zxing/be;->a([I)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0, v11, v5, v3}, Lcom/adhocsdk/zxing/be;->a([III)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/be;->e:Z

    if-eqz v0, :cond_7f

    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->c()Z

    move-result v0

    move v6, v0

    :goto_72
    aput v2, v11, v2

    aput v2, v11, v1

    aput v2, v11, v8

    aput v2, v11, v4

    aput v2, v11, v13

    move v0, v2

    move v7, v8

    goto :goto_52

    :cond_7f
    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->b()I

    move-result v0

    aget v7, v11, v8

    if-le v0, v7, :cond_ec

    aget v3, v11, v8

    sub-int/2addr v0, v3

    sub-int/2addr v0, v8

    add-int v3, v5, v0

    add-int/lit8 v0, v10, -0x1

    move v5, v3

    :goto_90
    move v3, v0

    goto :goto_72

    :cond_92
    aget v0, v11, v8

    aput v0, v11, v2

    aget v0, v11, v4

    aput v0, v11, v1

    aget v0, v11, v13

    aput v0, v11, v8

    aput v1, v11, v4

    aput v2, v11, v13

    move v0, v4

    goto :goto_52

    :cond_a4
    aget v0, v11, v8

    aput v0, v11, v2

    aget v0, v11, v4

    aput v0, v11, v1

    aget v0, v11, v13

    aput v0, v11, v8

    aput v1, v11, v4

    aput v2, v11, v13

    move v0, v4

    goto :goto_52

    :cond_b6
    add-int/lit8 v0, v0, 0x1

    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    goto :goto_52

    :cond_bf
    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    goto :goto_52

    :cond_c6
    invoke-static {v11}, Lcom/adhocsdk/zxing/be;->a([I)Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-virtual {p0, v11, v5, v10}, Lcom/adhocsdk/zxing/be;->a([III)Z

    move-result v0

    if-eqz v0, :cond_dc

    aget v7, v11, v2

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/be;->e:Z

    if-eqz v0, :cond_dc

    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->c()Z

    move-result v6

    :cond_dc
    add-int/2addr v5, v7

    goto/16 :goto_2c

    :cond_df
    invoke-direct {p0}, Lcom/adhocsdk/zxing/be;->d()[Lcom/adhocsdk/zxing/bd;

    move-result-object v0

    invoke-static {v0}, Lcom/adhocsdk/zxing/o;->a([Lcom/adhocsdk/zxing/o;)V

    new-instance v1, Lcom/adhocsdk/zxing/bf;

    invoke-direct {v1, v0}, Lcom/adhocsdk/zxing/bf;-><init>([Lcom/adhocsdk/zxing/bd;)V

    return-object v1

    :cond_ec
    move v0, v3

    goto :goto_90

    :cond_ee
    move v0, v3

    goto/16 :goto_25
.end method

.method protected final a([III)Z
    .registers 12

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget v0, p1, v2

    aget v1, p1, v3

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {p1, p3}, Lcom/adhocsdk/zxing/be;->a([II)F

    move-result v1

    float-to-int v4, v1

    aget v5, p1, v6

    invoke-direct {p0, p2, v4, v5, v0}, Lcom/adhocsdk/zxing/be;->a(IIII)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6e

    float-to-int v1, v1

    float-to-int v5, v4

    aget v6, p1, v6

    invoke-direct {p0, v1, v5, v6, v0}, Lcom/adhocsdk/zxing/be;->b(IIII)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_6e

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float v6, v0, v1

    move v1, v2

    :goto_38
    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    iget-object v0, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {v0, v6, v4, v5}, Lcom/adhocsdk/zxing/bd;->a(FFF)Z

    move-result v7

    if-eqz v7, :cond_6f

    iget-object v2, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v6}, Lcom/adhocsdk/zxing/bd;->b(FFF)Lcom/adhocsdk/zxing/bd;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :cond_58
    if-nez v2, :cond_6d

    new-instance v0, Lcom/adhocsdk/zxing/bd;

    invoke-direct {v0, v5, v4, v6}, Lcom/adhocsdk/zxing/bd;-><init>(FFF)V

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->d:Lcom/adhocsdk/zxing/p;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/adhocsdk/zxing/be;->d:Lcom/adhocsdk/zxing/p;

    invoke-interface {v1, v0}, Lcom/adhocsdk/zxing/p;->a(Lcom/adhocsdk/zxing/o;)V

    :cond_6d
    move v2, v3

    :cond_6e
    return v2

    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38
.end method
