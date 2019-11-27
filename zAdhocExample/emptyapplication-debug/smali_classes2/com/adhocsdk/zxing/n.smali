.class public final enum Lcom/adhocsdk/zxing/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adhocsdk/zxing/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adhocsdk/zxing/n;

.field public static final enum b:Lcom/adhocsdk/zxing/n;

.field public static final enum c:Lcom/adhocsdk/zxing/n;

.field public static final enum d:Lcom/adhocsdk/zxing/n;

.field public static final enum e:Lcom/adhocsdk/zxing/n;

.field public static final enum f:Lcom/adhocsdk/zxing/n;

.field public static final enum g:Lcom/adhocsdk/zxing/n;

.field public static final enum h:Lcom/adhocsdk/zxing/n;

.field public static final enum i:Lcom/adhocsdk/zxing/n;

.field private static final synthetic j:[Lcom/adhocsdk/zxing/n;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->a:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v4}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->b:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1, v5}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->c:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->d:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1, v7}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->e:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->f:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->g:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "UPC_EAN_EXTENSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->h:Lcom/adhocsdk/zxing/n;

    new-instance v0, Lcom/adhocsdk/zxing/n;

    const-string v1, "PDF417_EXTRA_METADATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adhocsdk/zxing/n;->i:Lcom/adhocsdk/zxing/n;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adhocsdk/zxing/n;

    sget-object v1, Lcom/adhocsdk/zxing/n;->a:Lcom/adhocsdk/zxing/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adhocsdk/zxing/n;->b:Lcom/adhocsdk/zxing/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adhocsdk/zxing/n;->c:Lcom/adhocsdk/zxing/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adhocsdk/zxing/n;->d:Lcom/adhocsdk/zxing/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adhocsdk/zxing/n;->e:Lcom/adhocsdk/zxing/n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adhocsdk/zxing/n;->f:Lcom/adhocsdk/zxing/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adhocsdk/zxing/n;->g:Lcom/adhocsdk/zxing/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adhocsdk/zxing/n;->h:Lcom/adhocsdk/zxing/n;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adhocsdk/zxing/n;->i:Lcom/adhocsdk/zxing/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adhocsdk/zxing/n;->j:[Lcom/adhocsdk/zxing/n;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adhocsdk/zxing/n;
    .registers 2

    const-class v0, Lcom/adhocsdk/zxing/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adhocsdk/zxing/n;

    return-object v0
.end method

.method public static values()[Lcom/adhocsdk/zxing/n;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/n;->j:[Lcom/adhocsdk/zxing/n;

    invoke-virtual {v0}, [Lcom/adhocsdk/zxing/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adhocsdk/zxing/n;

    return-object v0
.end method
