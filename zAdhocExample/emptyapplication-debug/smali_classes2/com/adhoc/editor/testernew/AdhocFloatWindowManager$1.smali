.class Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;
.super Ljava/lang/Object;
.source "AdhocFloatWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInitalTouchX:I

.field mInitalTouchY:I

.field mIsDragEvent:Z

.field final synthetic this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mIsDragEvent:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 36
    iget-object v7, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    # getter for: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$000(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/view/WindowManager;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    # getter for: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$100(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_13

    if-nez p2, :cond_14

    .line 69
    :cond_13
    :goto_13
    return v6

    .line 38
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 39
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v4, v7

    .line 40
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v5, v7

    .line 41
    .local v5, "y":I
    packed-switch v0, :pswitch_data_88

    .line 69
    :cond_25
    :goto_25
    iget-boolean v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mIsDragEvent:Z

    goto :goto_13

    .line 43
    :pswitch_28
    iput-boolean v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mIsDragEvent:Z

    .line 44
    iput v4, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mInitalTouchX:I

    .line 45
    iput v5, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mInitalTouchY:I

    goto :goto_25

    .line 48
    :pswitch_2f
    iget v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mInitalTouchX:I

    sub-int v1, v4, v6

    .line 49
    .local v1, "diffX":I
    iget v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mInitalTouchY:I

    sub-int v2, v5, v6

    .line 51
    .local v2, "diffY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    # getter for: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mTouchSlop:I
    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$200(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)I

    move-result v7

    if-le v6, v7, :cond_25

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 54
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iget-object v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    # getter for: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v6}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$000(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    # getter for: Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->access$100(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mIsDragEvent:Z

    goto :goto_25

    .line 61
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :pswitch_71
    iget-boolean v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->mIsDragEvent:Z

    if-eqz v6, :cond_25

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v7, v6, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentY:I

    .line 64
    iget-object v6, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;->this$0:Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v7, v6, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentX:I

    goto :goto_25

    .line 41
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_28
        :pswitch_71
        :pswitch_2f
    .end packed-switch
.end method
