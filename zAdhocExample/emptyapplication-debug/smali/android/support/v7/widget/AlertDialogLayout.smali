.class public Landroid/support/v7/widget/AlertDialogLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 217
    nop

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    .line 217
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 220
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 222
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 223
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 224
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 227
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 228
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 231
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 220
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 248
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 249
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 250
    return v0

    .line 253
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 254
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 255
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 256
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    .line 260
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v2
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 348
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 349
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 71
    move/from16 v2, p2

    const/4 v3, 0x0

    .line 72
    .local v3, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 73
    .local v4, "buttonPanel":Landroid/view/View;
    const/4 v5, 0x0

    .line 75
    .local v5, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v6

    .line 76
    .local v6, "count":I
    const/4 v7, 0x0

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    .line 76
    .local v3, "i":I
    .local v4, "topPanel":Landroid/view/View;
    .local v5, "buttonPanel":Landroid/view/View;
    .local v8, "middlePanel":Landroid/view/View;
    :goto_0
    const/16 v9, 0x8

    if-ge v3, v6, :cond_6

    .line 77
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 78
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_0

    .line 79
    goto :goto_2

    .line 82
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    .line 83
    .local v9, "id":I
    sget v11, Landroid/support/v7/appcompat/R$id;->topPanel:I

    if-ne v9, v11, :cond_1

    .line 84
    move-object v4, v10

    goto :goto_2

    .line 85
    :cond_1
    sget v11, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    if-ne v9, v11, :cond_2

    .line 86
    move-object v5, v10

    goto :goto_2

    .line 87
    :cond_2
    sget v11, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    if-eq v9, v11, :cond_4

    sget v11, Landroid/support/v7/appcompat/R$id;->customPanel:I

    if-ne v9, v11, :cond_3

    goto :goto_1

    .line 95
    :cond_3
    return v7

    .line 88
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 90
    return v7

    .line 92
    :cond_5
    move-object v8, v10

    .line 76
    .end local v9    # "id":I
    .end local v10    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "i":I
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 100
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 101
    .local v10, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 103
    .local v11, "widthMode":I
    const/4 v12, 0x0

    .line 104
    .local v12, "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    .line 106
    .local v13, "usedHeight":I
    if-eqz v4, :cond_7

    .line 107
    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v12, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 113
    :cond_7
    const/4 v14, 0x0

    .line 114
    .local v14, "buttonHeight":I
    const/4 v15, 0x0

    .line 115
    .local v15, "buttonWantsHeight":I
    if-eqz v5, :cond_8

    .line 116
    invoke-virtual {v5, v1, v7}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v5}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v14

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v16, v14

    .line 120
    add-int/2addr v13, v14

    .line 121
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 124
    :cond_8
    const/4 v9, 0x0

    .line 125
    .local v9, "middleHeight":I
    if-eqz v8, :cond_a

    .line 127
    if-nez v3, :cond_9

    .line 128
    const/16 v16, 0x0

    .line 130
    .local v16, "childHeightSpec":I
    move-object/from16 v17, v4

    goto :goto_3

    .line 130
    .end local v16    # "childHeightSpec":I
    :cond_9
    move-object/from16 v17, v4

    sub-int v4, v10, v13

    .line 131
    .end local v4    # "topPanel":Landroid/view/View;
    .local v17, "topPanel":Landroid/view/View;
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 130
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 130
    .restart local v16    # "childHeightSpec":I
    :goto_3
    move/from16 v4, v16

    .line 134
    .end local v16    # "childHeightSpec":I
    .local v4, "childHeightSpec":I
    invoke-virtual {v8, v1, v4}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 137
    add-int/2addr v13, v9

    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v12, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 138
    .end local v4    # "childHeightSpec":I
    goto :goto_4

    .line 141
    .end local v17    # "topPanel":Landroid/view/View;
    .local v4, "topPanel":Landroid/view/View;
    :cond_a
    move-object/from16 v17, v4

    .line 141
    .end local v4    # "topPanel":Landroid/view/View;
    .restart local v17    # "topPanel":Landroid/view/View;
    :goto_4
    sub-int v4, v10, v13

    .line 146
    .local v4, "remainingHeight":I
    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_c

    .line 147
    sub-int/2addr v13, v14

    .line 149
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 150
    .local v16, "heightToGive":I
    if-lez v16, :cond_b

    .line 151
    sub-int v4, v4, v16

    .line 152
    add-int v14, v14, v16

    .line 155
    :cond_b
    move/from16 v18, v4

    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 157
    .local v4, "childHeightSpec":I
    .local v18, "remainingHeight":I
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v13, v13, v19

    .line 160
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v12, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 165
    .end local v4    # "childHeightSpec":I
    .end local v16    # "heightToGive":I
    move/from16 v4, v18

    .line 165
    .end local v18    # "remainingHeight":I
    .local v4, "remainingHeight":I
    :cond_c
    if-eqz v8, :cond_d

    if-lez v4, :cond_d

    .line 166
    sub-int/2addr v13, v9

    .line 168
    move v7, v4

    .line 169
    .local v7, "heightToGive":I
    sub-int/2addr v4, v7

    .line 170
    add-int/2addr v9, v7

    .line 175
    move/from16 v20, v4

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 177
    .local v4, "childHeightSpec":I
    .local v20, "remainingHeight":I
    invoke-virtual {v8, v1, v4}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    .line 180
    move/from16 v21, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    .line 180
    .end local v3    # "heightMode":I
    .local v21, "heightMode":I
    invoke-static {v12, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 184
    .end local v4    # "childHeightSpec":I
    .end local v7    # "heightToGive":I
    move/from16 v4, v20

    goto :goto_5

    .line 184
    .end local v20    # "remainingHeight":I
    .end local v21    # "heightMode":I
    .restart local v3    # "heightMode":I
    .local v4, "remainingHeight":I
    :cond_d
    move/from16 v21, v3

    .line 184
    .end local v3    # "heightMode":I
    .restart local v21    # "heightMode":I
    :goto_5
    const/4 v3, 0x0

    .line 185
    .local v3, "maxWidth":I
    move v7, v3

    const/4 v3, 0x0

    .line 185
    .local v3, "i":I
    .local v7, "maxWidth":I
    :goto_6
    if-ge v3, v6, :cond_f

    .line 186
    move/from16 v22, v4

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    .local v4, "child":Landroid/view/View;
    .local v22, "remainingHeight":I
    move-object/from16 v23, v5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 187
    .end local v5    # "buttonPanel":Landroid/view/View;
    .local v23, "buttonPanel":Landroid/view/View;
    move-object/from16 v24, v8

    const/16 v8, 0x8

    if-eq v5, v8, :cond_e

    .line 188
    .end local v8    # "middlePanel":Landroid/view/View;
    .local v24, "middlePanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 185
    .end local v7    # "maxWidth":I
    .local v4, "maxWidth":I
    move v7, v4

    .line 185
    .end local v4    # "maxWidth":I
    .restart local v7    # "maxWidth":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v8, v24

    goto :goto_6

    .line 192
    .end local v3    # "i":I
    .end local v22    # "remainingHeight":I
    .end local v23    # "buttonPanel":Landroid/view/View;
    .end local v24    # "middlePanel":Landroid/view/View;
    .local v4, "remainingHeight":I
    .restart local v5    # "buttonPanel":Landroid/view/View;
    .restart local v8    # "middlePanel":Landroid/view/View;
    :cond_f
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    .line 192
    .end local v4    # "remainingHeight":I
    .end local v5    # "buttonPanel":Landroid/view/View;
    .end local v8    # "middlePanel":Landroid/view/View;
    .restart local v22    # "remainingHeight":I
    .restart local v23    # "buttonPanel":Landroid/view/View;
    .restart local v24    # "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    .line 194
    invoke-static {v7, v1, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 196
    .local v3, "widthSizeAndState":I
    const/4 v4, 0x0

    invoke-static {v13, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 198
    .local v4, "heightSizeAndState":I
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 202
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v11, v5, :cond_10

    .line 203
    invoke-direct {v0, v6, v2}, Landroid/support/v7/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 206
    :cond_10
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 26
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v6, p0

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v8

    .line 268
    .local v8, "paddingLeft":I
    sub-int v9, p4, p2

    .line 269
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v0

    sub-int v10, v9, v0

    .line 272
    .local v10, "childRight":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 274
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v12

    .line 275
    .local v12, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v5

    .line 276
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    .line 277
    .local v13, "gravity":I
    and-int/lit8 v4, v13, 0x70

    .line 278
    .local v4, "majorGravity":I
    const v0, 0x800007

    and-int v14, v13, v0

    .line 281
    .local v14, "minorGravity":I
    const/16 v0, 0x10

    if-eq v4, v0, :cond_1

    const/16 v0, 0x50

    if-eq v4, v0, :cond_0

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p5

    sub-int v0, v0, p3

    sub-int/2addr v0, v12

    .line 285
    .local v0, "childTop":I
    goto :goto_0

    .line 289
    .end local v0    # "childTop":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    sub-int v1, p5, p3

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 290
    .restart local v0    # "childTop":I
    nop

    .line 294
    :goto_0
    nop

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 299
    .local v3, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-nez v3, :cond_2

    .line 300
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    move v15, v2

    .line 302
    .local v15, "dividerHeight":I
    nop

    .line 302
    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_9

    .line 303
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    move-object/from16 v16, v3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 304
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .local v16, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v17, v4

    const/16 v4, 0x8

    .line 304
    .end local v4    # "majorGravity":I
    .local v17, "majorGravity":I
    if-eq v3, v4, :cond_7

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 306
    .local v18, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 308
    .local v19, "childHeight":I
    nop

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 312
    .local v3, "layoutGravity":I
    if-gez v3, :cond_3

    .line 313
    move v3, v14

    .line 315
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 316
    .local v7, "layoutDirection":I
    invoke-static {v3, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v20

    .line 320
    .local v20, "absoluteGravity":I
    move-object/from16 v21, v2

    and-int/lit8 v2, v20, 0x7

    .line 320
    .end local v2    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move/from16 v22, v3

    .line 320
    .end local v3    # "layoutGravity":I
    .local v22, "layoutGravity":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 332
    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    goto :goto_3

    .line 327
    :cond_4
    sub-int v2, v10, v18

    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    .line 328
    .local v2, "childLeft":I
    goto :goto_3

    .line 322
    .end local v2    # "childLeft":I
    :cond_5
    sub-int v2, v11, v18

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    .line 324
    .restart local v2    # "childLeft":I
    nop

    .line 332
    :goto_3
    nop

    .line 336
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 337
    add-int/2addr v0, v15

    .line 340
    :cond_6
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v23, v0, v3

    .line 341
    .end local v0    # "childTop":I
    .local v23, "childTop":I
    move-object v0, v6

    move/from16 v24, v1

    move-object/from16 v1, v21

    .line 341
    .end local v1    # "i":I
    .local v24, "i":I
    move/from16 v3, v23

    move-object v6, v4

    move/from16 v4, v18

    .line 341
    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v6, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v5

    move/from16 v5, v19

    .line 341
    .end local v5    # "count":I
    .local v25, "count":I
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 342
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v19, v0

    add-int v23, v23, v0

    .line 302
    .end local v2    # "childLeft":I
    .end local v6    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v7    # "layoutDirection":I
    .end local v18    # "childWidth":I
    .end local v19    # "childHeight":I
    .end local v20    # "absoluteGravity":I
    .end local v21    # "child":Landroid/view/View;
    .end local v22    # "layoutGravity":I
    move/from16 v0, v23

    goto :goto_4

    .line 302
    .end local v23    # "childTop":I
    .end local v24    # "i":I
    .end local v25    # "count":I
    .restart local v0    # "childTop":I
    .restart local v1    # "i":I
    .restart local v5    # "count":I
    :cond_7
    move/from16 v24, v1

    move/from16 v25, v5

    .line 302
    .end local v1    # "i":I
    .end local v5    # "count":I
    .restart local v24    # "i":I
    .restart local v25    # "count":I
    goto :goto_4

    .line 302
    .end local v16    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "majorGravity":I
    .end local v24    # "i":I
    .end local v25    # "count":I
    .restart local v1    # "i":I
    .local v3, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .local v4, "majorGravity":I
    .restart local v5    # "count":I
    :cond_8
    move/from16 v24, v1

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v25, v5

    .line 302
    .end local v1    # "i":I
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "majorGravity":I
    .end local v5    # "count":I
    .restart local v16    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "majorGravity":I
    .restart local v24    # "i":I
    .restart local v25    # "count":I
    :goto_4
    add-int/lit8 v1, v24, 0x1

    .line 302
    .end local v24    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v25

    move-object/from16 v6, p0

    goto/16 :goto_2

    .line 345
    .end local v1    # "i":I
    .end local v16    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "majorGravity":I
    .end local v25    # "count":I
    .restart local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "majorGravity":I
    .restart local v5    # "count":I
    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v25, v5

    .line 345
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "majorGravity":I
    .end local v5    # "count":I
    .restart local v16    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "majorGravity":I
    .restart local v25    # "count":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method
