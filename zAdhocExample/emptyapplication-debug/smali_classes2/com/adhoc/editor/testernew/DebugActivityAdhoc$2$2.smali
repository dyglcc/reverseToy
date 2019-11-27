.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iput-object p2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v2, v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-virtual {v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->dismiss()V

    .line 289
    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v2, v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    sget v3, Lcom/adhoc/abtestlite/R$string;->adhoc_exit_experiment_failed:I

    invoke-virtual {v2, v3}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->val$s:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "tips":Ljava/lang/String;
    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v2, v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$100(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 295
    .end local v1    # "tips":Ljava/lang/String;
    :goto_28
    return-void

    .line 291
    :catch_29
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method
