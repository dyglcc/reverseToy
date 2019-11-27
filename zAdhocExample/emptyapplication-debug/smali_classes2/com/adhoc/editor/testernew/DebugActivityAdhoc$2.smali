.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Lcom/adhoc/editor/IAdhocDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->deleteForceClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;

    invoke-direct {v1, p0, p1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$2;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;

    invoke-direct {v1, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method
