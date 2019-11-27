.class Lcom/adhoc/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/j;-><init>(Lcom/adhoc/j$1;)V

    sput-object v0, Lcom/adhoc/j$a;->a:Lcom/adhoc/j;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/j;
    .registers 1

    sget-object v0, Lcom/adhoc/j$a;->a:Lcom/adhoc/j;

    return-object v0
.end method
