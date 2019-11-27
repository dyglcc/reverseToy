.class Lcom/adhoc/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/adhoc/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/h;-><init>(Lcom/adhoc/h$1;)V

    sput-object v0, Lcom/adhoc/h$a;->a:Lcom/adhoc/h;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/h;
    .registers 1

    sget-object v0, Lcom/adhoc/h$a;->a:Lcom/adhoc/h;

    return-object v0
.end method
