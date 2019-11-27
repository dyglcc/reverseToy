.class Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;
.super Ljava/lang/Object;
.source "AdhocFloatWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->createView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    iput-object p2, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    const-string v0, "onClick: float window is clicked."

    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->i(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    # invokes: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->toDebugActivity(Ljava/lang/ref/WeakReference;)V
    invoke-static {v0, v1}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$300(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;Ljava/lang/ref/WeakReference;)V

    .line 139
    return-void
.end method
