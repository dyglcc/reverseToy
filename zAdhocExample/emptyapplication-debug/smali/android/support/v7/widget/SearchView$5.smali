.class Landroid/support/v7/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SearchView;

    .line 975
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 978
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 979
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 983
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 985
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 986
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    .line 987
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 989
    :cond_4
    :goto_0
    return-void
.end method
