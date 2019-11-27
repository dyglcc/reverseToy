.class final Lcom/adhoc/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/l;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Number;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/adhoc/l$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adhoc/l$1;->b:Ljava/lang/Number;

    iput-object p3, p0, Lcom/adhoc/l$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/adhoc/l$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v1, -0x1

    :try_start_1
    invoke-static {}, Lcom/adhoc/l;->j()Lcom/adhoc/ah;

    move-result-object v0

    iget-object v2, p0, Lcom/adhoc/l$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adhoc/ah;->a(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_e

    move-result v0

    if-ne v0, v1, :cond_13

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    move v0, v1

    :cond_13
    iget-object v1, p0, Lcom/adhoc/l$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/adhoc/l$1;->b:Ljava/lang/Number;

    iget-object v3, p0, Lcom/adhoc/l$1;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/adhoc/l$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/adhoc/l;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_d
.end method
