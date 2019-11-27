.class public Landroid/support/graphics/drawable/ArgbEvaluator;
.super Ljava/lang/Object;
.source "ArgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sInstance:Landroid/support/graphics/drawable/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/support/graphics/drawable/ArgbEvaluator;

    invoke-direct {v0}, Landroid/support/graphics/drawable/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/ArgbEvaluator;->sInstance:Landroid/support/graphics/drawable/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;
    .locals 1

    .line 43
    sget-object v0, Landroid/support/graphics/drawable/ArgbEvaluator;->sInstance:Landroid/support/graphics/drawable/ArgbEvaluator;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .line 64
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, "startInt":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 66
    .local v3, "startA":F
    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 67
    .local v5, "startR":F
    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 68
    .local v6, "startG":F
    and-int/lit16 v7, v2, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v4

    .line 70
    .local v7, "startB":F
    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 71
    .local v9, "endInt":I
    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v4

    .line 72
    .local v10, "endA":F
    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float/2addr v11, v4

    .line 73
    .local v11, "endR":F
    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    div-float/2addr v12, v4

    .line 74
    .local v12, "endG":F
    and-int/lit16 v13, v9, 0xff

    int-to-float v13, v13

    div-float/2addr v13, v4

    .line 77
    .local v13, "endB":F
    float-to-double v14, v5

    move/from16 v16, v5

    const-wide v4, 0x400199999999999aL    # 2.2

    .line 77
    .end local v5    # "startR":F
    .local v16, "startR":F
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    .line 78
    .end local v16    # "startR":F
    .local v14, "startR":F
    move/from16 v17, v2

    float-to-double v1, v6

    .line 78
    .end local v2    # "startInt":I
    .local v17, "startInt":I
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 79
    .end local v6    # "startG":F
    .local v1, "startG":F
    move/from16 v18, v9

    float-to-double v8, v7

    .line 79
    .end local v9    # "endInt":I
    .local v18, "endInt":I
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v2, v8

    .line 81
    .end local v7    # "startB":F
    .local v2, "startB":F
    float-to-double v6, v11

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 82
    .end local v11    # "endR":F
    .local v6, "endR":F
    float-to-double v7, v12

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 83
    .end local v12    # "endG":F
    .local v7, "endG":F
    float-to-double v8, v13

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 86
    .end local v13    # "endB":F
    .local v4, "endB":F
    sub-float v5, v10, v3

    mul-float v5, v5, p1

    add-float/2addr v5, v3

    .line 87
    .local v5, "a":F
    sub-float v8, v6, v14

    mul-float v8, v8, p1

    add-float/2addr v8, v14

    .line 88
    .local v8, "r":F
    sub-float v9, v7, v1

    mul-float v9, v9, p1

    add-float/2addr v9, v1

    .line 89
    .local v9, "g":F
    sub-float v11, v4, v2

    mul-float v11, v11, p1

    add-float/2addr v11, v2

    .line 92
    .local v11, "b":F
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v5, v5, v12

    .line 93
    float-to-double v12, v8

    move/from16 v19, v1

    const-wide v0, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 93
    .end local v1    # "startG":F
    .local v19, "startG":F
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v12, v12, v13

    .line 94
    .end local v8    # "r":F
    .local v12, "r":F
    move/from16 v20, v14

    float-to-double v13, v9

    .line 94
    .end local v14    # "startR":F
    .local v20, "startR":F
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v8, v13

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v8, v8, v13

    .line 95
    .end local v9    # "g":F
    .local v8, "g":F
    float-to-double v14, v11

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, v13

    .line 97
    .end local v11    # "b":F
    .local v0, "b":F
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v1, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v1, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    or-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method
