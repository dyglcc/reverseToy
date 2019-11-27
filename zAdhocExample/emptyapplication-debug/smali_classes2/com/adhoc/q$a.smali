.class Lcom/adhoc/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/q;-><init>(Lcom/adhoc/q$1;)V

    sput-object v0, Lcom/adhoc/q$a;->a:Lcom/adhoc/q;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/q;
    .registers 1

    sget-object v0, Lcom/adhoc/q$a;->a:Lcom/adhoc/q;

    return-object v0
.end method
