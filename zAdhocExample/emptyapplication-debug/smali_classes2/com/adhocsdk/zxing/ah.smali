.class public abstract Lcom/adhocsdk/zxing/ah;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/adhocsdk/zxing/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/adhocsdk/zxing/ae;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/ae;-><init>()V

    sput-object v0, Lcom/adhocsdk/zxing/ah;->a:Lcom/adhocsdk/zxing/ah;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhocsdk/zxing/ah;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/ah;->a:Lcom/adhocsdk/zxing/ah;

    return-object v0
.end method

.method protected static a(Lcom/adhocsdk/zxing/aa;[F)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v5

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v6

    move v0, v1

    move v2, v3

    :goto_e
    array-length v4, p1

    if-ge v0, v4, :cond_4b

    if-eqz v2, :cond_4b

    aget v2, p1, v0

    float-to-int v2, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    if-lt v2, v7, :cond_23

    if-gt v2, v5, :cond_23

    if-lt v4, v7, :cond_23

    if-le v4, v6, :cond_28

    :cond_23
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_28
    if-ne v2, v7, :cond_37

    aput v8, p1, v0

    move v2, v3

    :goto_2d
    if-ne v4, v7, :cond_40

    add-int/lit8 v2, v0, 0x1

    aput v8, p1, v2

    move v2, v3

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_37
    if-ne v2, v5, :cond_90

    add-int/lit8 v2, v5, -0x1

    int-to-float v2, v2

    aput v2, p1, v0

    move v2, v3

    goto :goto_2d

    :cond_40
    if-ne v4, v6, :cond_34

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v6, -0x1

    int-to-float v4, v4

    aput v4, p1, v2

    move v2, v3

    goto :goto_34

    :cond_4b
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move v4, v3

    :goto_50
    if-ltz v2, :cond_8d

    if-eqz v4, :cond_8d

    aget v0, p1, v2

    float-to-int v0, v0

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    if-lt v0, v7, :cond_64

    if-gt v0, v5, :cond_64

    if-lt v4, v7, :cond_64

    if-le v4, v6, :cond_69

    :cond_64
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_69
    if-ne v0, v7, :cond_79

    aput v8, p1, v2

    move v0, v3

    :goto_6e
    if-ne v4, v7, :cond_82

    add-int/lit8 v0, v2, 0x1

    aput v8, p1, v0

    move v0, v3

    :cond_75
    :goto_75
    add-int/lit8 v2, v2, -0x2

    move v4, v0

    goto :goto_50

    :cond_79
    if-ne v0, v5, :cond_8e

    add-int/lit8 v0, v5, -0x1

    int-to-float v0, v0

    aput v0, p1, v2

    move v0, v3

    goto :goto_6e

    :cond_82
    if-ne v4, v6, :cond_75

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v6, -0x1

    int-to-float v4, v4

    aput v4, p1, v0

    move v0, v3

    goto :goto_75

    :cond_8d
    return-void

    :cond_8e
    move v0, v1

    goto :goto_6e

    :cond_90
    move v2, v1

    goto :goto_2d
.end method


# virtual methods
.method public abstract a(Lcom/adhocsdk/zxing/aa;IILcom/adhocsdk/zxing/aj;)Lcom/adhocsdk/zxing/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation
.end method
