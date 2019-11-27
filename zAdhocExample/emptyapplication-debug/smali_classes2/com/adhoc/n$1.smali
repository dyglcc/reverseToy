.class Lcom/adhoc/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhoc/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adhoc/n;


# direct methods
.method constructor <init>(Lcom/adhoc/n;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/n$1;->a:Lcom/adhoc/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    const-string v0, "Config"

    const-string v1, "Get server data"

    invoke-static {p2}, Lcom/adhoc/u;->a(Lcom/adhoc/u;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    if-nez p2, :cond_c

    const-string v0, "Config"

    const-string v1, "Get server data"

    const-string v2, "The response is null."

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/adhoc/n$1;->a:Lcom/adhoc/n;

    invoke-static {v0, p2}, Lcom/adhoc/n;->a(Lcom/adhoc/n;Lcom/adhoc/u;)V

    const-string v0, "Config"

    const-string v1, "Get server data"

    const-string v2, "Success"

    invoke-static {v0, v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_b

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
