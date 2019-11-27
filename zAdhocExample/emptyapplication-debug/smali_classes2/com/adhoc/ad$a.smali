.class Lcom/adhoc/ad$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/ad;-><init>(Lcom/adhoc/ad$1;)V

    sput-object v0, Lcom/adhoc/ad$a;->a:Lcom/adhoc/ad;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/ad;
    .registers 1

    sget-object v0, Lcom/adhoc/ad$a;->a:Lcom/adhoc/ad;

    return-object v0
.end method
