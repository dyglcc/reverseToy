.class public final Lcom/adhocsdk/zxing/d;
.super Lcom/adhocsdk/zxing/l;


# static fields
.field private static final a:Lcom/adhocsdk/zxing/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/adhocsdk/zxing/d;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/d;-><init>()V

    sput-object v0, Lcom/adhocsdk/zxing/d;->a:Lcom/adhocsdk/zxing/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhocsdk/zxing/d;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/d;->a:Lcom/adhocsdk/zxing/d;

    return-object v0
.end method
