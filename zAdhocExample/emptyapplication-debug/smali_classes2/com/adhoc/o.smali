.class public Lcom/adhoc/o;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .registers 3

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

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

    if-nez v0, :cond_20

    :cond_1a
    const-string v0, "sub process get flag"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Lcom/adhoc/n;->a()Lcom/adhoc/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/adhoc/n;->a()Lcom/adhoc/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/n;->b()V

    goto :goto_1f
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/adhoc/n;->a()Lcom/adhoc/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/n;->e()Lcom/adhoc/m;

    move-result-object v1

    iget-object v1, v1, Lcom/adhoc/m;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/adhoc/am;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/adhoc/am;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_23} :catch_28

    move-result v1

    if-gez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :catch_28
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
