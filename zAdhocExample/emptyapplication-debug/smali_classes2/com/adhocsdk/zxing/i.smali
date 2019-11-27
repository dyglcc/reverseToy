.class public final Lcom/adhocsdk/zxing/i;
.super Lcom/adhocsdk/zxing/l;


# static fields
.field private static final a:Lcom/adhocsdk/zxing/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/adhocsdk/zxing/i;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/i;-><init>()V

    sput-object v0, Lcom/adhocsdk/zxing/i;->a:Lcom/adhocsdk/zxing/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhocsdk/zxing/i;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/i;->a:Lcom/adhocsdk/zxing/i;

    return-object v0
.end method
