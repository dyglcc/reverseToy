.class public Lcom/adhoc/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/adhoc/ad;->a()Lcom/adhoc/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/ad;->b()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 4

    const-string v0, "CommonUtils"

    const-string v1, "onActivityStop -------- "

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_13

    invoke-static {}, Lcom/adhoc/f;->c()V

    invoke-static {}, Lcom/adhoc/ad;->a()Lcom/adhoc/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adhoc/ad;->b(Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "CommonUtils"

    const-string v1, "onActivityResume -------- "

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/adhoc/l;->b()V

    invoke-static {}, Lcom/adhoc/j;->a()Lcom/adhoc/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/j;->d()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adhoc/f;->a(Z)V

    :cond_1b
    invoke-static {}, Lcom/adhoc/ad;->a()Lcom/adhoc/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adhoc/ad;->a(Landroid/content/Context;)V

    return-void
.end method
