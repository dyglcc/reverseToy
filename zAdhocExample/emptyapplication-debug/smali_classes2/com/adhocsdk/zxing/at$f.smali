.class final Lcom/adhocsdk/zxing/at$f;
.super Lcom/adhocsdk/zxing/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adhocsdk/zxing/at;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhocsdk/zxing/at$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhocsdk/zxing/at$f;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)Z
    .registers 5

    mul-int v0, p1, p2

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
