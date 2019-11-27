.class public abstract Lcom/adhocsdk/zxing/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adhocsdk/zxing/g;->a:I

    iput p2, p0, Lcom/adhocsdk/zxing/g;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract a(I[B)[B
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/g;->a:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/g;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/adhocsdk/zxing/g;->a:I

    new-array v2, v0, [B

    new-instance v5, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/adhocsdk/zxing/g;->b:I

    iget v3, p0, Lcom/adhocsdk/zxing/g;->a:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_12
    iget v3, p0, Lcom/adhocsdk/zxing/g;->b:I

    if-ge v0, v3, :cond_48

    invoke-virtual {p0, v0, v2}, Lcom/adhocsdk/zxing/g;->a(I[B)[B

    move-result-object v2

    move v3, v1

    :goto_1b
    iget v4, p0, Lcom/adhocsdk/zxing/g;->a:I

    if-ge v3, v4, :cond_40

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x40

    if-ge v4, v6, :cond_2f

    const/16 v4, 0x23

    :goto_29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2f
    const/16 v6, 0x80

    if-ge v4, v6, :cond_36

    const/16 v4, 0x2b

    goto :goto_29

    :cond_36
    const/16 v6, 0xc0

    if-ge v4, v6, :cond_3d

    const/16 v4, 0x2e

    goto :goto_29

    :cond_3d
    const/16 v4, 0x20

    goto :goto_29

    :cond_40
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
