.class Lcom/adhoc/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/n;-><init>(Lcom/adhoc/n$1;)V

    sput-object v0, Lcom/adhoc/n$a;->a:Lcom/adhoc/n;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/n;
    .registers 1

    sget-object v0, Lcom/adhoc/n$a;->a:Lcom/adhoc/n;

    return-object v0
.end method
