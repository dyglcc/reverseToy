.class public Lcom/adhocsdk/zxing/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adhocsdk/zxing/o;->a:F

    iput p2, p0, Lcom/adhocsdk/zxing/o;->b:F

    return-void
.end method

.method public static a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F
    .registers 6

    iget v0, p0, Lcom/adhocsdk/zxing/o;->a:F

    iget v1, p0, Lcom/adhocsdk/zxing/o;->b:F

    iget v2, p1, Lcom/adhocsdk/zxing/o;->a:F

    iget v3, p1, Lcom/adhocsdk/zxing/o;->b:F

    invoke-static {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/al;->a(FFFF)F

    move-result v0

    return v0
.end method

.method private static a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F
    .registers 7

    iget v0, p1, Lcom/adhocsdk/zxing/o;->a:F

    iget v1, p1, Lcom/adhocsdk/zxing/o;->b:F

    iget v2, p2, Lcom/adhocsdk/zxing/o;->a:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/adhocsdk/zxing/o;->b:F

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/adhocsdk/zxing/o;->b:F

    sub-float v1, v3, v1

    iget v3, p0, Lcom/adhocsdk/zxing/o;->a:F

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method public static a([Lcom/adhocsdk/zxing/o;)V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget-object v0, p0, v5

    aget-object v1, p0, v6

    invoke-static {v0, v1}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v0

    aget-object v1, p0, v6

    aget-object v2, p0, v7

    invoke-static {v1, v2}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v1

    aget-object v2, p0, v5

    aget-object v3, p0, v7

    invoke-static {v2, v3}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v2

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_3b

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3b

    aget-object v1, p0, v5

    aget-object v2, p0, v6

    aget-object v0, p0, v7

    :goto_29
    invoke-static {v2, v1, v0}, Lcom/adhocsdk/zxing/o;->a(Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/o;)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_51

    move-object v3, v2

    move-object v4, v0

    :goto_34
    aput-object v4, p0, v5

    aput-object v1, p0, v6

    aput-object v3, p0, v7

    return-void

    :cond_3b
    cmpl-float v1, v2, v1

    if-ltz v1, :cond_4a

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_4a

    aget-object v1, p0, v6

    aget-object v2, p0, v5

    aget-object v0, p0, v7

    goto :goto_29

    :cond_4a
    aget-object v1, p0, v7

    aget-object v2, p0, v5

    aget-object v0, p0, v6

    goto :goto_29

    :cond_51
    move-object v3, v0

    move-object v4, v2

    goto :goto_34
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/o;->a:F

    return v0
.end method

.method public final b()F
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/o;->b:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/adhocsdk/zxing/o;

    if-eqz v1, :cond_18

    check-cast p1, Lcom/adhocsdk/zxing/o;

    iget v1, p0, Lcom/adhocsdk/zxing/o;->a:F

    iget v2, p1, Lcom/adhocsdk/zxing/o;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, p0, Lcom/adhocsdk/zxing/o;->b:F

    iget v2, p1, Lcom/adhocsdk/zxing/o;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/adhocsdk/zxing/o;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/adhocsdk/zxing/o;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/adhocsdk/zxing/o;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/adhocsdk/zxing/o;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
