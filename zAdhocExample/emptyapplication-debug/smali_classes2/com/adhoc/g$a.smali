.class Lcom/adhoc/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/g;-><init>(Lcom/adhoc/g$1;)V

    sput-object v0, Lcom/adhoc/g$a;->a:Lcom/adhoc/g;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/g;
    .registers 1

    sget-object v0, Lcom/adhoc/g$a;->a:Lcom/adhoc/g;

    return-object v0
.end method
