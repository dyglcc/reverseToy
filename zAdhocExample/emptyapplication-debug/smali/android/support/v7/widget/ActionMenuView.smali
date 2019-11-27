.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 84
    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 86
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 87
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    move-object v0, p0

    move/from16 v1, p2

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 406
    .local v2, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 408
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 409
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 411
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 413
    .local v6, "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 415
    .local v9, "hasText":Z
    :goto_1
    const/4 v10, 0x0

    .line 416
    .local v10, "cellsUsed":I
    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    .line 417
    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 419
    .local v12, "childWidthSpec":I
    invoke-virtual {v0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 422
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 423
    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 424
    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    .line 427
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_4
    iget-boolean v11, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    nop

    .line 428
    .local v7, "expandable":Z
    :cond_5
    iput-boolean v7, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 430
    iput v10, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 431
    mul-int v8, v10, p1

    .line 432
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 434
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 185
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 188
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 191
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    .line 192
    .local v8, "cellCount":I
    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    .line 194
    .local v9, "cellSizeRemaining":I
    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 196
    invoke-virtual {v0, v2, v10}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    return-void

    .line 200
    :cond_0
    iget v11, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    .line 202
    .local v11, "cellSize":I
    move v12, v8

    .line 203
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 204
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 205
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 206
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 207
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 210
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 212
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v10

    .line 213
    .local v10, "childCount":I
    move/from16 v20, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    .line 213
    .local v3, "maxChildHeight":I
    .local v12, "i":I
    .local v13, "visibleItemCount":I
    .local v14, "cellsRemaining":I
    .local v15, "maxCellsUsed":I
    .local v16, "expandableItemCount":I
    .local v20, "heightSize":I
    :goto_0
    move/from16 v21, v4

    .line 213
    .end local v4    # "widthPadding":I
    .local v21, "widthPadding":I
    if-ge v12, v10, :cond_8

    .line 214
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 215
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v22, v8

    const/16 v8, 0x8

    .line 215
    .end local v8    # "cellCount":I
    .local v22, "cellCount":I
    if-ne v7, v8, :cond_1

    .line 213
    .end local v4    # "child":Landroid/view/View;
    move/from16 v25, v5

    move/from16 v23, v9

    goto/16 :goto_4

    .line 217
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    instance-of v7, v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 218
    .local v7, "isGeneratedItem":Z
    add-int/lit8 v13, v13, 0x1

    .line 220
    if-eqz v7, :cond_2

    .line 223
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v23, v9

    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 223
    .end local v9    # "cellSizeRemaining":I
    .local v23, "cellSizeRemaining":I
    move/from16 v24, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v8, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 223
    .end local v13    # "visibleItemCount":I
    .local v24, "visibleItemCount":I
    goto :goto_1

    .line 226
    .end local v23    # "cellSizeRemaining":I
    .end local v24    # "visibleItemCount":I
    .restart local v9    # "cellSizeRemaining":I
    .restart local v13    # "visibleItemCount":I
    :cond_2
    move/from16 v23, v9

    move/from16 v24, v13

    const/4 v13, 0x0

    .line 226
    .end local v9    # "cellSizeRemaining":I
    .end local v13    # "visibleItemCount":I
    .restart local v23    # "cellSizeRemaining":I
    .restart local v24    # "visibleItemCount":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v8, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput-boolean v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    iput v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    if-eqz v7, :cond_3

    move-object v9, v4

    check-cast v9, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v9, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v14

    .line 238
    .local v9, "cellsAvailable":I
    :goto_3
    invoke-static {v4, v11, v9, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v13

    .line 241
    .local v13, "cellsUsed":I
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 242
    move/from16 v25, v5

    iget-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 242
    .end local v5    # "heightPadding":I
    .local v25, "heightPadding":I
    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 243
    :cond_5
    iget-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    .line 245
    :cond_6
    sub-int/2addr v14, v13

    .line 246
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    const/4 v5, 0x1

    if-ne v13, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v27, v3

    move-object/from16 v26, v4

    int-to-long v3, v5

    .line 247
    .end local v3    # "maxChildHeight":I
    .end local v4    # "child":Landroid/view/View;
    .local v26, "child":Landroid/view/View;
    .local v27, "maxChildHeight":I
    or-long v7, v18, v3

    .line 213
    .end local v8    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v9    # "cellsAvailable":I
    .end local v13    # "cellsUsed":I
    .end local v18    # "smallestItemsAt":J
    .end local v26    # "child":Landroid/view/View;
    .local v7, "smallestItemsAt":J
    move-wide/from16 v18, v7

    move/from16 v13, v24

    move/from16 v3, v27

    goto :goto_4

    .line 213
    .end local v7    # "smallestItemsAt":J
    .end local v27    # "maxChildHeight":I
    .restart local v3    # "maxChildHeight":I
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move/from16 v27, v3

    move/from16 v13, v24

    .line 213
    .end local v24    # "visibleItemCount":I
    .local v13, "visibleItemCount":I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v5, v25

    move/from16 v7, p2

    goto/16 :goto_0

    .line 252
    .end local v12    # "i":I
    .end local v22    # "cellCount":I
    .end local v23    # "cellSizeRemaining":I
    .end local v25    # "heightPadding":I
    .restart local v5    # "heightPadding":I
    .local v8, "cellCount":I
    .local v9, "cellSizeRemaining":I
    :cond_8
    move/from16 v25, v5

    move/from16 v22, v8

    move/from16 v23, v9

    .line 252
    .end local v5    # "heightPadding":I
    .end local v8    # "cellCount":I
    .end local v9    # "cellSizeRemaining":I
    .restart local v22    # "cellCount":I
    .restart local v23    # "cellSizeRemaining":I
    .restart local v25    # "heightPadding":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 257
    .local v5, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v7, 0x0

    .line 258
    .local v7, "needsExpansion":Z
    :goto_6
    const-wide/16 v26, 0x0

    if-lez v16, :cond_13

    if-lez v14, :cond_13

    .line 259
    const v12, 0x7fffffff

    .line 260
    .local v12, "minCells":I
    const-wide/16 v28, 0x0

    .line 261
    .local v28, "minCellsAt":J
    const/16 v24, 0x0

    .line 262
    .local v24, "minCellsItemCount":I
    move v8, v12

    move/from16 v4, v24

    const/4 v12, 0x0

    .line 262
    .end local v24    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v8, "minCells":I
    .local v12, "i":I
    :goto_7
    move v9, v12

    .line 262
    .end local v12    # "i":I
    .local v9, "i":I
    if-ge v9, v10, :cond_d

    .line 263
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 264
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v32, v7

    move-object/from16 v7, v24

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 267
    .local v7, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v32, "needsExpansion":Z
    move-object/from16 v33, v12

    iget-boolean v12, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 267
    .end local v12    # "child":Landroid/view/View;
    .local v33, "child":Landroid/view/View;
    if-nez v12, :cond_a

    .line 267
    .end local v7    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    goto :goto_8

    .line 270
    .restart local v7    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v33    # "child":Landroid/view/View;
    :cond_a
    iget v12, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v12, v8, :cond_b

    .line 271
    iget v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 272
    const-wide/16 v30, 0x1

    shl-long v28, v30, v9

    .line 273
    const/4 v4, 0x1

    goto :goto_8

    .line 274
    :cond_b
    const-wide/16 v30, 0x1

    iget v12, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v12, v8, :cond_c

    .line 275
    shl-long v34, v30, v9

    or-long v36, v28, v34

    .line 276
    .end local v28    # "minCellsAt":J
    .local v36, "minCellsAt":J
    add-int/lit8 v4, v4, 0x1

    .line 262
    .end local v7    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    move-wide/from16 v28, v36

    .line 262
    .end local v36    # "minCellsAt":J
    .restart local v28    # "minCellsAt":J
    :cond_c
    :goto_8
    add-int/lit8 v12, v9, 0x1

    .line 262
    .end local v9    # "i":I
    .local v12, "i":I
    move/from16 v7, v32

    goto :goto_7

    .line 281
    .end local v12    # "i":I
    .end local v32    # "needsExpansion":Z
    .local v7, "needsExpansion":Z
    :cond_d
    move/from16 v32, v7

    .line 281
    .end local v7    # "needsExpansion":Z
    .restart local v32    # "needsExpansion":Z
    or-long v33, v18, v28

    .line 283
    .end local v18    # "smallestItemsAt":J
    .local v33, "smallestItemsAt":J
    if-le v4, v14, :cond_e

    .line 312
    .end local v4    # "minCellsItemCount":I
    .end local v8    # "minCells":I
    .end local v28    # "minCellsAt":J
    move/from16 v39, v2

    move/from16 v40, v5

    move-wide/from16 v4, v33

    goto/16 :goto_b

    .line 286
    .restart local v4    # "minCellsItemCount":I
    .restart local v8    # "minCells":I
    .restart local v28    # "minCellsAt":J
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 288
    move-wide/from16 v18, v33

    const/4 v7, 0x0

    .line 288
    .end local v33    # "smallestItemsAt":J
    .local v7, "i":I
    .restart local v18    # "smallestItemsAt":J
    :goto_9
    if-ge v7, v10, :cond_12

    .line 289
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 290
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 291
    .local v12, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move/from16 v39, v2

    move/from16 v38, v4

    const/4 v4, 0x1

    shl-int v2, v4, v7

    .line 291
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .local v38, "minCellsItemCount":I
    .local v39, "widthSize":I
    move/from16 v40, v5

    int-to-long v4, v2

    .line 291
    .end local v5    # "centerSingleExpandedItem":Z
    .local v40, "centerSingleExpandedItem":Z
    and-long v30, v28, v4

    cmp-long v2, v30, v26

    if-nez v2, :cond_f

    .line 293
    iget v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v8, :cond_11

    const/4 v2, 0x1

    shl-int v4, v2, v7

    int-to-long v4, v4

    or-long v30, v18, v4

    .line 288
    .end local v18    # "smallestItemsAt":J
    .local v30, "smallestItemsAt":J
    move-wide/from16 v18, v30

    goto :goto_a

    .line 297
    .end local v30    # "smallestItemsAt":J
    .restart local v18    # "smallestItemsAt":J
    :cond_f
    const/4 v2, 0x1

    if-eqz v40, :cond_10

    iget-boolean v4, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v4, :cond_10

    if-ne v14, v2, :cond_10

    .line 299
    iget v2, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v2, v11

    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_10
    iget v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v4, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v14, v14, -0x1

    .line 288
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v38

    move/from16 v2, v39

    move/from16 v5, v40

    goto :goto_9

    .line 306
    .end local v7    # "i":I
    .end local v38    # "minCellsItemCount":I
    .end local v39    # "widthSize":I
    .end local v40    # "centerSingleExpandedItem":Z
    .restart local v2    # "widthSize":I
    .restart local v4    # "minCellsItemCount":I
    .restart local v5    # "centerSingleExpandedItem":Z
    :cond_12
    move/from16 v39, v2

    move/from16 v38, v4

    move/from16 v40, v5

    .line 306
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v38    # "minCellsItemCount":I
    .restart local v39    # "widthSize":I
    .restart local v40    # "centerSingleExpandedItem":Z
    const/4 v7, 0x1

    .line 307
    .end local v8    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v32    # "needsExpansion":Z
    .end local v38    # "minCellsItemCount":I
    .local v7, "needsExpansion":Z
    nop

    .line 257
    const/4 v4, 0x2

    goto/16 :goto_6

    .line 312
    .end local v39    # "widthSize":I
    .end local v40    # "centerSingleExpandedItem":Z
    .restart local v2    # "widthSize":I
    .restart local v5    # "centerSingleExpandedItem":Z
    :cond_13
    move/from16 v39, v2

    move/from16 v40, v5

    move/from16 v32, v7

    .line 312
    .end local v2    # "widthSize":I
    .end local v5    # "centerSingleExpandedItem":Z
    .end local v7    # "needsExpansion":Z
    .restart local v32    # "needsExpansion":Z
    .restart local v39    # "widthSize":I
    .restart local v40    # "centerSingleExpandedItem":Z
    move-wide/from16 v4, v18

    .line 312
    .end local v18    # "smallestItemsAt":J
    .local v4, "smallestItemsAt":J
    :goto_b
    if-nez v17, :cond_14

    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    .line 313
    .local v2, "singleItem":Z
    :goto_c
    if-lez v14, :cond_22

    cmp-long v7, v4, v26

    if-eqz v7, :cond_22

    add-int/lit8 v7, v13, -0x1

    if-lt v14, v7, :cond_16

    if-nez v2, :cond_16

    const/4 v7, 0x1

    if-le v15, v7, :cond_15

    goto :goto_d

    .line 369
    :cond_15
    move/from16 v43, v2

    move/from16 v44, v13

    goto/16 :goto_13

    .line 315
    :cond_16
    :goto_d
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    .line 317
    .local v7, "expandCount":F
    if-nez v2, :cond_18

    .line 319
    const-wide/16 v8, 0x1

    and-long v18, v4, v8

    cmp-long v8, v18, v26

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v8, :cond_17

    .line 320
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .restart local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v8, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_17

    sub-float/2addr v7, v9

    .line 323
    .end local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_17
    add-int/lit8 v8, v10, -0x1

    const/4 v12, 0x1

    shl-int v8, v12, v8

    move/from16 v42, v10

    int-to-long v9, v8

    .line 323
    .end local v10    # "childCount":I
    .local v42, "childCount":I
    and-long v18, v4, v9

    cmp-long v8, v18, v26

    if-eqz v8, :cond_19

    .line 324
    add-int/lit8 v10, v42, -0x1

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    .local v8, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v9, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_19

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v7, v9

    .line 325
    .end local v8    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    goto :goto_e

    .line 329
    .end local v42    # "childCount":I
    .restart local v10    # "childCount":I
    :cond_18
    move/from16 v42, v10

    .line 329
    .end local v10    # "childCount":I
    .restart local v42    # "childCount":I
    :cond_19
    :goto_e
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1a

    mul-int v8, v14, v11

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v10, v8

    goto :goto_f

    :cond_1a
    const/4 v10, 0x0

    :goto_f
    move v8, v10

    .line 332
    .local v8, "extraPixels":I
    const/4 v9, 0x0

    .line 332
    .local v9, "i":I
    :goto_10
    move/from16 v10, v42

    if-ge v9, v10, :cond_21

    .line 333
    .end local v42    # "childCount":I
    .restart local v10    # "childCount":I
    move/from16 v43, v2

    const/4 v12, 0x1

    shl-int v2, v12, v9

    .line 333
    .end local v2    # "singleItem":Z
    .local v43, "singleItem":Z
    move/from16 v44, v13

    int-to-long v12, v2

    .line 333
    .end local v13    # "visibleItemCount":I
    .local v44, "visibleItemCount":I
    and-long v18, v4, v12

    cmp-long v2, v18, v26

    if-nez v2, :cond_1b

    goto :goto_11

    .line 335
    :cond_1b
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    .restart local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v13, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v13, :cond_1d

    .line 339
    iput v8, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    if-nez v9, :cond_1c

    iget-boolean v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v13, :cond_1c

    .line 344
    neg-int v13, v8

    const/16 v18, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1c
    const/16 v32, 0x1

    .line 332
    .end local v2    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :goto_11
    const/16 v18, 0x2

    goto :goto_12

    .line 347
    .restart local v2    # "child":Landroid/view/View;
    .restart local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_1d
    iget-boolean v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_1e

    .line 348
    iput v8, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v13, v8

    const/16 v18, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/16 v32, 0x1

    goto :goto_12

    .line 356
    :cond_1e
    const/16 v18, 0x2

    if-eqz v9, :cond_1f

    .line 357
    div-int/lit8 v13, v8, 0x2

    iput v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_1f
    add-int/lit8 v13, v10, -0x1

    if-eq v9, v13, :cond_20

    .line 360
    div-int/lit8 v13, v8, 0x2

    iput v13, v12, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 332
    .end local v2    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_20
    :goto_12
    add-int/lit8 v9, v9, 0x1

    move/from16 v42, v10

    move/from16 v2, v43

    move/from16 v13, v44

    goto :goto_10

    .line 365
    .end local v9    # "i":I
    .end local v43    # "singleItem":Z
    .end local v44    # "visibleItemCount":I
    .local v2, "singleItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_21
    move/from16 v43, v2

    move/from16 v44, v13

    .line 365
    .end local v2    # "singleItem":Z
    .end local v13    # "visibleItemCount":I
    .restart local v43    # "singleItem":Z
    .restart local v44    # "visibleItemCount":I
    const/4 v14, 0x0

    .line 365
    .end local v7    # "expandCount":F
    .end local v8    # "extraPixels":I
    goto :goto_13

    .line 369
    .end local v43    # "singleItem":Z
    .end local v44    # "visibleItemCount":I
    .restart local v2    # "singleItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_22
    move/from16 v43, v2

    move/from16 v44, v13

    .line 369
    .end local v2    # "singleItem":Z
    .end local v13    # "visibleItemCount":I
    .restart local v43    # "singleItem":Z
    .restart local v44    # "visibleItemCount":I
    :goto_13
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v32, :cond_24

    .line 370
    const/16 v41, 0x0

    .line 370
    .local v41, "i":I
    :goto_14
    move/from16 v7, v41

    .line 370
    .end local v41    # "i":I
    .local v7, "i":I
    if-ge v7, v10, :cond_24

    .line 371
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 372
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v9, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v12, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v12, :cond_23

    .line 374
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    goto :goto_15

    .line 376
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_23
    iget v12, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v12, v12, v11

    iget v13, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v12, v13

    .line 377
    .local v12, "width":I
    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v13, v6}, Landroid/view/View;->measure(II)V

    .line 370
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    :goto_15
    add-int/lit8 v41, v7, 0x1

    .line 370
    .end local v7    # "i":I
    .restart local v41    # "i":I
    goto :goto_14

    .line 382
    .end local v41    # "i":I
    :cond_24
    if-eq v1, v2, :cond_25

    .line 383
    move v2, v3

    .line 383
    .end local v20    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_16

    .line 386
    .end local v2    # "heightSize":I
    .restart local v20    # "heightSize":I
    :cond_25
    move/from16 v2, v20

    .line 386
    .end local v20    # "heightSize":I
    .restart local v2    # "heightSize":I
    :goto_16
    move/from16 v7, v39

    invoke-virtual {v0, v7, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    .end local v39    # "widthSize":I
    .local v7, "widthSize":I
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 610
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 726
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 583
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 591
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 596
    if-eqz p1, :cond_2

    .line 597
    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    :cond_1
    return-object v0

    .line 605
    .end local v0    # "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 654
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 655
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 656
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 659
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 663
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 733
    if-nez p1, :cond_0

    .line 734
    const/4 v0, 0x0

    return v0

    .line 736
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 738
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 739
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 740
    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 742
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 743
    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 745
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 639
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 640
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 572
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 544
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 439
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    .line 440
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 441
    return-void

    .line 444
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 445
    .local v3, "childCount":I
    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    .line 446
    .local v6, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 447
    .local v7, "dividerWidth":I
    const/4 v8, 0x0

    .line 448
    .local v8, "overflowWidth":I
    const/4 v9, 0x0

    .line 449
    .local v9, "nonOverflowWidth":I
    const/4 v10, 0x0

    .line 450
    .local v10, "nonOverflowCount":I
    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 451
    .local v11, "widthRemaining":I
    const/4 v12, 0x0

    .line 452
    .local v12, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    .line 453
    .local v13, "isLayoutRtl":Z
    move v15, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .line 453
    .local v8, "i":I
    .local v9, "overflowWidth":I
    .local v11, "nonOverflowWidth":I
    .local v15, "widthRemaining":I
    :goto_0
    if-ge v8, v3, :cond_6

    .line 454
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 455
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 456
    nop

    .line 453
    move/from16 v19, v6

    move/from16 v18, v13

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 460
    .local v4, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_4

    .line 461
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 462
    .end local v9    # "overflowWidth":I
    .local v5, "overflowWidth":I
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 463
    add-int/2addr v5, v7

    .line 465
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 468
    .local v9, "height":I
    if-eqz v13, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v17

    move/from16 v18, v13

    iget v13, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 469
    .end local v13    # "isLayoutRtl":Z
    .local v18, "isLayoutRtl":Z
    add-int v17, v17, v13

    .line 470
    .local v17, "l":I
    add-int v13, v17, v5

    .line 470
    .local v13, "r":I
    goto :goto_1

    .line 472
    .end local v17    # "l":I
    .end local v18    # "isLayoutRtl":Z
    .local v13, "isLayoutRtl":Z
    :cond_3
    move/from16 v18, v13

    .line 472
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v13, v13, v17

    iget v1, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v1

    .line 473
    .local v13, "r":I
    sub-int v17, v13, v5

    .line 473
    .restart local v17    # "l":I
    :goto_1
    move/from16 v1, v17

    .line 475
    .end local v17    # "l":I
    .local v1, "l":I
    div-int/lit8 v17, v9, 0x2

    sub-int v2, v6, v17

    .line 476
    .local v2, "t":I
    move/from16 v19, v6

    add-int v6, v2, v9

    .line 477
    .local v6, "b":I
    .local v19, "midVertical":I
    invoke-virtual {v14, v1, v2, v13, v6}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int/2addr v15, v5

    .line 480
    const/4 v1, 0x1

    .line 481
    .end local v2    # "t":I
    .end local v6    # "b":I
    .end local v9    # "height":I
    .end local v12    # "hasOverflow":Z
    .end local v13    # "r":I
    .local v1, "hasOverflow":Z
    nop

    .line 453
    move v12, v1

    move v9, v5

    goto :goto_2

    .line 482
    .end local v1    # "hasOverflow":Z
    .end local v5    # "overflowWidth":I
    .end local v18    # "isLayoutRtl":Z
    .end local v19    # "midVertical":I
    .local v6, "midVertical":I
    .local v9, "overflowWidth":I
    .restart local v12    # "hasOverflow":Z
    .local v13, "isLayoutRtl":Z
    :cond_4
    move/from16 v19, v6

    move/from16 v18, v13

    .line 482
    .end local v6    # "midVertical":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    .restart local v19    # "midVertical":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 483
    .local v1, "size":I
    add-int/2addr v11, v1

    .line 484
    sub-int/2addr v15, v1

    .line 485
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    add-int/2addr v11, v7

    .line 488
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 453
    .end local v1    # "size":I
    .end local v4    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v14    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v18

    move/from16 v6, v19

    goto :goto_0

    .line 492
    .end local v8    # "i":I
    .end local v18    # "isLayoutRtl":Z
    .end local v19    # "midVertical":I
    .restart local v6    # "midVertical":I
    .restart local v13    # "isLayoutRtl":Z
    :cond_6
    move/from16 v19, v6

    move/from16 v18, v13

    .line 492
    .end local v6    # "midVertical":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    .restart local v19    # "midVertical":I
    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    if-nez v12, :cond_7

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 495
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 496
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 497
    .local v4, "height":I
    sub-int v8, p4, p2

    div-int/lit8 v8, v8, 0x2

    .line 498
    .local v8, "midHorizontal":I
    div-int/lit8 v13, v2, 0x2

    sub-int v13, v8, v13

    .line 499
    .local v13, "l":I
    div-int/lit8 v14, v4, 0x2

    sub-int v14, v19, v14

    .line 500
    .local v14, "t":I
    add-int v5, v13, v2

    move/from16 v20, v2

    add-int v2, v14, v4

    .line 500
    .end local v2    # "width":I
    .local v20, "width":I
    invoke-virtual {v1, v13, v14, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 501
    return-void

    .line 504
    .end local v1    # "v":Landroid/view/View;
    .end local v4    # "height":I
    .end local v8    # "midHorizontal":I
    .end local v13    # "l":I
    .end local v14    # "t":I
    .end local v20    # "width":I
    :cond_7
    if-eqz v12, :cond_8

    const/4 v14, 0x0

    nop

    :cond_8
    sub-int v1, v10, v14

    .line 505
    .local v1, "spacerCount":I
    if-lez v1, :cond_9

    div-int v14, v15, v1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 507
    .local v4, "spacerSize":I
    if-eqz v18, :cond_d

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    .line 509
    .local v5, "startRight":I
    nop

    .line 509
    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_c

    .line 510
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 511
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 512
    .local v13, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v21, v1

    const/16 v1, 0x8

    if-eq v14, v1, :cond_b

    .line 512
    .end local v1    # "spacerCount":I
    .local v21, "spacerCount":I
    iget-boolean v1, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v1, :cond_a

    .line 513
    nop

    .line 509
    move/from16 v22, v7

    move/from16 v23, v9

    goto :goto_5

    .line 516
    :cond_a
    iget v1, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v1

    .line 517
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 518
    .local v1, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 519
    .local v14, "height":I
    div-int/lit8 v16, v14, 0x2

    sub-int v6, v19, v16

    .line 520
    .local v6, "t":I
    move/from16 v22, v7

    sub-int v7, v5, v1

    .line 520
    .end local v7    # "dividerWidth":I
    .local v22, "dividerWidth":I
    move/from16 v23, v9

    add-int v9, v6, v14

    .line 520
    .end local v9    # "overflowWidth":I
    .local v23, "overflowWidth":I
    invoke-virtual {v8, v7, v6, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v7, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    sub-int/2addr v5, v7

    .line 521
    .end local v1    # "width":I
    .end local v6    # "t":I
    .end local v8    # "v":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v14    # "height":I
    goto :goto_5

    .line 509
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_b
    move/from16 v22, v7

    move/from16 v23, v9

    .line 509
    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    move/from16 v7, v22

    move/from16 v9, v23

    goto :goto_4

    .line 523
    .end local v2    # "i":I
    .end local v5    # "startRight":I
    .end local v21    # "spacerCount":I
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .local v1, "spacerCount":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_c
    move/from16 v21, v1

    move/from16 v22, v7

    move/from16 v23, v9

    .line 523
    .end local v1    # "spacerCount":I
    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    goto :goto_8

    .line 524
    .end local v21    # "spacerCount":I
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .restart local v1    # "spacerCount":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_d
    move/from16 v21, v1

    move/from16 v22, v7

    move/from16 v23, v9

    .line 524
    .end local v1    # "spacerCount":I
    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 525
    .local v1, "startLeft":I
    nop

    .line 525
    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v3, :cond_10

    .line 526
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 527
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 528
    .local v6, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_e

    .line 529
    goto :goto_7

    .line 532
    :cond_e
    iget v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    .line 533
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 534
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    .local v9, "height":I
    div-int/lit8 v13, v9, 0x2

    sub-int v13, v19, v13

    .line 536
    .local v13, "t":I
    add-int v14, v1, v7

    add-int v8, v13, v9

    invoke-virtual {v5, v1, v13, v14, v8}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v1, v8

    .line 525
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    .end local v9    # "height":I
    .end local v13    # "t":I
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 540
    .end local v1    # "startLeft":I
    .end local v2    # "i":I
    :cond_10
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 151
    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 156
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v4, :cond_2

    .line 158
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 163
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 167
    :cond_3
    const/4 v4, 0x0

    .line 167
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 168
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 169
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 170
    .local v6, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 167
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
    .end local v4    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 174
    :goto_2
    return-void
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 757
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 672
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 673
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 674
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 554
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 578
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 97
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 98
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 99
    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 122
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 124
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 691
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
