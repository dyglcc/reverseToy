.class public final enum Lcom/adhocsdk/zxing/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adhocsdk/zxing/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adhocsdk/zxing/e;

.field public static final enum b:Lcom/adhocsdk/zxing/e;

.field public static final enum c:Lcom/adhocsdk/zxing/e;

.field public static final enum d:Lcom/adhocsdk/zxing/e;

.field public static final enum e:Lcom/adhocsdk/zxing/e;

.field public static final enum f:Lcom/adhocsdk/zxing/e;

.field public static final enum g:Lcom/adhocsdk/zxing/e;

.field public static final enum h:Lcom/adhocsdk/zxing/e;

.field public static final enum i:Lcom/adhocsdk/zxing/e;

.field private static final synthetic k:[Lcom/adhocsdk/zxing/e;


# instance fields
.field private final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "OTHER"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->a:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "PURE_BARCODE"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v5, v2}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->b:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "POSSIBLE_FORMATS"

    const-class v2, Ljava/util/List;

    invoke-direct {v0, v1, v6, v2}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->c:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "TRY_HARDER"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v7, v2}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->d:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "CHARACTER_SET"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->e:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    const-class v3, [I

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->f:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->g:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "ASSUME_GS1"

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->h:Lcom/adhocsdk/zxing/e;

    new-instance v0, Lcom/adhocsdk/zxing/e;

    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    const/16 v2, 0x8

    const-class v3, Lcom/adhocsdk/zxing/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/adhocsdk/zxing/e;->i:Lcom/adhocsdk/zxing/e;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adhocsdk/zxing/e;

    sget-object v1, Lcom/adhocsdk/zxing/e;->a:Lcom/adhocsdk/zxing/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adhocsdk/zxing/e;->b:Lcom/adhocsdk/zxing/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adhocsdk/zxing/e;->c:Lcom/adhocsdk/zxing/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adhocsdk/zxing/e;->d:Lcom/adhocsdk/zxing/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adhocsdk/zxing/e;->e:Lcom/adhocsdk/zxing/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adhocsdk/zxing/e;->f:Lcom/adhocsdk/zxing/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adhocsdk/zxing/e;->g:Lcom/adhocsdk/zxing/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adhocsdk/zxing/e;->h:Lcom/adhocsdk/zxing/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adhocsdk/zxing/e;->i:Lcom/adhocsdk/zxing/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adhocsdk/zxing/e;->k:[Lcom/adhocsdk/zxing/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/adhocsdk/zxing/e;->j:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adhocsdk/zxing/e;
    .registers 2

    const-class v0, Lcom/adhocsdk/zxing/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/e;

    return-object v0
.end method

.method public static values()[Lcom/adhocsdk/zxing/e;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/e;->k:[Lcom/adhocsdk/zxing/e;

    invoke-virtual {v0}, [Lcom/adhocsdk/zxing/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adhocsdk/zxing/e;

    return-object v0
.end method
