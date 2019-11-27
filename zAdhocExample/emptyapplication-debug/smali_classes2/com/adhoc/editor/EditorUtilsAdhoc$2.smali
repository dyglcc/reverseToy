.class final Lcom/adhoc/editor/EditorUtilsAdhoc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhoc/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/EditorUtilsAdhoc;->exitDebugExperiment(Lcom/adhoc/editor/IAdhocDebug;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/IAdhocDebug;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 7

    invoke-static {p2}, Lcom/adhoc/u;->a(Lcom/adhoc/u;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdhocDebugError\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adhoc/editor/IAdhocDebug;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/adhoc/t;Lcom/adhoc/u;)V
    .registers 6

    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    const-string v1, "AdhocDebugError\n Adhoc http response is null."

    invoke-interface {v0, v1}, Lcom/adhoc/editor/IAdhocDebug;->onFailed(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p2}, Lcom/adhoc/u;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_10
    iget-object v0, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    invoke-virtual {p2}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adhoc/editor/IAdhocDebug;->onSuccess(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_9

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    const-string v1, "AdhocDebugError\nUnknown error."

    invoke-interface {v0, v1}, Lcom/adhoc/editor/IAdhocDebug;->onFailed(Ljava/lang/String;)V

    goto :goto_9

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/adhoc/editor/EditorUtilsAdhoc$2;->val$adhocDebug:Lcom/adhoc/editor/IAdhocDebug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdhocDebugError\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adhoc/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adhoc/editor/IAdhocDebug;->onFailed(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_46} :catch_1e

    goto :goto_9
.end method
