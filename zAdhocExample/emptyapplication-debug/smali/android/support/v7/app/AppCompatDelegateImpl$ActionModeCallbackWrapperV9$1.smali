.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    .line 2184
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2187
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 2188
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2190
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2191
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 2193
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 2194
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2195
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2196
    return-void
.end method
