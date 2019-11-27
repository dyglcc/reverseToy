.class Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 321
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 322
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 325
    .local v2, "count":I
    const/4 v3, 0x0

    .line 325
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 326
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 328
    invoke-interface {v5}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 329
    return-object v4

    .line 325
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 211
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 214
    .local v0, "menuView":Landroid/support/v7/widget/ActionMenuView;
    move-object v1, p2

    check-cast v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 215
    .local v1, "actionItemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V

    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 220
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 221
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 381
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 382
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 383
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 280
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 26

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 423
    .local v3, "itemsSize":I
    goto :goto_0

    .line 425
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    .end local v3    # "itemsSize":I
    :cond_0
    const/4 v1, 0x0

    .line 426
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    const/4 v3, 0x0

    .line 429
    .restart local v3    # "itemsSize":I
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 430
    .local v4, "maxActions":I
    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 431
    .local v5, "widthLimit":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 432
    .local v6, "querySpec":I
    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 434
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 435
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 436
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 437
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 438
    .local v11, "hasOverflow":Z
    move v12, v4

    const/4 v4, 0x0

    .line 438
    .local v4, "i":I
    .local v12, "maxActions":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 439
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 440
    .local v13, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v13}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 441
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 442
    :cond_1
    invoke-virtual {v13}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 443
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 445
    :cond_2
    const/4 v11, 0x1

    .line 447
    :goto_2
    iget-boolean v14, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 450
    const/4 v12, 0x0

    .line 438
    .end local v13    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    .end local v4    # "i":I
    :cond_4
    iget-boolean v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    if-nez v11, :cond_5

    add-int v4, v8, v9

    if-le v4, v12, :cond_6

    .line 457
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 459
    :cond_6
    sub-int/2addr v12, v8

    .line 461
    iget-object v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 462
    .local v4, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 464
    const/4 v13, 0x0

    .line 465
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 466
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    .line 467
    iget v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v5, v15

    .line 468
    iget v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v15, v5, v15

    .line 469
    .local v15, "cellSizeRemaining":I
    iget v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v16, v15, v14

    add-int v13, v2, v16

    .line 473
    .end local v15    # "cellSizeRemaining":I
    :cond_7
    const/4 v2, 0x0

    .line 473
    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_20

    .line 474
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 476
    .local v15, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 477
    move/from16 v17, v3

    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 477
    .end local v3    # "itemsSize":I
    .local v17, "itemsSize":I
    invoke-virtual {v0, v15, v3, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "v":Landroid/view/View;
    move/from16 v18, v8

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 478
    .end local v8    # "requiredItems":I
    .local v18, "requiredItems":I
    if-nez v8, :cond_8

    .line 479
    iput-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 481
    :cond_8
    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_9

    .line 482
    const/4 v8, 0x0

    invoke-static {v3, v13, v14, v6, v8}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    sub-int v14, v14, v16

    goto :goto_4

    .line 485
    :cond_9
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 487
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 488
    .local v8, "measuredWidth":I
    sub-int/2addr v5, v8

    .line 489
    if-nez v10, :cond_a

    .line 490
    move v10, v8

    .line 492
    :cond_a
    move-object/from16 v19, v3

    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 493
    .local v3, "groupId":I
    .local v19, "v":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 494
    move/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 496
    :cond_b
    move/from16 v20, v5

    const/4 v5, 0x1

    .line 496
    .end local v5    # "widthLimit":I
    .local v20, "widthLimit":I
    :goto_5
    invoke-virtual {v15, v5}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 497
    .end local v3    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v19    # "v":Landroid/view/View;
    nop

    .line 473
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v21, v9

    move/from16 v5, v20

    .line 473
    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "requestedItems":I
    .end local v15    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v20    # "widthLimit":I
    .restart local v5    # "widthLimit":I
    .local v21, "requestedItems":I
    .local v23, "parent":Landroid/view/ViewGroup;
    .local v24, "querySpec":I
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 497
    .end local v17    # "itemsSize":I
    .end local v18    # "requiredItems":I
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v3, "itemsSize":I
    .restart local v6    # "querySpec":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    .restart local v9    # "requestedItems":I
    .restart local v15    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_c
    move/from16 v17, v3

    move/from16 v18, v8

    .line 497
    .end local v3    # "itemsSize":I
    .end local v8    # "requiredItems":I
    .restart local v17    # "itemsSize":I
    .restart local v18    # "requiredItems":I
    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 500
    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 501
    .local v3, "groupId":I
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 502
    .local v8, "inGroup":Z
    if-gtz v12, :cond_e

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v21, v9

    goto :goto_8

    :cond_e
    :goto_7
    if-lez v5, :cond_10

    move/from16 v21, v9

    iget-boolean v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 502
    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    if-eqz v9, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v9, 0x1

    goto :goto_9

    .line 502
    .end local v21    # "requestedItems":I
    .restart local v9    # "requestedItems":I
    :cond_10
    move/from16 v21, v9

    .line 502
    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    :cond_11
    :goto_8
    const/4 v9, 0x0

    .line 505
    .local v9, "isAction":Z
    :goto_9
    if-eqz v9, :cond_19

    .line 506
    move/from16 v22, v9

    iget-object v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 506
    .end local v9    # "isAction":Z
    .local v22, "isAction":Z
    invoke-virtual {v0, v15, v9, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 507
    .local v9, "v":Landroid/view/View;
    move-object/from16 v23, v7

    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 507
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_12

    .line 508
    iput-object v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 510
    :cond_12
    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v7, :cond_14

    .line 511
    const/4 v7, 0x0

    invoke-static {v9, v13, v14, v6, v7}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    .line 513
    .local v16, "cells":I
    sub-int v14, v14, v16

    .line 514
    if-nez v16, :cond_13

    .line 515
    const/4 v7, 0x0

    .line 515
    .end local v16    # "cells":I
    .end local v22    # "isAction":Z
    .local v7, "isAction":Z
    goto :goto_a

    .line 517
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_13
    move/from16 v7, v22

    .line 517
    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_a
    goto :goto_b

    .line 518
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_14
    invoke-virtual {v9, v6, v6}, Landroid/view/View;->measure(II)V

    .line 520
    move/from16 v7, v22

    .line 520
    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 521
    .local v16, "measuredWidth":I
    sub-int v5, v5, v16

    .line 522
    if-nez v10, :cond_15

    .line 523
    move/from16 v10, v16

    .line 526
    :cond_15
    move/from16 v24, v6

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 526
    .end local v6    # "querySpec":I
    .restart local v24    # "querySpec":I
    if-eqz v6, :cond_17

    .line 527
    if-ltz v5, :cond_16

    const/4 v6, 0x1

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    :goto_c
    and-int/2addr v6, v7

    .line 527
    .end local v7    # "isAction":Z
    .local v6, "isAction":Z
    goto :goto_e

    .line 530
    .end local v6    # "isAction":Z
    .restart local v7    # "isAction":Z
    :cond_17
    add-int v6, v5, v10

    if-lez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    and-int v9, v7, v6

    .line 534
    .end local v7    # "isAction":Z
    .end local v16    # "measuredWidth":I
    .local v9, "isAction":Z
    move v6, v9

    goto :goto_e

    .line 534
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v6, "querySpec":I
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_19
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v22, v9

    move/from16 v6, v22

    .line 534
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "isAction":Z
    .local v6, "isAction":Z
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    :goto_e
    if-eqz v6, :cond_1a

    if-eqz v3, :cond_1a

    .line 535
    const/4 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_10

    .line 536
    :cond_1a
    if-eqz v8, :cond_1d

    .line 538
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 539
    const/4 v7, 0x0

    .line 539
    .local v7, "j":I
    :goto_f
    if-ge v7, v2, :cond_1d

    .line 540
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 541
    .local v9, "areYouMyGroupie":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 543
    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v12, v12, 0x1

    .line 544
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 539
    .end local v9    # "areYouMyGroupie":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_f

    .line 549
    .end local v7    # "j":I
    :cond_1d
    :goto_10
    if-eqz v6, :cond_1e

    add-int/lit8 v12, v12, -0x1

    .line 551
    :cond_1e
    invoke-virtual {v15, v6}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 552
    .end local v3    # "groupId":I
    .end local v6    # "isAction":Z
    .end local v8    # "inGroup":Z
    goto/16 :goto_6

    .line 554
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v6, "querySpec":I
    .local v7, "parent":Landroid/view/ViewGroup;
    .local v9, "requestedItems":I
    :cond_1f
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v21, v9

    .line 554
    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 473
    .end local v15    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move/from16 v8, v18

    move/from16 v9, v21

    move-object/from16 v7, v23

    move/from16 v6, v24

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 557
    .end local v2    # "i":I
    .end local v17    # "itemsSize":I
    .end local v18    # "requiredItems":I
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v3, "itemsSize":I
    .restart local v6    # "querySpec":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    .restart local v9    # "requestedItems":I
    :cond_20
    move/from16 v17, v3

    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v18, v8

    move/from16 v21, v9

    .line 557
    .end local v3    # "itemsSize":I
    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "requiredItems":I
    .end local v9    # "requestedItems":I
    .restart local v17    # "itemsSize":I
    .restart local v18    # "requiredItems":I
    .restart local v21    # "requestedItems":I
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    move-object v1, p3

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .line 202
    .local v1, "menuParent":Landroid/support/v7/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 203
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 186
    .local v0, "oldMenuView":Landroid/support/v7/view/menu/MenuView;
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v1

    .line 187
    .local v1, "result":Landroid/support/v7/view/menu/MenuView;
    if-eq v0, v1, :cond_0

    .line 188
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 365
    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 369
    .local v0, "popup":Landroid/support/v7/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 371
    return v1

    .line 373
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v1

    .line 98
    .local v1, "abp":Landroid/support/v7/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 102
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 107
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 111
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 112
    .local v2, "width":I
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 113
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_4

    .line 114
    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 120
    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 121
    .local v3, "spec":I
    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v5, v3, v3}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    .end local v3    # "spec":I
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 125
    :cond_5
    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 128
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 562
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 563
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 564
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 137
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 575
    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    .line 580
    .local v0, "saved":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1

    .line 581
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v2, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 582
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 583
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 584
    .local v2, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 587
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 568
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 569
    .local v0, "state":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 570
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 285
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 287
    :cond_0
    move-object v0, p1

    .line 288
    .local v0, "topSubMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 292
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_2

    .line 297
    return v1

    .line 300
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v4

    .line 304
    .local v4, "count":I
    nop

    .line 304
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 305
    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 306
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 307
    const/4 v3, 0x1

    .line 308
    goto :goto_2

    .line 304
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    .end local v1    # "i":I
    :cond_4
    :goto_2
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v5, p1, v2}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 313
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 314
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 317
    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 591
    if-eqz p1, :cond_0

    .line 593
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 597
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .line 162
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 163
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .line 157
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 159
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Landroid/support/v7/widget/ActionMenuView;

    .line 600
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 602
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 154
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 146
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 149
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .line 225
    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 340
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 341
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 343
    .local v0, "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 345
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 349
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    .line 351
    const/4 v1, 0x1

    return v1

    .line 353
    .end local v0    # "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .line 230
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    .local v2, "count":I
    const/4 v3, 0x0

    .line 237
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 238
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v4

    .line 239
    .local v4, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v4, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 237
    .end local v4    # "provider":Landroid/support/v4/view/ActionProvider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 246
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 248
    .local v0, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 249
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 251
    .local v3, "count":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    xor-int/2addr v1, v4

    move v2, v1

    goto :goto_2

    .line 254
    :cond_3
    if-lez v3, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    move v2, v1

    .line 258
    .end local v3    # "count":I
    :cond_5
    :goto_2
    if-eqz v2, :cond_9

    .line 259
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v1, :cond_6

    .line 260
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 262
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 263
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eq v1, v3, :cond_8

    .line 264
    if-eqz v1, :cond_7

    .line 265
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v3, Landroid/support/v7/widget/ActionMenuView;

    .line 268
    .local v3, "menuView":Landroid/support/v7/widget/ActionMenuView;
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    :cond_8
    goto :goto_3

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-ne v1, v3, :cond_a

    .line 271
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_a
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 275
    return-void
.end method
