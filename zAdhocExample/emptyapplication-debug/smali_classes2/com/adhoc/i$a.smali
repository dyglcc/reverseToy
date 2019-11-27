.class Lcom/adhoc/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhoc/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/adhoc/i$b;

.field private c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/adhoc/i$b;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhoc/i$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/adhoc/i$a;->b:Lcom/adhoc/i$b;

    iput-object p3, p0, Lcom/adhoc/i$a;->c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    return-void
.end method

.method static synthetic a(Lcom/adhoc/i$a;)Lcom/adhoc/adhocsdk/OnAdHocReceivedData;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/i$a;->c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    return-object v0
.end method


# virtual methods
.method public onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    const-string v0, "Flag"

    const-string v1, "Get server data"

    invoke-static {p2}, Lcom/adhoc/u;->a(Lcom/adhoc/u;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adhoc/i$a;->b:Lcom/adhoc/i$b;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/adhoc/i$a;->b:Lcom/adhoc/i$b;

    invoke-static {v0}, Lcom/adhoc/i$b;->a(Lcom/adhoc/i$b;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/adhoc/i$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adhoc/i$a;->b:Lcom/adhoc/i$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adhoc/i$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/adhoc/i$a$1;

    invoke-direct {v1, p0}, Lcom/adhoc/i$a$1;-><init>(Lcom/adhoc/i$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public onSuccess(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 7

    invoke-virtual {p2}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adhoc/i$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/adhoc/i$a;->b:Lcom/adhoc/i$b;

    iget-object v3, p0, Lcom/adhoc/i$a;->c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/adhoc/i;->a(Landroid/os/Handler;Lcom/adhoc/t;Lcom/adhoc/i$b;Ljava/lang/String;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method
