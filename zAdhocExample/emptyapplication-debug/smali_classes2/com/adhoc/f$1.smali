.class final Lcom/adhoc/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhoc/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/f;->a()V
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
.method public onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    const-string v0, "Experiment_TimeStamp"

    const-string v1, "Get server data"

    invoke-virtual {p2}, Lcom/adhoc/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/f;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adhoc/f;->b(Z)Z

    return-void
.end method

.method public onSuccess(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adhoc/f;->b(Z)Z

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/adhoc/u;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/adhoc/f;->f()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adhoc/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/adhoc/i;->a()V

    :cond_32
    const-string v0, "Experiment_TimeStamp"

    const-string v1, "Get server data"

    const-string v2, "Success"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_3b} :catch_3c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_3b} :catch_4c

    goto :goto_1a

    :catch_3c
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    const-string v1, "Experiment_TimeStamp"

    const-string v2, "Get server data"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    const-string v1, "Experiment_TimeStamp"

    const-string v2, "Get server data"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
