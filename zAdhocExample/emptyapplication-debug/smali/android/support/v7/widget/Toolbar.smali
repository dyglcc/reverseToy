.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    move-object/from16 v0, p0

    .line 233
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    const v1, 0x800013

    iput v1, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 195
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 199
    new-instance v1, Landroid/support/v7/widget/Toolbar$1;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 218
    new-instance v1, Landroid/support/v7/widget/Toolbar$2;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static {v1, v4, v2, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 239
    .local v1, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 240
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 241
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v6, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    invoke-virtual {v1, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 242
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v6, 0x30

    invoke-virtual {v1, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 245
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 246
    .local v2, "titleMargin":I
    sget v6, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    sget v6, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v1, v6, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 250
    :cond_0
    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    iput v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 252
    sget v6, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 253
    .local v6, "marginStart":I
    if-ltz v6, :cond_1

    .line 254
    iput v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 257
    :cond_1
    sget v8, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v1, v8, v7}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 258
    .local v8, "marginEnd":I
    if-ltz v8, :cond_2

    .line 259
    iput v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 262
    :cond_2
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v1, v9, v7}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 263
    .local v9, "marginTop":I
    if-ltz v9, :cond_3

    .line 264
    iput v9, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 267
    :cond_3
    sget v10, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v1, v10, v7}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 269
    .local v10, "marginBottom":I
    if-ltz v10, :cond_4

    .line 270
    iput v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 273
    :cond_4
    sget v11, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v1, v11, v7}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 275
    sget v11, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    .line 276
    const/high16 v12, -0x80000000

    invoke-virtual {v1, v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 278
    .local v11, "contentInsetStart":I
    sget v13, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 279
    invoke-virtual {v1, v13, v12}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 281
    .local v13, "contentInsetEnd":I
    sget v14, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 282
    invoke-virtual {v1, v14, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 283
    .local v14, "contentInsetLeft":I
    sget v15, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 284
    invoke-virtual {v1, v15, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 286
    .local v15, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 287
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v7, v14, v15}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 289
    if-ne v11, v12, :cond_5

    if-eq v13, v12, :cond_6

    .line 291
    :cond_5
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v7, v11, v13}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 294
    :cond_6
    sget v7, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v1, v7, v12}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 296
    sget v7, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v1, v7, v12}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 299
    sget v7, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    sget v7, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 302
    sget v7, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 303
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 304
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :cond_7
    sget v12, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v1, v12}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 308
    .local v12, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 309
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 314
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 314
    .end local v2    # "titleMargin":I
    .local v17, "titleMargin":I
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 316
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 317
    .local v2, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_9

    .line 318
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_9
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 321
    .local v3, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 322
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :cond_a
    move-object/from16 v18, v2

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    .line 325
    .end local v2    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 326
    .local v2, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_b

    .line 327
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_b
    move-object/from16 v19, v2

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    .line 330
    .end local v2    # "logo":Landroid/graphics/drawable/Drawable;
    .local v19, "logo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 331
    .local v2, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 332
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_c
    move-object/from16 v20, v2

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    .line 335
    .end local v2    # "logoDesc":Ljava/lang/CharSequence;
    .local v20, "logoDesc":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 336
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    move-object/from16 v21, v3

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v2

    .line 336
    .end local v3    # "navDesc":Ljava/lang/CharSequence;
    .local v21, "navDesc":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_0

    .line 339
    .end local v21    # "navDesc":Ljava/lang/CharSequence;
    .restart local v3    # "navDesc":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v21, v3

    const/4 v3, -0x1

    .line 339
    .end local v3    # "navDesc":Ljava/lang/CharSequence;
    .restart local v21    # "navDesc":Ljava/lang/CharSequence;
    :goto_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 340
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 342
    :cond_e
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 343
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2019
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 2020
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2021
    .local v2, "childCount":I
    nop

    .line 2022
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 2021
    invoke-static {p2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 2024
    .local v3, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2026
    if-eqz v0, :cond_2

    .line 2027
    add-int/lit8 v1, v2, -0x1

    .line 2027
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2028
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2029
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2030
    .local v5, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2031
    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 2032
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2036
    .end local v1    # "i":I
    :cond_2
    nop

    .line 2036
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2037
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2038
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2039
    .restart local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2040
    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 2041
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2045
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1392
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    .line 1393
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :goto_0
    goto :goto_1

    .line 1394
    .end local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1395
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 1397
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1399
    .restart local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :goto_1
    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1401
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1402
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1405
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    :goto_2
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2168
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 2171
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 688
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1033
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1036
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    .line 1037
    .local v0, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1038
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1040
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1041
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1043
    .end local v0    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1051
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1052
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1053
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1056
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 1361
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1364
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1365
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1366
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 6
    .param p1, "gravity"    # I

    .line 2048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2049
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 2050
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2051
    .local v2, "hGrav":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    .line 2057
    if-ne v0, v3, :cond_0

    const/4 v4, 0x5

    nop

    :cond_0
    return v4

    .line 2055
    :cond_1
    return v2
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1969
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1970
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1971
    .local v3, "alignmentOffset":I
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_3

    .line 1981
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 1982
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 1983
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v6

    .line 1984
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 1985
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 1986
    .local v8, "spaceAbove":I
    iget v9, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_1

    .line 1987
    iget v8, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1989
    :cond_1
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 1991
    .local v9, "spaceBelow":I
    iget v10, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_2

    .line 1992
    iget v10, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1995
    .end local v9    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int v2, v4, v8

    return v2

    .line 1976
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 1973
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .line 2000
    and-int/lit8 v0, p1, 0x70

    .line 2001
    .local v0, "vgrav":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    .line 2007
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2005
    :cond_0
    return v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2067
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2068
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1059
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2073
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 1923
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1924
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 1925
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 1926
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1927
    .local v4, "count":I
    move v5, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 1927
    .local v1, "i":I
    .local v2, "collapseLeft":I
    .local v3, "collapseRight":I
    .local v5, "width":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1928
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1929
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1930
    .local v7, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v8, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v2

    .line 1931
    .local v8, "l":I
    iget v9, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v3

    .line 1932
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1933
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1934
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1935
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1936
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v5, v12

    .line 1927
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1938
    .end local v1    # "i":I
    :cond_0
    return v5
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2105
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 1943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1944
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1945
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 1946
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 1947
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 1948
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1949
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1950
    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 1951
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 1956
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1957
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1958
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1959
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 1960
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 1961
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1962
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1963
    iget v4, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 1964
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1534
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1535
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1536
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1537
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1538
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1539
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1540
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1542
    nop

    .line 1543
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1542
    invoke-static {p2, v2, v4}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1544
    .local v2, "childWidthMeasureSpec":I
    nop

    .line 1545
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1544
    invoke-static {p4, v4, v8}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1548
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1509
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1510
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1509
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1512
    .local v1, "childWidthSpec":I
    nop

    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1512
    invoke-static {p4, v2, v3}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1516
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1517
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1518
    if-eqz v3, :cond_0

    .line 1519
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, p6

    .line 1521
    .local v5, "size":I
    :goto_0
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1523
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1524
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1445
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1446
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1556
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1558
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1559
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 1559
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1560
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1561
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1562
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1563
    return v1

    .line 1559
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1566
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2131
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2133
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .line 2133
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2134
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2133
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2136
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2137
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 717
    .local v0, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 720
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 588
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 4

    .line 1371
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1376
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1377
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1378
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1379
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroid/support/v7/widget/Toolbar$3;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2096
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2078
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2083
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2084
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2085
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2086
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2087
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2088
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2090
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1268
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    goto :goto_0

    .line 1270
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1189
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1209
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1126
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1225
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    goto :goto_0

    .line 1227
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 4

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "hasActions":Z
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    .line 1323
    .local v1, "mb":Landroid/support/v7/view/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1325
    .end local v1    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1327
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    :goto_1
    return v1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1340
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1341
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1355
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1357
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1306
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1308
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1007
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 889
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroid/support/v7/widget/ActionMenuPresenter;
    .locals 1

    .line 2177
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1028
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2181
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 369
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 466
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 444
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 400
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2112
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 2114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 701
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 1071
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1072
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 594
    return v1

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 598
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 599
    return v1

    .line 602
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 603
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .line 603
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 604
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 605
    const/4 v1, 0x1

    return v1

    .line 603
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1451
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1452
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1453
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1487
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1488
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1491
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1493
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 1494
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1498
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1499
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1502
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 40
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1705
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1706
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1707
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1708
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1709
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1710
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1711
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1712
    .local v9, "paddingBottom":I
    move v10, v6

    .line 1713
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 1715
    .local v11, "right":I
    iget-object v12, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1716
    .local v12, "collapsingMargins":[I
    aput v3, v12, v2

    aput v3, v12, v3

    .line 1719
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v13

    .line 1720
    .local v13, "minHeight":I
    if-ltz v13, :cond_1

    sub-int v2, p5, p3

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1722
    .local v2, "alignmentHeight":I
    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1723
    if-eqz v1, :cond_2

    .line 1724
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v11, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_2

    .line 1727
    :cond_2
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v10, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1732
    :cond_3
    :goto_2
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1733
    if-eqz v1, :cond_4

    .line 1734
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v11, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_3

    .line 1737
    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v10, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1742
    :cond_5
    :goto_3
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1743
    if-eqz v1, :cond_6

    .line 1744
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v3, v10, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_4

    .line 1747
    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {v0, v3, v11, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1752
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v3

    .line 1753
    .local v3, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v17

    .line 1754
    .local v17, "contentInsetRight":I
    move/from16 v18, v13

    sub-int v13, v3, v10

    .line 1754
    .end local v13    # "minHeight":I
    .local v18, "minHeight":I
    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aput v13, v12, v14

    .line 1755
    sub-int v13, v4, v7

    sub-int/2addr v13, v11

    sub-int v13, v17, v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    aput v13, v12, v14

    .line 1756
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1757
    sub-int v13, v4, v7

    sub-int v13, v13, v17

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1759
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1760
    if-eqz v1, :cond_8

    .line 1761
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v11, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_5

    .line 1764
    :cond_8
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v10, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1769
    :cond_9
    :goto_5
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1770
    if-eqz v1, :cond_a

    .line 1771
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v11, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_6

    .line 1774
    :cond_a
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v10, v12, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1779
    :cond_b
    :goto_6
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    .line 1780
    .local v13, "layoutTitle":Z
    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1781
    .local v14, "layoutSubtitle":Z
    const/16 v19, 0x0

    .line 1782
    .local v19, "titleHeight":I
    if-eqz v13, :cond_c

    .line 1783
    move/from16 v20, v3

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1783
    .end local v3    # "contentInsetLeft":I
    .local v20, "contentInsetLeft":I
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1784
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v15, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v21, v7

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1784
    .end local v7    # "paddingRight":I
    .local v21, "paddingRight":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v15, v7

    iget v7, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    add-int v19, v19, v15

    .line 1784
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_7

    .line 1786
    .end local v20    # "contentInsetLeft":I
    .end local v21    # "paddingRight":I
    .local v3, "contentInsetLeft":I
    .restart local v7    # "paddingRight":I
    :cond_c
    move/from16 v20, v3

    move/from16 v21, v7

    .line 1786
    .end local v3    # "contentInsetLeft":I
    .end local v7    # "paddingRight":I
    .restart local v20    # "contentInsetLeft":I
    .restart local v21    # "paddingRight":I
    :goto_7
    if-eqz v14, :cond_d

    .line 1787
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1788
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v7, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    iget v15, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v15

    add-int v19, v19, v7

    .line 1791
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_d
    if-nez v13, :cond_f

    if-eqz v14, :cond_e

    goto :goto_8

    .line 1885
    :cond_e
    move/from16 v30, v1

    move/from16 v28, v2

    move/from16 v25, v4

    move/from16 v33, v5

    move/from16 v26, v6

    move/from16 v36, v8

    goto/16 :goto_13

    .line 1793
    :cond_f
    :goto_8
    if-eqz v13, :cond_10

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_10
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1794
    .local v3, "topChild":Landroid/view/View;
    :goto_9
    if-eqz v14, :cond_11

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_11
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1795
    .local v7, "bottomChild":Landroid/view/View;
    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1796
    .local v15, "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1797
    .local v3, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v23, "topChild":Landroid/view/View;
    if-eqz v13, :cond_12

    move-object/from16 v24, v7

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1797
    .end local v7    # "bottomChild":Landroid/view/View;
    .local v24, "bottomChild":Landroid/view/View;
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_13

    goto :goto_b

    .line 1797
    .end local v24    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomChild":Landroid/view/View;
    :cond_12
    move-object/from16 v24, v7

    .line 1797
    .end local v7    # "bottomChild":Landroid/view/View;
    .restart local v24    # "bottomChild":Landroid/view/View;
    :goto_b
    if-eqz v14, :cond_14

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1798
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_14

    :cond_13
    const/4 v7, 0x1

    goto :goto_c

    :cond_14
    const/4 v7, 0x0

    .line 1800
    .local v7, "titleHasWidth":Z
    :goto_c
    move/from16 v25, v4

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 1800
    .end local v4    # "width":I
    .local v25, "width":I
    and-int/lit8 v4, v4, 0x70

    move/from16 v26, v6

    .line 1800
    .end local v6    # "paddingLeft":I
    .local v26, "paddingLeft":I
    const/16 v6, 0x30

    if-eq v4, v6, :cond_18

    const/16 v6, 0x50

    if-eq v4, v6, :cond_17

    .line 1806
    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    .line 1807
    .local v4, "space":I
    sub-int v6, v4, v19

    div-int/lit8 v6, v6, 0x2

    .line 1808
    .local v6, "spaceAbove":I
    move/from16 v27, v4

    iget v4, v15, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1808
    .end local v4    # "space":I
    .local v27, "space":I
    move/from16 v28, v2

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 1808
    .end local v2    # "alignmentHeight":I
    .local v28, "alignmentHeight":I
    add-int/2addr v4, v2

    if-ge v6, v4, :cond_15

    .line 1809
    iget v2, v15, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v6, v2, v4

    .line 1818
    move/from16 v29, v10

    goto :goto_d

    .line 1811
    :cond_15
    sub-int v2, v5, v9

    sub-int v2, v2, v19

    sub-int/2addr v2, v6

    sub-int/2addr v2, v8

    .line 1813
    .local v2, "spaceBelow":I
    iget v4, v15, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v29, v10

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 1813
    .end local v10    # "left":I
    .local v29, "left":I
    add-int/2addr v4, v10

    if-ge v2, v4, :cond_16

    .line 1814
    iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v10

    sub-int/2addr v4, v2

    sub-int v4, v6, v4

    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1818
    .end local v2    # "spaceBelow":I
    :cond_16
    :goto_d
    add-int v2, v8, v6

    .line 1819
    .local v2, "titleTop":I
    goto :goto_e

    .line 1821
    .end local v6    # "spaceAbove":I
    .end local v27    # "space":I
    .end local v28    # "alignmentHeight":I
    .end local v29    # "left":I
    .local v2, "alignmentHeight":I
    .restart local v10    # "left":I
    :cond_17
    move/from16 v28, v2

    move/from16 v29, v10

    .line 1821
    .end local v2    # "alignmentHeight":I
    .end local v10    # "left":I
    .restart local v28    # "alignmentHeight":I
    .restart local v29    # "left":I
    sub-int v2, v5, v9

    iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v2, v4

    sub-int v2, v2, v19

    .line 1821
    .local v2, "titleTop":I
    goto :goto_e

    .line 1802
    .end local v28    # "alignmentHeight":I
    .end local v29    # "left":I
    .local v2, "alignmentHeight":I
    .restart local v10    # "left":I
    :cond_18
    move/from16 v28, v2

    move/from16 v29, v10

    .line 1802
    .end local v2    # "alignmentHeight":I
    .end local v10    # "left":I
    .restart local v28    # "alignmentHeight":I
    .restart local v29    # "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    iget v4, v15, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v2, v4

    .line 1803
    .local v2, "titleTop":I
    nop

    .line 1825
    :goto_e
    if-eqz v1, :cond_1d

    .line 1826
    if-eqz v7, :cond_19

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    :goto_f
    const/4 v6, 0x1

    aget v10, v12, v6

    sub-int/2addr v4, v10

    .line 1827
    .local v4, "rd":I
    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    sub-int v11, v11, v16

    .line 1828
    move/from16 v30, v1

    neg-int v1, v4

    .line 1828
    .end local v1    # "isRtl":Z
    .local v30, "isRtl":Z
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v12, v6

    .line 1829
    move v1, v11

    .line 1830
    .local v1, "titleRight":I
    move v6, v11

    .line 1832
    .local v6, "subtitleRight":I
    if-eqz v13, :cond_1a

    .line 1833
    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1834
    .local v10, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v31, v3

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1834
    .end local v3    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v31, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    .line 1835
    .local v3, "titleLeft":I
    move/from16 v32, v4

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1835
    .end local v4    # "rd":I
    .local v32, "rd":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1836
    .local v4, "titleBottom":I
    move/from16 v33, v5

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1836
    .end local v5    # "height":I
    .local v33, "height":I
    invoke-virtual {v5, v3, v2, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1837
    iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v3, v5

    .line 1838
    iget v5, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .line 1838
    .end local v3    # "titleLeft":I
    .end local v4    # "titleBottom":I
    .end local v10    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_10

    .line 1840
    .end local v31    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v32    # "rd":I
    .end local v33    # "height":I
    .local v3, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v4, "rd":I
    .restart local v5    # "height":I
    :cond_1a
    move-object/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    .line 1840
    .end local v3    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v4    # "rd":I
    .end local v5    # "height":I
    .restart local v31    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v32    # "rd":I
    .restart local v33    # "height":I
    :goto_10
    if-eqz v14, :cond_1b

    .line 1841
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1842
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1843
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v6, v4

    .line 1844
    .local v4, "subtitleLeft":I
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 1845
    .local v5, "subtitleBottom":I
    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v4, v2, v6, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1846
    iget v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v10

    .line 1847
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v5, v10

    .line 1849
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v4    # "subtitleLeft":I
    .end local v5    # "subtitleBottom":I
    :cond_1b
    if-eqz v7, :cond_1c

    .line 1850
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1852
    .end local v6    # "subtitleRight":I
    .end local v11    # "right":I
    .end local v32    # "rd":I
    .local v1, "right":I
    move v11, v1

    .line 1885
    .end local v1    # "right":I
    .restart local v11    # "right":I
    :cond_1c
    move/from16 v36, v8

    move/from16 v10, v29

    goto/16 :goto_13

    .line 1853
    .end local v30    # "isRtl":Z
    .end local v31    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v33    # "height":I
    .local v1, "isRtl":Z
    .local v3, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v5, "height":I
    :cond_1d
    move/from16 v30, v1

    move-object/from16 v31, v3

    move/from16 v33, v5

    .line 1853
    .end local v1    # "isRtl":Z
    .end local v3    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v5    # "height":I
    .restart local v30    # "isRtl":Z
    .restart local v31    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v33    # "height":I
    if-eqz v7, :cond_1e

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    const/4 v1, 0x0

    aget v4, v12, v1

    sub-int/2addr v3, v4

    .line 1854
    .local v3, "ld":I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v10, v29, v4

    .line 1855
    .end local v29    # "left":I
    .local v10, "left":I
    neg-int v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v12, v1

    .line 1856
    move v4, v10

    .line 1857
    .local v4, "titleLeft":I
    move v5, v10

    .line 1859
    .local v5, "subtitleLeft":I
    if-eqz v13, :cond_1f

    .line 1860
    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1861
    .local v6, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 1862
    .local v1, "titleRight":I
    move/from16 v35, v3

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1862
    .end local v3    # "ld":I
    .local v35, "ld":I
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1863
    .local v3, "titleBottom":I
    move/from16 v36, v8

    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1863
    .end local v8    # "paddingTop":I
    .local v36, "paddingTop":I
    invoke-virtual {v8, v4, v2, v1, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1864
    iget v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v4, v1, v8

    .line 1865
    iget v8, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v3, v8

    .line 1865
    .end local v1    # "titleRight":I
    .end local v3    # "titleBottom":I
    .end local v6    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_12

    .line 1867
    .end local v35    # "ld":I
    .end local v36    # "paddingTop":I
    .local v3, "ld":I
    .restart local v8    # "paddingTop":I
    :cond_1f
    move/from16 v35, v3

    move/from16 v36, v8

    .line 1867
    .end local v3    # "ld":I
    .end local v8    # "paddingTop":I
    .restart local v35    # "ld":I
    .restart local v36    # "paddingTop":I
    :goto_12
    if-eqz v14, :cond_20

    .line 1868
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1869
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v3, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1870
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 1871
    .local v3, "subtitleRight":I
    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 1872
    .local v6, "subtitleBottom":I
    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v2, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1873
    iget v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v5, v3, v8

    .line 1874
    iget v8, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v6, v8

    .line 1876
    .end local v1    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v3    # "subtitleRight":I
    .end local v6    # "subtitleBottom":I
    :cond_20
    if-eqz v7, :cond_21

    .line 1877
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1885
    .end local v2    # "titleTop":I
    .end local v4    # "titleLeft":I
    .end local v5    # "subtitleLeft":I
    .end local v7    # "titleHasWidth":Z
    .end local v15    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v23    # "topChild":Landroid/view/View;
    .end local v24    # "bottomChild":Landroid/view/View;
    .end local v31    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v35    # "ld":I
    :cond_21
    :goto_13
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1886
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1887
    .local v1, "leftViewsCount":I
    const/4 v2, 0x0

    .line 1887
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_22

    .line 1888
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v4, v28

    invoke-direct {v0, v3, v10, v12, v4}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1887
    .end local v28    # "alignmentHeight":I
    .local v4, "alignmentHeight":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1892
    .end local v2    # "i":I
    .end local v4    # "alignmentHeight":I
    .restart local v28    # "alignmentHeight":I
    :cond_22
    move/from16 v4, v28

    .line 1892
    .end local v28    # "alignmentHeight":I
    .restart local v4    # "alignmentHeight":I
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1893
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1894
    .local v2, "rightViewsCount":I
    const/4 v3, 0x0

    .line 1894
    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_23

    .line 1895
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v11, v12, v4}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1894
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1901
    .end local v3    # "i":I
    :cond_23
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1902
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v12}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v3

    .line 1903
    .local v3, "centerViewsWidth":I
    sub-int v5, v25, v26

    sub-int v5, v5, v21

    div-int/lit8 v5, v5, 0x2

    add-int v6, v26, v5

    .line 1904
    .local v6, "parentCenter":I
    div-int/lit8 v5, v3, 0x2

    .line 1905
    .local v5, "halfCenterViewsWidth":I
    sub-int v7, v6, v5

    .line 1906
    .local v7, "centerLeft":I
    add-int v8, v7, v3

    .line 1907
    .local v8, "centerRight":I
    if-ge v7, v10, :cond_24

    .line 1908
    move v7, v10

    goto :goto_16

    .line 1909
    :cond_24
    if-le v8, v11, :cond_25

    .line 1910
    sub-int v15, v8, v11

    sub-int/2addr v7, v15

    .line 1913
    :cond_25
    :goto_16
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1914
    .local v15, "centerViewsCount":I
    const/16 v34, 0x0

    .line 1914
    .local v34, "i":I
    :goto_17
    move/from16 v37, v34

    .line 1914
    .end local v34    # "i":I
    .local v37, "i":I
    move/from16 v38, v1

    move/from16 v1, v37

    if-ge v1, v15, :cond_26

    .line 1915
    .end local v37    # "i":I
    .local v1, "i":I
    .local v38, "leftViewsCount":I
    move/from16 v39, v2

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 1915
    .end local v2    # "rightViewsCount":I
    .local v39, "rightViewsCount":I
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v7, v12, v4}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v7

    .line 1914
    add-int/lit8 v34, v1, 0x1

    .line 1914
    .end local v1    # "i":I
    .restart local v34    # "i":I
    move/from16 v1, v38

    move/from16 v2, v39

    goto :goto_17

    .line 1919
    .end local v34    # "i":I
    .end local v39    # "rightViewsCount":I
    .restart local v2    # "rightViewsCount":I
    :cond_26
    move/from16 v39, v2

    .line 1919
    .end local v2    # "rightViewsCount":I
    .restart local v39    # "rightViewsCount":I
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1920
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    .line 1571
    const/4 v8, 0x0

    .line 1572
    .local v8, "width":I
    const/4 v9, 0x0

    .line 1573
    .local v9, "height":I
    const/4 v10, 0x0

    .line 1575
    .local v10, "childState":I
    iget-object v11, v7, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1578
    .local v11, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    const/4 v0, 0x1

    .line 1580
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    .line 1583
    .end local v0    # "marginStartIndex":I
    .local v1, "marginEndIndex":I
    .local v12, "marginStartIndex":I
    :goto_0
    move v12, v0

    goto :goto_1

    .line 1582
    .end local v1    # "marginEndIndex":I
    .end local v12    # "marginStartIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 1583
    .restart local v0    # "marginStartIndex":I
    const/4 v1, 0x1

    goto :goto_0

    .line 1583
    .end local v0    # "marginStartIndex":I
    .restart local v1    # "marginEndIndex":I
    .restart local v12    # "marginStartIndex":I
    :goto_1
    move v13, v1

    .line 1588
    .end local v1    # "marginEndIndex":I
    .local v13, "marginEndIndex":I
    const/4 v14, 0x0

    .line 1589
    .local v14, "navWidth":I
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1592
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1593
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1594
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1595
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1596
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1595
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1599
    :cond_1
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1602
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1603
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1604
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1605
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1606
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1607
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1606
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1610
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v15

    .line 1611
    .local v15, "contentInsetStart":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1612
    sub-int v0, v15, v14

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v12

    .line 1614
    const/16 v16, 0x0

    .line 1615
    .local v16, "menuWidth":I
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v4, v7, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v17, v4

    move/from16 v4, p2

    move/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v6, v17

    .line 1616
    .end local v12    # "marginStartIndex":I
    .local v18, "marginStartIndex":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1618
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1619
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1620
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1619
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1621
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1622
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredState()I

    move-result v0

    .line 1621
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1625
    move v6, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_2

    .line 1625
    .end local v18    # "marginStartIndex":I
    .restart local v12    # "marginStartIndex":I
    :cond_3
    move/from16 v18, v12

    const/4 v12, 0x0

    move v6, v10

    move v10, v9

    move/from16 v9, v16

    .line 1625
    .end local v12    # "marginStartIndex":I
    .end local v16    # "menuWidth":I
    .local v6, "childState":I
    .local v9, "menuWidth":I
    .local v10, "height":I
    .restart local v18    # "marginStartIndex":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 1626
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1627
    sub-int v0, v5, v9

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v13

    .line 1629
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1630
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, v16

    .line 1630
    .end local v5    # "contentInsetEnd":I
    .local v17, "contentInsetEnd":I
    move v12, v6

    move-object v6, v11

    .line 1630
    .end local v6    # "childState":I
    .local v12, "childState":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1632
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1633
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1632
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1634
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1635
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1634
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 1638
    .end local v12    # "childState":I
    .restart local v6    # "childState":I
    move v12, v6

    goto :goto_3

    .line 1638
    .end local v17    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    :cond_4
    move/from16 v17, v5

    move v12, v6

    .line 1638
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .restart local v12    # "childState":I
    .restart local v17    # "contentInsetEnd":I
    :goto_3
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1639
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1641
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1642
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1641
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1643
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1644
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1643
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1647
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v6

    .line 1648
    .local v6, "childCount":I
    const/4 v0, 0x0

    .line 1648
    .local v0, "i":I
    :goto_4
    move v5, v0

    .line 1648
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v6, :cond_8

    .line 1649
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1650
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1651
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v0, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_7

    invoke-direct {v7, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1653
    nop

    .line 1648
    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v20, v9

    goto :goto_5

    .line 1656
    :cond_6
    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v19, v3

    move v3, v8

    .line 1656
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v19, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move/from16 v20, v9

    move-object v9, v4

    move/from16 v4, p2

    .line 1656
    .end local v4    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    .local v20, "menuWidth":I
    move/from16 v21, v5

    move/from16 v5, v16

    .line 1656
    .end local v5    # "i":I
    .local v21, "i":I
    move/from16 v16, v6

    move-object v6, v11

    .line 1656
    .end local v6    # "childCount":I
    .local v16, "childCount":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1658
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v9}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1659
    .end local v10    # "height":I
    .local v0, "height":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    .line 1648
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "childState":I
    .end local v19    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .local v1, "childState":I
    move v10, v0

    move v12, v1

    goto :goto_5

    .line 1648
    .end local v0    # "height":I
    .end local v1    # "childState":I
    .end local v16    # "childCount":I
    .end local v20    # "menuWidth":I
    .end local v21    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "childCount":I
    .local v9, "menuWidth":I
    .restart local v10    # "height":I
    .restart local v12    # "childState":I
    :cond_7
    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v20, v9

    .line 1648
    .end local v5    # "i":I
    .end local v6    # "childCount":I
    .end local v9    # "menuWidth":I
    .restart local v16    # "childCount":I
    .restart local v20    # "menuWidth":I
    .restart local v21    # "i":I
    :goto_5
    add-int/lit8 v0, v21, 0x1

    .line 1648
    .end local v21    # "i":I
    .local v0, "i":I
    move/from16 v6, v16

    move/from16 v9, v20

    goto :goto_4

    .line 1662
    .end local v0    # "i":I
    .end local v16    # "childCount":I
    .end local v20    # "menuWidth":I
    .restart local v6    # "childCount":I
    .restart local v9    # "menuWidth":I
    :cond_8
    move/from16 v16, v6

    move/from16 v20, v9

    .line 1662
    .end local v6    # "childCount":I
    .end local v9    # "menuWidth":I
    .restart local v16    # "childCount":I
    .restart local v20    # "menuWidth":I
    const/4 v9, 0x0

    .line 1663
    .local v9, "titleWidth":I
    const/16 v19, 0x0

    .line 1664
    .local v19, "titleHeight":I
    iget v0, v7, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v21, v0, v1

    .line 1665
    .local v21, "titleVertMargins":I
    iget v0, v7, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v22, v0, v1

    .line 1666
    .local v22, "titleHorizMargins":I
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1667
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v8, v22

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v21

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1670
    .end local v9    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v9, v1, v2

    .line 1671
    .end local v0    # "titleWidth":I
    .restart local v9    # "titleWidth":I
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v19, v0, v1

    .line 1672
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1674
    :cond_9
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1675
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v8, v22

    add-int v5, v19, v21

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1679
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1680
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1681
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1682
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1681
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1685
    .end local v19    # "titleHeight":I
    .local v0, "titleHeight":I
    :cond_a
    move/from16 v0, v19

    add-int/2addr v8, v9

    .line 1686
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1690
    .end local v10    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 1691
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1693
    nop

    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v12

    .line 1693
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 1696
    .local v2, "measuredWidth":I
    nop

    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v12, 0x10

    .line 1696
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1700
    .local v3, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    move v5, v3

    :goto_6
    invoke-virtual {v7, v2, v5}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1701
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1423
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 1424
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    return-void

    .line 1428
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1429
    .local v0, "ss":Landroid/support/v7/widget/Toolbar$SavedState;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1431
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1432
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1433
    iget v2, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1434
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 1435
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1439
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v2, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_3

    .line 1440
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1442
    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 487
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 489
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1411
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1413
    .local v0, "state":Landroid/support/v7/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1418
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1463
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1464
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1467
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1468
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1469
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1470
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1474
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1475
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1478
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2118
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2120
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .line 2120
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2121
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2122
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2123
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v4, :cond_0

    .line 2124
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 2125
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2128
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2150
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2151
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2152
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1286
    if-gez p1, :cond_0

    .line 1287
    const/high16 p1, -0x80000000

    .line 1289
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1290
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1291
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1295
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1244
    if-gez p1, :cond_0

    .line 1245
    const/high16 p1, -0x80000000

    .line 1247
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1248
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1249
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1253
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1168
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1170
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1105
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1107
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 501
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 502
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 621
    if-eqz p1, :cond_0

    .line 622
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 630
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 547
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    .line 553
    .local v0, "oldMenu":Landroid/support/v7/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 554
    return-void

    .line 557
    :cond_1
    if-eqz v0, :cond_2

    .line 558
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 562
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 563
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 566
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 567
    if-eqz p1, :cond_4

    .line 568
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 569
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 571
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 572
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 573
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 574
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 576
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 577
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 578
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 579
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2160
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 2161
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 2162
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 940
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 941
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 958
    if-eqz p1, :cond_0

    .line 959
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 965
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 994
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1083
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1084
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1017
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1018
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 353
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 354
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 355
    if-nez p1, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 358
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 795
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 808
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 810
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 811
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 812
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 815
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 830
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 848
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 852
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 872
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 740
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 755
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 756
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 758
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 761
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 776
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 386
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 387
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 388
    iput p3, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 389
    iput p4, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 392
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 477
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 479
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 455
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 457
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 458
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 411
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 413
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 433
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 436
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 837
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 841
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 860
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
