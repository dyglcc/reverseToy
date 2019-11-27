.class final Lcom/adhoc/adhocsdk/AdhocTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/adhocsdk/AdhocTracker;->init(Lcom/adhoc/config/AdhocConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    const-string v0, "5.1.3"

    invoke-static {v0}, Lcom/adhoc/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    # setter for: Lcom/adhoc/adhocsdk/AdhocTracker;->crashed:Z
    invoke-static {v0}, Lcom/adhoc/adhocsdk/AdhocTracker;->access$002(Z)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_59
    .catchall {:try_start_0 .. :try_end_c} :catchall_65

    const-string v0, "AdhocTracker"

    const-string v1, "init end."

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    :try_start_14
    # invokes: Lcom/adhoc/adhocsdk/AdhocTracker;->abNormalSdkState()Z
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->access$100()Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_59
    .catchall {:try_start_14 .. :try_end_17} :catchall_65

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "AdhocTracker"

    const-string v1, "init end."

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/adhoc/am;->b()Z

    move-result v0

    if-nez v0, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_31

    # invokes: Lcom/adhoc/adhocsdk/AdhocTracker;->closeAndroidPDialog()V
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->access$200()V

    :cond_31
    invoke-static {}, Lcom/adhoc/o;->a()V

    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/j;->c()V

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->c()V

    invoke-static {}, Lcom/adhoc/d;->a()Lcom/adhoc/d;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adhoc/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/adhoc/l;->a()V

    invoke-static {}, Lcom/adhoc/ac;->b()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_51} :catch_59
    .catchall {:try_start_22 .. :try_end_51} :catchall_65

    const-string v0, "AdhocTracker"

    const-string v1, "init end."

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_59
    move-exception v0

    :try_start_5a
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    const-string v0, "AdhocTracker"

    const-string v1, "init end."

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catchall_65
    move-exception v0

    const-string v1, "AdhocTracker"

    const-string v2, "init end."

    invoke-static {v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
