.class abstract Lcom/adhocsdk/zxing/at;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhocsdk/zxing/at$h;,
        Lcom/adhocsdk/zxing/at$g;,
        Lcom/adhocsdk/zxing/at$f;,
        Lcom/adhocsdk/zxing/at$e;,
        Lcom/adhocsdk/zxing/at$d;,
        Lcom/adhocsdk/zxing/at$c;,
        Lcom/adhocsdk/zxing/at$b;,
        Lcom/adhocsdk/zxing/at$a;
    }
.end annotation


# static fields
.field private static final a:[Lcom/adhocsdk/zxing/at;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/adhocsdk/zxing/at;

    const/4 v1, 0x0

    new-instance v2, Lcom/adhocsdk/zxing/at$a;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$a;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/adhocsdk/zxing/at$b;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$b;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/adhocsdk/zxing/at$c;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$c;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/adhocsdk/zxing/at$d;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$d;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/adhocsdk/zxing/at$e;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$e;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/adhocsdk/zxing/at$f;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$f;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/adhocsdk/zxing/at$g;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$g;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/adhocsdk/zxing/at$h;

    invoke-direct {v2, v3}, Lcom/adhocsdk/zxing/at$h;-><init>(Lcom/adhocsdk/zxing/at$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adhocsdk/zxing/at;->a:[Lcom/adhocsdk/zxing/at;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhocsdk/zxing/at$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhocsdk/zxing/at;-><init>()V

    return-void
.end method

.method static a(I)Lcom/adhocsdk/zxing/at;
    .registers 2

    if-ltz p0, :cond_5

    const/4 v0, 0x7

    if-le p0, v0, :cond_b

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    sget-object v0, Lcom/adhocsdk/zxing/at;->a:[Lcom/adhocsdk/zxing/at;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/adhocsdk/zxing/aa;I)V
    .registers 7

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, p2, :cond_17

    move v0, v1

    :goto_5
    if-ge v0, p2, :cond_13

    invoke-virtual {p0, v2, v0}, Lcom/adhocsdk/zxing/at;->a(II)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v0, v2}, Lcom/adhocsdk/zxing/aa;->c(II)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_17
    return-void
.end method

.method abstract a(II)Z
.end method
