.class final Lcom/adhoc/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/i;->a()V
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
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Flag"

    const-string v1, "Get server data"

    const-string v2, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adhoc/am;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_2c
    const-string v0, "sub process get flag"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_11

    :catch_32
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/adhoc/i;->f()Lcom/adhoc/u;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/s;->a(Lcom/adhoc/u;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/i;->a(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_32

    goto :goto_11
.end method
