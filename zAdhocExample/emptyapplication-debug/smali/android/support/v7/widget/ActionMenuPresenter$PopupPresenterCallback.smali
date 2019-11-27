.class Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .line 769
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 783
    instance-of v0, p1, Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 786
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 787
    .local v0, "cb":Landroid/support/v7/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 788
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 790
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 774
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 776
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 777
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v1

    .line 778
    .local v1, "cb":Landroid/support/v7/view/menu/MenuPresenter$Callback;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v0

    nop

    :cond_1
    return v0
.end method
