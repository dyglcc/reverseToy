.class public Lcom/adhoc/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/af$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adhoc/af;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/adhoc/af;
    .registers 1

    invoke-static {}, Lcom/adhoc/af$a;->a()Lcom/adhoc/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/adhoc/af;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;J)Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lcom/adhoc/af;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/af;->a:Landroid/os/Handler;

    return-object v0
.end method
