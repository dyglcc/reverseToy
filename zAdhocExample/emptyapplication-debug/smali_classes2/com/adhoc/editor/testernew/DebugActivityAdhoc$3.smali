.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$3;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->handleMessage(Landroid/os/Message;)Z
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
    .line 348
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$3;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedData(Lcom/adhoc/adhocsdk/ExperimentFlags;)V
    .registers 5
    .param p1, "experimentFlags"    # Lcom/adhoc/adhocsdk/ExperimentFlags;

    .prologue
    .line 351
    const-string v1, "AdhocDebugActivity"

    const-string v2, "onReceivedData: update success "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->getFlagState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXPERIMENT_OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$3;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_1e

    const/4 v1, 0x2

    :goto_1a
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    return-void

    .line 353
    :cond_1e
    const/4 v1, 0x3

    goto :goto_1a
.end method
