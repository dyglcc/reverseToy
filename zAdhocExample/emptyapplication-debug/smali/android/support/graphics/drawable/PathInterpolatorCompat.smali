.class public Landroid/support/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 131
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 132
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 133
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 134
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 12
    .param p1, "path"    # Landroid/graphics/Path;

    .line 137
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 139
    .local v0, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 140
    .local v2, "pathLength":F
    const v3, 0x3b03126f    # 0.002f

    div-float v3, v2, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0xbb8

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 142
    .local v3, "numPoints":I
    if-gtz v3, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Path has a invalid length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    new-array v5, v3, [F

    iput-object v5, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    .line 147
    new-array v5, v3, [F

    iput-object v5, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    .line 149
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 150
    .local v5, "position":[F
    const/4 v6, 0x0

    .line 150
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 151
    int-to-float v7, v6

    mul-float v7, v7, v2

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 152
    .local v7, "distance":F
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 154
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v9, v5, v1

    aput v9, v8, v6

    .line 155
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v9, v5, v4

    aput v9, v8, v6

    .line 150
    .end local v7    # "distance":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    .end local v6    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v6, v8

    if-gtz v4, :cond_6

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    cmpl-double v4, v6, v8

    if-gtz v4, :cond_6

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v6, v3, -0x1

    aget v4, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v10, v4

    cmpl-double v4, v10, v8

    if-gtz v4, :cond_6

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v7, v3, -0x1

    aget v4, v4, v7

    sub-float/2addr v4, v6

    .line 159
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    cmpl-double v4, v6, v8

    if-lez v4, :cond_2

    goto :goto_2

    .line 166
    :cond_2
    const/4 v4, 0x0

    .line 167
    .local v4, "prevX":F
    const/4 v6, 0x0

    .line 168
    .local v6, "componentIndex":I
    nop

    .line 168
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 169
    iget-object v7, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v8, v6, 0x1

    .line 169
    .local v8, "componentIndex":I
    aget v6, v7, v6

    .line 170
    .local v6, "x":F
    cmpg-float v7, v6, v4

    if-gez v7, :cond_3

    .line 171
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The Path cannot loop back on itself, x :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_3
    iget-object v7, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aput v6, v7, v1

    .line 174
    move v4, v6

    .line 168
    .end local v6    # "x":F
    add-int/lit8 v1, v1, 0x1

    move v6, v8

    goto :goto_1

    .line 177
    .end local v1    # "i":I
    .end local v8    # "componentIndex":I
    .local v6, "componentIndex":I
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_5
    return-void

    .line 160
    .end local v4    # "prevX":F
    .end local v6    # "componentIndex":I
    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v7, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v7, v3, -0x1

    aget v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v7, v3, -0x1

    aget v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private initQuad(FF)V
    .locals 2
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .line 123
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 124
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 125
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 126
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 127
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 82
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "pathData"

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "pathData":Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 86
    .local v1, "path":Landroid/graphics/Path;
    if-nez v1, :cond_0

    .line 87
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The path is null, which is created from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 91
    .end local v0    # "pathData":Ljava/lang/String;
    .end local v1    # "path":Landroid/graphics/Path;
    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "controlX1"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    const-string v0, "controlY1"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    const-string v0, "controlX1"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 99
    .local v0, "x1":F
    const-string v1, "controlY1"

    const/4 v3, 0x1

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 102
    .local v1, "y1":F
    const-string v3, "controlX2"

    invoke-static {p2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 103
    .local v3, "hasX2":Z
    const-string v4, "controlY2"

    invoke-static {p2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 105
    .local v4, "hasY2":Z
    if-eq v3, v4, :cond_4

    .line 106
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_4
    if-nez v3, :cond_5

    .line 111
    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    goto :goto_0

    .line 113
    :cond_5
    const-string v5, "controlX2"

    const/4 v6, 0x2

    invoke-static {p1, p2, v5, v6, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    .line 115
    .local v5, "x2":F
    const-string v6, "controlY2"

    const/4 v7, 0x3

    invoke-static {p1, p2, v6, v7, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 117
    .local v2, "y2":F
    invoke-direct {p0, v0, v1, v5, v2}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    .line 120
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v2    # "y2":F
    .end local v3    # "hasX2":Z
    .end local v4    # "hasY2":Z
    .end local v5    # "x2":F
    :goto_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "t"    # F

    .line 195
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 196
    return v0

    .line 197
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 198
    return v1

    .line 201
    :cond_1
    const/4 v1, 0x0

    .line 202
    .local v1, "startIndex":I
    iget-object v2, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 204
    .local v2, "endIndex":I
    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    .line 205
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 206
    .local v4, "midIndex":I
    iget-object v5, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 207
    move v2, v4

    goto :goto_1

    .line 209
    :cond_2
    move v1, v4

    .line 211
    .end local v4    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 213
    :cond_3
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    .line 214
    .local v3, "xRange":F
    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 215
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v0, v0, v1

    return v0

    .line 218
    :cond_4
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    .line 219
    .local v0, "tInRange":F
    div-float v4, v0, v3

    .line 221
    .local v4, "fraction":F
    iget-object v5, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v5, v5, v1

    .line 222
    .local v5, "startY":F
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v6, v6, v2

    .line 223
    .local v6, "endY":F
    sub-float v7, v6, v5

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    return v7
.end method
