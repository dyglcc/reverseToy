.class Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_TYPE_WINDING:I


# instance fields
.field mFillAlpha:F

.field mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1817
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1802
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1805
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1807
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1808
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1809
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1810
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1811
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1813
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1814
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1815
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1822
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1802
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1805
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1807
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1808
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1809
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1810
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1811
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1813
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1814
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1815
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1823
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1825
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1826
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1827
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1828
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1829
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1830
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1831
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1832
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1833
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1835
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1836
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1837
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1838
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .line 1841
    packed-switch p1, :pswitch_data_0

    .line 1849
    return-object p2

    .line 1847
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1845
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1843
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .line 1854
    packed-switch p1, :pswitch_data_0

    .line 1862
    return-object p2

    .line 1860
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1858
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1856
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1890
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1891
    .local v0, "hasPathData":Z
    if-nez v0, :cond_0

    .line 1894
    return-void

    .line 1897
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1900
    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1902
    :cond_1
    const/4 v2, 0x2

    .line 1903
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1904
    .local v2, "pathData":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1905
    invoke-static {v2}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v3

    iput-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1908
    :cond_2
    const-string v7, "fillColor"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v3

    iput-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1910
    const-string v3, "fillAlpha"

    const/16 v4, 0xc

    iget v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {p1, p2, v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1912
    const-string v3, "strokeLineCap"

    const/16 v4, 0x8

    const/4 v5, -0x1

    invoke-static {p1, p2, v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 1914
    .local v3, "lineCap":I
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iput-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1915
    const-string v4, "strokeLineJoin"

    const/16 v6, 0x9

    invoke-static {p1, p2, v4, v6, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 1917
    .local v4, "lineJoin":I
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1918
    const-string v5, "strokeMiterLimit"

    const/16 v6, 0xa

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1921
    const-string v9, "strokeColor"

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1923
    const-string v5, "strokeAlpha"

    const/16 v6, 0xb

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1925
    const-string v5, "strokeWidth"

    const/4 v6, 0x4

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1927
    const-string v5, "trimPathEnd"

    const/4 v6, 0x6

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1929
    const-string v5, "trimPathOffset"

    const/4 v6, 0x7

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1932
    const-string v5, "trimPathStart"

    const/4 v6, 0x5

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1935
    const-string v5, "fillType"

    const/16 v6, 0xd

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1938
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1954
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-nez v0, :cond_0

    .line 1955
    return-void

    .line 1963
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1868
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getFillAlpha()F
    .locals 1

    .line 2010
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 2000
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .line 1989
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 1969
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .line 1979
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .line 2030
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .line 2040
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .line 2020
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1872
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1874
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4, p3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1875
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1876
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1942
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .line 1947
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v0

    .line 1948
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1949
    return v0
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .line 2015
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 2016
    return-void
.end method

.method setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .line 2005
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->setColor(I)V

    .line 2006
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .line 1994
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1995
    return-void
.end method

.method setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .line 1974
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->setColor(I)V

    .line 1975
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .line 1984
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1985
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .line 2035
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 2036
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .line 2045
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 2046
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .line 2025
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 2026
    return-void
.end method
