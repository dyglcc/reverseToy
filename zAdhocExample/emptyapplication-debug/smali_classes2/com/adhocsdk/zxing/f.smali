.class public final Lcom/adhocsdk/zxing/f;
.super Lcom/adhocsdk/zxing/l;


# static fields
.field private static final a:Lcom/adhocsdk/zxing/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/adhocsdk/zxing/f;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/f;-><init>()V

    sput-object v0, Lcom/adhocsdk/zxing/f;->a:Lcom/adhocsdk/zxing/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhocsdk/zxing/f;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/f;->a:Lcom/adhocsdk/zxing/f;

    return-object v0
.end method
