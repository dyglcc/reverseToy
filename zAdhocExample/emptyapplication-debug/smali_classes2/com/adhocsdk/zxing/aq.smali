.class public Lcom/adhocsdk/zxing/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhocsdk/zxing/k;


# static fields
.field private static final a:[Lcom/adhocsdk/zxing/o;


# instance fields
.field private final b:Lcom/adhocsdk/zxing/av;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/adhocsdk/zxing/o;

    sput-object v0, Lcom/adhocsdk/zxing/aq;->a:[Lcom/adhocsdk/zxing/o;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adhocsdk/zxing/av;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/av;-><init>()V

    iput-object v0, p0, Lcom/adhocsdk/zxing/aq;->b:Lcom/adhocsdk/zxing/av;

    return-void
.end method

.method private static a([ILcom/adhocsdk/zxing/aa;)F
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/aa;->d()I

    move-result v7

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/aa;->c()I

    move-result v8

    aget v6, p0, v2

    aget v3, p0, v1

    move v0, v2

    move v4, v1

    move v5, v3

    :goto_11
    if-ge v6, v8, :cond_20

    if-ge v5, v7, :cond_20

    invoke-virtual {p1, v6, v5}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v3

    if-eq v4, v3, :cond_3e

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_29

    :cond_20
    if-eq v6, v8, :cond_24

    if-ne v5, v7, :cond_35

    :cond_24
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_29
    if-nez v4, :cond_33

    move v0, v1

    :goto_2c
    move v4, v0

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_11

    :cond_33
    move v0, v2

    goto :goto_2c

    :cond_35
    aget v0, p0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    return v0

    :cond_3e
    move v3, v0

    goto :goto_2d
.end method

.method private static a(Lcom/adhocsdk/zxing/aa;)Lcom/adhocsdk/zxing/aa;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/aa;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/aa;->b()[I

    move-result-object v1

    if-eqz v0, :cond_e

    if-nez v1, :cond_13

    :cond_e
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {v0, p0}, Lcom/adhocsdk/zxing/aq;->a([ILcom/adhocsdk/zxing/aa;)F

    move-result v5

    aget v3, v0, v4

    aget v6, v1, v4

    aget v4, v0, v2

    aget v0, v1, v2

    if-ge v4, v0, :cond_23

    if-lt v3, v6, :cond_28

    :cond_23
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_28
    sub-int v1, v6, v3

    sub-int v7, v0, v4

    if-eq v1, v7, :cond_31

    sub-int v0, v6, v3

    add-int/2addr v0, v4

    :cond_31
    sub-int v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v1, v6, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-lez v7, :cond_49

    if-gtz v8, :cond_4e

    :cond_49
    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_4e
    if-eq v8, v7, :cond_55

    invoke-static {}, Lcom/adhocsdk/zxing/i;->a()Lcom/adhocsdk/zxing/i;

    move-result-object v0

    throw v0

    :cond_55
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v5, v1

    float-to-int v9, v1

    add-int v1, v3, v9

    add-int v3, v4, v9

    add-int/lit8 v4, v7, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    add-int/lit8 v0, v0, -0x1

    sub-int v0, v4, v0

    if-lez v0, :cond_a1

    sub-int v0, v3, v0

    move v4, v0

    :goto_6d
    add-int/lit8 v0, v8, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v6, -0x1

    sub-int/2addr v0, v3

    if-lez v0, :cond_9f

    sub-int v0, v1, v0

    :goto_7a
    new-instance v6, Lcom/adhocsdk/zxing/aa;

    invoke-direct {v6, v7, v8}, Lcom/adhocsdk/zxing/aa;-><init>(II)V

    move v3, v2

    :goto_80
    if-ge v3, v8, :cond_9e

    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int v9, v0, v1

    move v1, v2

    :goto_88
    if-ge v1, v7, :cond_9a

    int-to-float v10, v1

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v10, v4

    invoke-virtual {p0, v10, v9}, Lcom/adhocsdk/zxing/aa;->a(II)Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-virtual {v6, v1, v3}, Lcom/adhocsdk/zxing/aa;->b(II)V

    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    :cond_9a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_80

    :cond_9e
    return-object v6

    :cond_9f
    move v0, v1

    goto :goto_7a

    :cond_a1
    move v4, v3

    goto :goto_6d
.end method


# virtual methods
.method public final a(Lcom/adhocsdk/zxing/c;Ljava/util/Map;)Lcom/adhocsdk/zxing/m;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/zxing/c;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;,
            Lcom/adhocsdk/zxing/d;,
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    if-eqz p2, :cond_40

    sget-object v0, Lcom/adhocsdk/zxing/e;->b:Lcom/adhocsdk/zxing/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/c;->a()Lcom/adhocsdk/zxing/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/adhocsdk/zxing/aq;->a(Lcom/adhocsdk/zxing/aa;)Lcom/adhocsdk/zxing/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/aq;->b:Lcom/adhocsdk/zxing/av;

    invoke-virtual {v1, v0, p2}, Lcom/adhocsdk/zxing/av;->a(Lcom/adhocsdk/zxing/aa;Ljava/util/Map;)Lcom/adhocsdk/zxing/ad;

    move-result-object v1

    sget-object v0, Lcom/adhocsdk/zxing/aq;->a:[Lcom/adhocsdk/zxing/o;

    :goto_1a
    new-instance v2, Lcom/adhocsdk/zxing/m;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/ad;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/ad;->a()[B

    move-result-object v4

    sget-object v5, Lcom/adhocsdk/zxing/a;->l:Lcom/adhocsdk/zxing/a;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/adhocsdk/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/a;)V

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/ad;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    sget-object v3, Lcom/adhocsdk/zxing/n;->c:Lcom/adhocsdk/zxing/n;

    invoke-virtual {v2, v3, v0}, Lcom/adhocsdk/zxing/m;->a(Lcom/adhocsdk/zxing/n;Ljava/lang/Object;)V

    :cond_34
    invoke-virtual {v1}, Lcom/adhocsdk/zxing/ad;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    sget-object v1, Lcom/adhocsdk/zxing/n;->d:Lcom/adhocsdk/zxing/n;

    invoke-virtual {v2, v1, v0}, Lcom/adhocsdk/zxing/m;->a(Lcom/adhocsdk/zxing/n;Ljava/lang/Object;)V

    :cond_3f
    return-object v2

    :cond_40
    new-instance v0, Lcom/adhocsdk/zxing/bc;

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/c;->a()Lcom/adhocsdk/zxing/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/bc;-><init>(Lcom/adhocsdk/zxing/aa;)V

    invoke-virtual {v0, p2}, Lcom/adhocsdk/zxing/bc;->a(Ljava/util/Map;)Lcom/adhocsdk/zxing/af;

    move-result-object v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/aq;->b:Lcom/adhocsdk/zxing/av;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/af;->a()Lcom/adhocsdk/zxing/aa;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/adhocsdk/zxing/av;->a(Lcom/adhocsdk/zxing/aa;Ljava/util/Map;)Lcom/adhocsdk/zxing/ad;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/af;->b()[Lcom/adhocsdk/zxing/o;

    move-result-object v0

    goto :goto_1a
.end method

.method public a()V
    .registers 1

    return-void
.end method
