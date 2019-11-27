.class final Lcom/adhoc/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/aa;-><init>(Lcom/adhoc/aa$1;)V

    sput-object v0, Lcom/adhoc/aa$a;->a:Lcom/adhoc/aa;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/aa;
    .registers 1

    sget-object v0, Lcom/adhoc/aa$a;->a:Lcom/adhoc/aa;

    return-object v0
.end method
