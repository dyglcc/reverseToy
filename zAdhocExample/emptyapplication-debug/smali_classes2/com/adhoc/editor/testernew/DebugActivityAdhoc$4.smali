.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$4;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->secondDeniedPermissionAlert(Ljava/lang/String;I)V
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
    .line 390
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$4;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$4;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # invokes: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showRequestCameraPermissionError()V
    invoke-static {v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$500(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V

    .line 394
    return-void
.end method
