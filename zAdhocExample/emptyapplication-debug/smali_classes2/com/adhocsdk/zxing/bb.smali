.class final Lcom/adhocsdk/zxing/bb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/aa;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adhocsdk/zxing/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/adhocsdk/zxing/p;


# direct methods
.method constructor <init>(Lcom/adhocsdk/zxing/aa;IIIIFLcom/adhocsdk/zxing/p;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/bb;->a:Lcom/adhocsdk/zxing/aa;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/bb;->b:Ljava/util/List;

    iput p2, p0, Lcom/adhocsdk/zxing/bb;->c:I

    iput p3, p0, Lcom/adhocsdk/zxing/bb;->d:I

    iput p4, p0, Lcom/adhocsdk/zxing/bb;->e:I

    iput p5, p0, Lcom/adhocsdk/zxing/bb;->f:I

    iput p6, p0, Lcom/adhocsdk/zxing/bb;->g:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/bb;->h:[I

    iput-object p7, p0, Lcom/adhocsdk/zxing/bb;->i:Lcom/adhocsdk/zxing/p;

    return-void
.end method

.method private a(IIII)F
    .registers 14

    const/4 v8, 0x2

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/adhocsdk/zxing/bb;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v3

    iget-object v4, p0, Lcom/adhocsdk/zxing/bb;->h:[I

    aput v6, v4, v6

    aput v6, v4, v7

    aput v6, v4, v8

    move v1, p1

    :goto_14
    if-ltz v1, :cond_29

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_29

    aget v5, v4, v7

    if-gt v5, p3, :cond_29

    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_29
    if-ltz v1, :cond_2f

    aget v5, v4, v7

    if-le v5, p3, :cond_30

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    :goto_30
    if-ltz v1, :cond_45

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_45

    aget v5, v4, v6

    if-gt v5, p3, :cond_45

    aget v5, v4, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    :cond_45
    aget v1, v4, v6

    if-gt v1, p3, :cond_2f

    add-int/lit8 v1, p1, 0x1

    :goto_4b
    if-ge v1, v3, :cond_60

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-eqz v5, :cond_60

    aget v5, v4, v7

    if-gt v5, p3, :cond_60

    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_60
    if-eq v1, v3, :cond_2f

    aget v5, v4, v7

    if-gt v5, p3, :cond_2f

    :goto_66
    if-ge v1, v3, :cond_7b

    invoke-virtual {v2, p2, v1}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v5

    if-nez v5, :cond_7b

    aget v5, v4, v8

    if-gt v5, p3, :cond_7b

    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_7b
    aget v2, v4, v8

    if-gt v2, p3, :cond_2f

    aget v2, v4, v6

    aget v3, v4, v7

    add-int/2addr v2, v3

    aget v3, v4, v8

    add-int/2addr v2, v3

    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, p4, 0x2

    if-ge v2, v3, :cond_2f

    invoke-direct {p0, v4}, Lcom/adhocsdk/zxing/bb;->a([I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v4, v1}, Lcom/adhocsdk/zxing/bb;->a([II)F

    move-result v0

    goto :goto_2f
.end method

.method private static a([II)F
    .registers 5

    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a([III)Lcom/adhocsdk/zxing/ba;
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    aget v0, p1, v5

    aget v1, p1, v4

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    invoke-static {p1, p3}, Lcom/adhocsdk/zxing/bb;->a([II)F

    move-result v1

    float-to-int v2, v1

    aget v3, p1, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, p2, v2, v3, v0}, Lcom/adhocsdk/zxing/bb;->a(IIII)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    aget v0, p1, v5

    aget v3, p1, v4

    add-int/2addr v0, v3

    aget v3, p1, v6

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    iget-object v0, p0, Lcom/adhocsdk/zxing/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/ba;

    invoke-virtual {v0, v3, v2, v1}, Lcom/adhocsdk/zxing/ba;->a(FFF)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v0, v2, v1, v3}, Lcom/adhocsdk/zxing/ba;->b(FFF)Lcom/adhocsdk/zxing/ba;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    new-instance v0, Lcom/adhocsdk/zxing/ba;

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/ba;-><init>(FFF)V

    iget-object v1, p0, Lcom/adhocsdk/zxing/bb;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/adhocsdk/zxing/bb;->i:Lcom/adhocsdk/zxing/p;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/adhocsdk/zxing/bb;->i:Lcom/adhocsdk/zxing/p;

    invoke-interface {v1, v0}, Lcom/adhocsdk/zxing/p;->a(Lcom/adhocsdk/zxing/o;)V

    :cond_5b
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private a([I)Z
    .registers 7

    const/4 v0, 0x0

    iget v2, p0, Lcom/adhocsdk/zxing/bb;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v2, v1

    move v1, v0

    :goto_8
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1c

    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_19

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    goto :goto_18
.end method


# virtual methods
.method a()Lcom/adhocsdk/zxing/ba;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/adhocsdk/zxing/bb;->c:I

    iget v6, p0, Lcom/adhocsdk/zxing/bb;->f:I

    iget v0, p0, Lcom/adhocsdk/zxing/bb;->e:I

    add-int v7, v4, v0

    iget v0, p0, Lcom/adhocsdk/zxing/bb;->d:I

    shr-int/lit8 v3, v6, 0x1

    add-int v8, v0, v3

    const/4 v0, 0x3

    new-array v9, v0, [I

    move v5, v2

    :goto_15
    if-ge v5, v6, :cond_8e

    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_35

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    :goto_1f
    add-int v10, v8, v0

    aput v2, v9, v2

    aput v2, v9, v1

    aput v2, v9, v12

    move v3, v4

    :goto_28
    if-ge v3, v7, :cond_3b

    iget-object v0, p0, Lcom/adhocsdk/zxing/bb;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0, v3, v10}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v0

    if-nez v0, :cond_3b

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_35
    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1f

    :cond_3b
    move v0, v2

    :goto_3c
    if-ge v3, v7, :cond_7e

    iget-object v11, p0, Lcom/adhocsdk/zxing/bb;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v11, v3, v10}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v11

    if-eqz v11, :cond_73

    if-ne v0, v1, :cond_51

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_51
    if-ne v0, v12, :cond_6a

    invoke-direct {p0, v9}, Lcom/adhocsdk/zxing/bb;->a([I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-direct {p0, v9, v10, v3}, Lcom/adhocsdk/zxing/bb;->a([III)Lcom/adhocsdk/zxing/ba;

    move-result-object v0

    if-eqz v0, :cond_60

    :cond_5f
    :goto_5f
    return-object v0

    :cond_60
    aget v0, v9, v12

    aput v0, v9, v2

    aput v1, v9, v1

    aput v2, v9, v12

    move v0, v1

    goto :goto_4e

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_4e

    :cond_73
    if-ne v0, v1, :cond_77

    add-int/lit8 v0, v0, 0x1

    :cond_77
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_4e

    :cond_7e
    invoke-direct {p0, v9}, Lcom/adhocsdk/zxing/bb;->a([I)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-direct {p0, v9, v10, v7}, Lcom/adhocsdk/zxing/bb;->a([III)Lcom/adhocsdk/zxing/ba;

    move-result-object v0

    if-nez v0, :cond_5f

    :cond_8a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_15

    :cond_8e
    iget-object v0, p0, Lcom/adhocsdk/zxing/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/adhocsdk/zxing/bb;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/ba;

    goto :goto_5f

    :cond_9f
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0
.end method
