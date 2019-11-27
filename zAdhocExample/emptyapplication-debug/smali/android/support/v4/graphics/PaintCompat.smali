.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 10
    .param p0, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    return v1

    .line 55
    :cond_1
    const-string v3, "\udb3f\udffd"

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 56
    .local v3, "missingGlyphWidth":F
    const-string v4, "m"

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 58
    .local v4, "emGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 60
    .local v5, "width":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    .line 62
    return v2

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    if-le v6, v1, :cond_5

    .line 68
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v4

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 69
    return v2

    .line 82
    :cond_3
    const/4 v6, 0x0

    .line 83
    .local v6, "sumWidth":F
    move v7, v6

    const/4 v6, 0x0

    .line 84
    .local v6, "i":I
    .local v7, "sumWidth":F
    :goto_0
    if-ge v6, v0, :cond_4

    .line 85
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 86
    .local v8, "charCount":I
    add-int v9, v6, v8

    invoke-virtual {p0, p1, v6, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    add-float/2addr v7, v9

    .line 87
    add-int/2addr v6, v8

    .line 88
    .end local v8    # "charCount":I
    goto :goto_0

    .line 89
    :cond_4
    cmpl-float v8, v5, v7

    if-ltz v8, :cond_5

    .line 90
    return v2

    .line 94
    .end local v6    # "i":I
    .end local v7    # "sumWidth":F
    :cond_5
    cmpl-float v6, v5, v3

    if-eqz v6, :cond_6

    .line 96
    return v1

    .line 101
    :cond_6
    invoke-static {}, Landroid/support/v4/graphics/PaintCompat;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v6

    .line 102
    .local v6, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    const-string v7, "\udb3f\udffd"

    const-string v8, "\udb3f\udffd"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v2, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    iget-object v7, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v0, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    iget-object v2, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v7, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 109
    .local v0, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_0

    .line 110
    new-instance v1, Landroid/support/v4/util/Pair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 111
    sget-object v1, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 114
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 116
    :goto_0
    return-object v0
.end method
