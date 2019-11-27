.class public final Lcom/adhocsdk/zxing/ba;
.super Lcom/adhocsdk/zxing/o;


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/adhocsdk/zxing/o;-><init>(FF)V

    iput p3, p0, Lcom/adhocsdk/zxing/ba;->a:F

    return-void
.end method


# virtual methods
.method a(FFF)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ba;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ba;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    iget v1, p0, Lcom/adhocsdk/zxing/ba;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_31

    iget v2, p0, Lcom/adhocsdk/zxing/ba;->a:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_32

    :cond_31
    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method b(FFF)Lcom/adhocsdk/zxing/ba;
    .registers 8

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ba;->a()F

    move-result v0

    add-float/2addr v0, p2

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ba;->b()F

    move-result v1

    add-float/2addr v1, p1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/adhocsdk/zxing/ba;->a:F

    add-float/2addr v2, p3

    div-float/2addr v2, v3

    new-instance v3, Lcom/adhocsdk/zxing/ba;

    invoke-direct {v3, v0, v1, v2}, Lcom/adhocsdk/zxing/ba;-><init>(FFF)V

    return-object v3
.end method
