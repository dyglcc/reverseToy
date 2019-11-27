.class final Lcom/adhoc/adhocsdk/AdhocTracker$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/adhocsdk/AdhocTracker;->setBack2Menu(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/adhocsdk/AdhocTracker$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/adhoc/aj;->a(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/adhoc/adhocsdk/AdhocTracker$2;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/adhoc/ae;->b(Ljava/lang/Object;Landroid/app/Activity;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/adhoc/aj;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/adhoc/adhocsdk/AdhocTracker$2;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/adhoc/ae;->a(Ljava/lang/Object;Landroid/app/Activity;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/adhoc/am;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/adhoc/aj;->a(Landroid/app/Activity;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
