.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v1, v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-virtual {v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->dismiss()V

    .line 262
    invoke-static {}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->getInstance()Lcom/adhoc/editor/testernew/AdhocShareUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v2, v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$100(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->CURRENT_EXP_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v1, v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$300(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_tips_1:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v1, v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$400(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/adhoc/abtestlite/R$string;->adhoc_no_experiments:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v1, v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    sget v2, Lcom/adhoc/abtestlite/R$id;->btn_quit_experiment:I

    invoke-virtual {v1, v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    new-instance v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1$1;

    invoke-direct {v1, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1$1;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;)V

    invoke-static {v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->asyncGetFlag(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z

    .line 273
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v1, v1, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$100(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->this$1:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    iget-object v2, v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    sget v3, Lcom/adhoc/abtestlite/R$string;->adhoc_exit_experiment_success:I

    invoke-virtual {v2, v3}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_63

    .line 278
    :goto_62
    return-void

    .line 274
    :catch_63
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_62
.end method
