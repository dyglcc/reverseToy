.class Lcom/adhoc/ab$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/ab;->a(Lcom/adhoc/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adhoc/r;

.field final synthetic b:Lcom/adhoc/ab;


# direct methods
.method constructor <init>(Lcom/adhoc/ab;Lcom/adhoc/r;)V
    .registers 3

    iput-object p1, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    iput-object p2, p0, Lcom/adhoc/ab$1;->a:Lcom/adhoc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    invoke-virtual {v0}, Lcom/adhoc/ab;->a()Lcom/adhoc/u;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_3a

    move-result-object v0

    iget-object v1, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    invoke-static {v1}, Lcom/adhoc/ab;->a(Lcom/adhoc/ab;)Lcom/adhoc/t;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/ab$1;->a:Lcom/adhoc/r;

    invoke-static {v1, v0, v2}, Lcom/adhoc/x;->a(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    invoke-static {v0}, Lcom/adhoc/ab;->a(Lcom/adhoc/ab;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/u;->b()Lcom/adhoc/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/ab$1;->a:Lcom/adhoc/r;

    invoke-static {v0, v1, v2}, Lcom/adhoc/x;->b(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    goto :goto_11

    :catch_26
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    invoke-static {v0}, Lcom/adhoc/ab;->a(Lcom/adhoc/ab;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/u;->b()Lcom/adhoc/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/ab$1;->a:Lcom/adhoc/r;

    invoke-static {v0, v1, v2}, Lcom/adhoc/x;->b(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    goto :goto_11

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adhoc/ab$1;->b:Lcom/adhoc/ab;

    invoke-static {v0}, Lcom/adhoc/ab;->a(Lcom/adhoc/ab;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/u;->b()Lcom/adhoc/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/ab$1;->a:Lcom/adhoc/r;

    invoke-static {v0, v1, v2}, Lcom/adhoc/x;->b(Lcom/adhoc/t;Lcom/adhoc/u;Lcom/adhoc/r;)V

    goto :goto_11
.end method
