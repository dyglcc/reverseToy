.class final Lcom/adhocsdk/zxing/be$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adhocsdk/zxing/bd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adhocsdk/zxing/be$b;->a:F

    return-void
.end method

.method synthetic constructor <init>(FLcom/adhocsdk/zxing/be$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/be$b;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/adhocsdk/zxing/bd;Lcom/adhocsdk/zxing/bd;)I
    .registers 6

    invoke-virtual {p2}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v0

    iget v1, p0, Lcom/adhocsdk/zxing/be$b;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/bd;->c()F

    move-result v1

    iget v2, p0, Lcom/adhocsdk/zxing/be$b;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1c

    const/4 v0, -0x1

    :goto_1b
    return v0

    :cond_1c
    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    const/4 v0, 0x0

    goto :goto_1b

    :cond_22
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/adhocsdk/zxing/bd;

    check-cast p2, Lcom/adhocsdk/zxing/bd;

    invoke-virtual {p0, p1, p2}, Lcom/adhocsdk/zxing/be$b;->a(Lcom/adhocsdk/zxing/bd;Lcom/adhocsdk/zxing/bd;)I

    move-result v0

    return v0
.end method
