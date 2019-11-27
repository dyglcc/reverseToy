.class public final Lcom/adhocsdk/zxing/bd;
.super Lcom/adhocsdk/zxing/o;


# instance fields
.field private final a:F

.field private b:I


# direct methods
.method constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adhocsdk/zxing/bd;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/adhocsdk/zxing/o;-><init>(FF)V

    iput p3, p0, Lcom/adhocsdk/zxing/bd;->a:F

    iput p4, p0, Lcom/adhocsdk/zxing/bd;->b:I

    return-void
.end method


# virtual methods
.method a(FFF)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    iget v1, p0, Lcom/adhocsdk/zxing/bd;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_31

    iget v2, p0, Lcom/adhocsdk/zxing/bd;->a:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_32

    :cond_31
    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method b(FFF)Lcom/adhocsdk/zxing/bd;
    .registers 9

    iget v0, p0, Lcom/adhocsdk/zxing/bd;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/adhocsdk/zxing/bd;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/bd;->a()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iget v2, p0, Lcom/adhocsdk/zxing/bd;->b:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/bd;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/adhocsdk/zxing/bd;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/adhocsdk/zxing/bd;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    new-instance v4, Lcom/adhocsdk/zxing/bd;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/adhocsdk/zxing/bd;-><init>(FFFI)V

    return-object v4
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/bd;->a:F

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/bd;->b:I

    return v0
.end method
