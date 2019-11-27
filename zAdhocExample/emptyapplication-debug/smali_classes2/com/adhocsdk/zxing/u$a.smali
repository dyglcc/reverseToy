.class final enum Lcom/adhocsdk/zxing/u$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adhocsdk/zxing/u$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adhocsdk/zxing/u$a;

.field public static final enum b:Lcom/adhocsdk/zxing/u$a;

.field public static final enum c:Lcom/adhocsdk/zxing/u$a;

.field private static final synthetic d:[Lcom/adhocsdk/zxing/u$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adhocsdk/zxing/u$a;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/u$a;->a:Lcom/adhocsdk/zxing/u$a;

    new-instance v0, Lcom/adhocsdk/zxing/u$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/adhocsdk/zxing/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/u$a;->b:Lcom/adhocsdk/zxing/u$a;

    new-instance v0, Lcom/adhocsdk/zxing/u$a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/adhocsdk/zxing/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/u$a;->c:Lcom/adhocsdk/zxing/u$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adhocsdk/zxing/u$a;

    sget-object v1, Lcom/adhocsdk/zxing/u$a;->a:Lcom/adhocsdk/zxing/u$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adhocsdk/zxing/u$a;->b:Lcom/adhocsdk/zxing/u$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adhocsdk/zxing/u$a;->c:Lcom/adhocsdk/zxing/u$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adhocsdk/zxing/u$a;->d:[Lcom/adhocsdk/zxing/u$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adhocsdk/zxing/u$a;
    .registers 2

    const-class v0, Lcom/adhocsdk/zxing/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/u$a;

    return-object v0
.end method

.method public static values()[Lcom/adhocsdk/zxing/u$a;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->d:[Lcom/adhocsdk/zxing/u$a;

    invoke-virtual {v0}, [Lcom/adhocsdk/zxing/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adhocsdk/zxing/u$a;

    return-object v0
.end method
