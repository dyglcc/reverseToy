.class Landroid/support/v7/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    .line 59
    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_tooltip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/support/v7/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 16
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    .line 104
    move-object/from16 v2, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 105
    iget-object v3, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 109
    .local v3, "tooltipPreciseAnchorThreshold":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 111
    move/from16 v4, p2

    .line 111
    .local v4, "offsetX":I
    goto :goto_0

    .line 114
    .end local v4    # "offsetX":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 119
    .restart local v4    # "offsetX":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    if-lt v5, v3, :cond_1

    .line 121
    iget-object v5, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 123
    .local v5, "offsetExtra":I
    add-int v7, p3, v5

    .line 124
    .local v7, "offsetBelow":I
    sub-int v5, p3, v5

    .line 125
    .local v5, "offsetAbove":I
    goto :goto_1

    .line 127
    .end local v5    # "offsetAbove":I
    .end local v7    # "offsetBelow":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 128
    .restart local v7    # "offsetBelow":I
    const/4 v5, 0x0

    .line 131
    .restart local v5    # "offsetAbove":I
    :goto_1
    const/16 v8, 0x31

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 133
    iget-object v8, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p4, :cond_2

    sget v9, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_touch:I

    goto :goto_2

    :cond_2
    sget v9, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    :goto_2
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 136
    .local v8, "tooltipOffset":I
    invoke-static/range {p1 .. p1}, Landroid/support/v7/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 137
    .local v9, "appView":Landroid/view/View;
    if-nez v9, :cond_3

    .line 138
    const-string v6, "TooltipPopup"

    const-string v10, "Cannot find app view"

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_3
    iget-object v10, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 142
    iget-object v10, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_5

    iget-object v10, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_5

    .line 145
    iget-object v10, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 147
    .local v10, "res":Landroid/content/res/Resources;
    const-string v11, "status_bar_height"

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 148
    .local v11, "resourceId":I
    if-eqz v11, :cond_4

    .line 149
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 149
    .local v12, "statusBarHeight":I
    goto :goto_3

    .line 151
    .end local v12    # "statusBarHeight":I
    :cond_4
    const/4 v12, 0x0

    .line 153
    .restart local v12    # "statusBarHeight":I
    :goto_3
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 154
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    iget-object v14, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move v15, v3

    iget v3, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 154
    .end local v3    # "tooltipPreciseAnchorThreshold":I
    .local v15, "tooltipPreciseAnchorThreshold":I
    invoke-virtual {v14, v6, v12, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "resourceId":I
    .end local v12    # "statusBarHeight":I
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_4

    .line 156
    .end local v15    # "tooltipPreciseAnchorThreshold":I
    .restart local v3    # "tooltipPreciseAnchorThreshold":I
    :cond_5
    move v15, v3

    .line 156
    .end local v3    # "tooltipPreciseAnchorThreshold":I
    .restart local v15    # "tooltipPreciseAnchorThreshold":I
    :goto_4
    iget-object v1, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 158
    iget-object v1, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    iget-object v1, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v10, v1, v6

    iget-object v11, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    aget v11, v11, v6

    sub-int/2addr v10, v11

    aput v10, v1, v6

    .line 160
    iget-object v1, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v10, 0x1

    aget v11, v1, v10

    iget-object v12, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    aget v12, v12, v10

    sub-int/2addr v11, v12

    aput v11, v1, v10

    .line 163
    iget-object v1, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v1, v1, v6

    add-int/2addr v1, v4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v1, v11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 166
    .local v1, "spec":I
    iget-object v6, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v1, v1}, Landroid/view/View;->measure(II)V

    .line 167
    iget-object v6, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 169
    .local v6, "tooltipHeight":I
    iget-object v11, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v11, v10

    add-int/2addr v11, v5

    sub-int/2addr v11, v8

    sub-int/2addr v11, v6

    .line 170
    .local v11, "yAbove":I
    iget-object v12, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v10, v12, v10

    add-int/2addr v10, v7

    add-int/2addr v10, v8

    .line 171
    .local v10, "yBelow":I
    if-eqz p4, :cond_7

    .line 172
    if-ltz v11, :cond_6

    .line 173
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 175
    :cond_6
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 178
    :cond_7
    add-int v12, v10, v6

    iget-object v13, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_8

    .line 179
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 181
    :cond_8
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 184
    :goto_5
    return-void
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "anchorView"    # Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 189
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 193
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 198
    .local v2, "context":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 199
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 200
    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 202
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 207
    :cond_2
    return-object v0
.end method


# virtual methods
.method hide()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 95
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method isShowing()Z
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 81
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method
