.class Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 552
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 557
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 558
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 560
    .local v1, "tabCount":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 560
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 561
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 562
    .local v4, "child":Landroid/view/View;
    if-ne v4, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 560
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    .end local v3    # "i":I
    :cond_1
    return-void
.end method
