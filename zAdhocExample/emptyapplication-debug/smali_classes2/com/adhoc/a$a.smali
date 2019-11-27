.class Lcom/adhoc/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/adhoc/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adhoc/a;-><init>(Lcom/adhoc/a$1;)V

    sput-object v0, Lcom/adhoc/a$a;->a:Lcom/adhoc/a;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/a;
    .registers 1

    sget-object v0, Lcom/adhoc/a$a;->a:Lcom/adhoc/a;

    return-object v0
.end method
