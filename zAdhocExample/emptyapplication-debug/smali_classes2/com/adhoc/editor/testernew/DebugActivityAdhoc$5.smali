.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;
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

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    iput-object p2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->val$permission:Ljava/lang/String;

    iput p3, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->val$permission:Ljava/lang/String;

    iget v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/adhoc/editor/testernew/AdhocUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 388
    return-void
.end method
