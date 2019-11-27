.class public Lcom/adhocsdk/zxing/bc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/aa;

.field private b:Lcom/adhocsdk/zxing/p;


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/aa;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    return-void
.end method

.method private a(IIII)F
    .registers 12

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adhocsdk/zxing/bc;->b(IIII)F

    move-result v5

    sub-int v1, p3, p1

    sub-int v1, p1, v1

    if-gez v1, :cond_32

    int-to-float v2, p1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float v1, v2, v1

    move v4, v0

    move v2, v1

    :goto_15
    int-to-float v1, p2

    sub-int v6, p4, p2

    int-to-float v6, v6

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-gez v1, :cond_51

    int-to-float v2, p2

    sub-int v1, p2, v1

    int-to-float v1, v1

    div-float v1, v2, v1

    move v2, v1

    :goto_25
    int-to-float v1, p1

    sub-int/2addr v4, p1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/adhocsdk/zxing/bc;->b(IIII)F

    move-result v0

    add-float/2addr v0, v5

    sub-float/2addr v0, v3

    return v0

    :cond_32
    iget-object v2, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v2

    if-lt v1, v2, :cond_74

    iget-object v2, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    int-to-float v2, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    goto :goto_15

    :cond_51
    iget-object v0, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v0

    if-lt v1, v0, :cond_71

    iget-object v0, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int/2addr v1, p2

    int-to-float v1, v1

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_25

    :cond_71
    move v0, v1

    move v2, v3

    goto :goto_25

    :cond_74
    move v4, v1

    move v2, v3

    goto :goto_15
.end method

.method private a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F
    .registers 9

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adhocsdk/zxing/bc;->a(IIII)F

    move-result v0

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/adhocsdk/zxing/bc;->a(IIII)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3b

    div-float v0, v1, v5

    :goto_3a
    return v0

    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_43

    div-float/2addr v0, v5

    goto :goto_3a

    :cond_43
    add-float/2addr v0, v1

    const/high16 v1, 0x41600000    # 14.0f

    div-float/2addr v0, v1

    goto :goto_3a
.end method

.method private static a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;F)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v0

    div-float/2addr v0, p3

    invoke-static {v0}, Lcom/adhocsdk/zxing/al;->a(F)I

    move-result v0

    invoke-static {p0, p2}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v1

    div-float/2addr v1, p3

    invoke-static {v1}, Lcom/adhocsdk/zxing/al;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v1, v0, 0x3

    packed-switch v1, :pswitch_data_28

    :goto_1c
    :pswitch_1c
    return v0

    :pswitch_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :pswitch_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :pswitch_23
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method private static a(Lcom/adhocsdk/zxing/aa;Lcom/adhocsdk/zxing/aj;I)Lcom/adhocsdk/zxing/aa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    invoke-static {}, Lcom/adhocsdk/zxing/ah;->a()Lcom/adhocsdk/zxing/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/adhocsdk/zxing/ah;->a(Lcom/adhocsdk/zxing/aa;IILcom/adhocsdk/zxing/aj;)Lcom/adhocsdk/zxing/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;I)Lcom/adhocsdk/zxing/aj;
    .registers 22

    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x40600000    # 3.5f

    sub-float v3, v1, v2

    if-eqz p3, :cond_3d

    invoke-virtual/range {p3 .. p3}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v14

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, v3, v1

    move v6, v1

    move v5, v1

    :goto_17
    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v7, 0x40600000    # 3.5f

    invoke-virtual/range {p0 .. p0}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v16

    move v8, v3

    invoke-static/range {v1 .. v16}, Lcom/adhocsdk/zxing/aj;->a(FFFFFFFFFFFFFFFF)Lcom/adhocsdk/zxing/aj;

    move-result-object v1

    return-object v1

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/adhocsdk/zxing/o;->a()F

    move-result v2

    add-float v13, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/adhocsdk/zxing/o;->b()F

    move-result v2

    add-float v14, v1, v2

    move v6, v3

    move v5, v3

    goto :goto_17
.end method

.method private b(IIII)F
    .registers 24

    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_5a

    const/4 v1, 0x1

    move v14, v1

    :goto_10
    if-eqz v14, :cond_8a

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    move/from16 v4, p2

    :goto_1a
    sub-int v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v16

    neg-int v5, v15

    shr-int/lit8 v8, v5, 0x1

    if-ge v4, v2, :cond_5d

    const/4 v5, 0x1

    move v13, v5

    :goto_2d
    if-ge v3, v1, :cond_60

    const/4 v5, 0x1

    :goto_30
    const/4 v9, 0x0

    add-int v17, v2, v13

    move v7, v3

    move v10, v4

    move v12, v8

    :goto_36
    move/from16 v0, v17

    if-eq v10, v0, :cond_88

    if-eqz v14, :cond_62

    move v11, v7

    :goto_3d
    if-eqz v14, :cond_64

    move v8, v10

    :goto_40
    const/4 v6, 0x1

    if-ne v9, v6, :cond_66

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v8}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v8

    if-ne v6, v8, :cond_6a

    const/4 v6, 0x2

    if-ne v9, v6, :cond_68

    invoke-static {v10, v7, v4, v3}, Lcom/adhocsdk/zxing/al;->a(IIII)F

    move-result v1

    :goto_59
    return v1

    :cond_5a
    const/4 v1, 0x0

    move v14, v1

    goto :goto_10

    :cond_5d
    const/4 v5, -0x1

    move v13, v5

    goto :goto_2d

    :cond_60
    const/4 v5, -0x1

    goto :goto_30

    :cond_62
    move v11, v10

    goto :goto_3d

    :cond_64
    move v8, v7

    goto :goto_40

    :cond_66
    const/4 v6, 0x0

    goto :goto_44

    :cond_68
    add-int/lit8 v9, v9, 0x1

    :cond_6a
    add-int v8, v12, v16

    if-lez v8, :cond_86

    if-ne v7, v1, :cond_7a

    move v5, v9

    :goto_71
    const/4 v6, 0x2

    if-ne v5, v6, :cond_83

    add-int/2addr v2, v13

    invoke-static {v2, v1, v4, v3}, Lcom/adhocsdk/zxing/al;->a(IIII)F

    move-result v1

    goto :goto_59

    :cond_7a
    add-int v6, v7, v5

    sub-int v7, v8, v15

    move v8, v7

    :goto_7f
    add-int/2addr v10, v13

    move v7, v6

    move v12, v8

    goto :goto_36

    :cond_83
    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_59

    :cond_86
    move v6, v7

    goto :goto_7f

    :cond_88
    move v5, v9

    goto :goto_71

    :cond_8a
    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p1

    goto :goto_1a
.end method


# virtual methods
.method protected final a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected final a(Lcom/adhocsdk/zxing/bf;)Lcom/adhocsdk/zxing/af;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;,
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/bf;->b()Lcom/adhocsdk/zxing/bd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/bf;->c()Lcom/adhocsdk/zxing/bd;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/bf;->a()Lcom/adhocsdk/zxing/bd;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_1b

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {v2, v3, v4, v5}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;F)I

    move-result v6

    invoke-static {v6}, Lcom/adhocsdk/zxing/az;->a(I)Lcom/adhocsdk/zxing/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/az;->d()I

    move-result v0

    add-int/lit8 v7, v0, -0x7

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/az;->b()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_78

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v1

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v8

    sub-float/2addr v1, v8

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v8

    add-float/2addr v1, v8

    invoke-virtual {v3}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v8

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v4}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40400000    # 3.0f

    int-to-float v7, v7

    div-float v7, v10, v7

    sub-float v7, v9, v7

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v9

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v10

    sub-float/2addr v1, v10

    mul-float/2addr v1, v7

    add-float/2addr v1, v9

    float-to-int v9, v1

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v1

    invoke-virtual {v2}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v10

    sub-float/2addr v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    float-to-int v7, v1

    const/4 v1, 0x4

    :goto_6f
    const/16 v8, 0x10

    if-gt v1, v8, :cond_78

    int-to-float v8, v1

    :try_start_74
    invoke-virtual {p0, v5, v9, v7, v8}, Lcom/adhocsdk/zxing/bc;->a(FIIF)Lcom/adhocsdk/zxing/ba;
    :try_end_77
    .catch Lcom/adhocsdk/zxing/i; {:try_start_74 .. :try_end_77} :catch_96

    move-result-object v0

    :cond_78
    invoke-static {v2, v3, v4, v0, v6}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;I)Lcom/adhocsdk/zxing/aj;

    move-result-object v1

    iget-object v5, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-static {v5, v1, v6}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/aa;Lcom/adhocsdk/zxing/aj;I)Lcom/adhocsdk/zxing/aa;

    move-result-object v5

    if-nez v0, :cond_9a

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adhocsdk/zxing/o;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    :goto_90
    new-instance v1, Lcom/adhocsdk/zxing/af;

    invoke-direct {v1, v5, v0}, Lcom/adhocsdk/zxing/af;-><init>(Lcom/adhocsdk/zxing/aa;[Lcom/adhocsdk/zxing/o;)V

    return-object v1

    :catch_96
    move-exception v8

    shl-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_9a
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/adhocsdk/zxing/o;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_90
.end method

.method public final a(Ljava/util/Map;)Lcom/adhocsdk/zxing/af;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/af;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;,
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    if-nez p1, :cond_17

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/adhocsdk/zxing/bc;->b:Lcom/adhocsdk/zxing/p;

    new-instance v0, Lcom/adhocsdk/zxing/be;

    iget-object v1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    iget-object v2, p0, Lcom/adhocsdk/zxing/bc;->b:Lcom/adhocsdk/zxing/p;

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/be;-><init>(Lcom/adhocsdk/zxing/aa;Lcom/adhocsdk/zxing/p;)V

    invoke-virtual {v0, p1}, Lcom/adhocsdk/zxing/be;->a(Ljava/util/Map;)Lcom/adhocsdk/zxing/bf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/bc;->a(Lcom/adhocsdk/zxing/bf;)Lcom/adhocsdk/zxing/af;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v0, Lcom/adhocsdk/zxing/e;->i:Lcom/adhocsdk/zxing/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/p;

    goto :goto_3
.end method

.method protected final a(FIIF)Lcom/adhocsdk/zxing/ba;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v0, p4, p1

    float-to-int v0, v0

    sub-int v1, p2, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v3, p2, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v1, v4, v2

    int-to-float v1, v1

    mul-float v3, p1, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_28

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_28
    sub-int v1, p3, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v0, v5, v3

    int-to-float v0, v0

    mul-float v1, p1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_49
    new-instance v0, Lcom/adhocsdk/zxing/bb;

    iget-object v1, p0, Lcom/adhocsdk/zxing/bc;->a:Lcom/adhocsdk/zxing/aa;

    sub-int/2addr v4, v2

    sub-int/2addr v5, v3

    iget-object v7, p0, Lcom/adhocsdk/zxing/bc;->b:Lcom/adhocsdk/zxing/p;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/adhocsdk/zxing/bb;-><init>(Lcom/adhocsdk/zxing/aa;IIIIFLcom/adhocsdk/zxing/p;)V

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/bb;->a()Lcom/adhocsdk/zxing/ba;

    move-result-object v0

    return-object v0
.end method
