.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 65
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 67
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroid/support/v7/widget/TintInfo;

    .line 370
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 373
    :cond_0
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 377
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 378
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 379
    new-instance v1, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v1}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 380
    .local v1, "tintInfo":Landroid/support/v7/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 381
    iput-object v0, v1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 382
    return-object v1

    .line 384
    .end local v1    # "tintInfo":Landroid/support/v7/widget/TintInfo;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private setTextSizeInternal(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 419
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/support/v7/widget/TintTypedArray;

    .line 242
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 244
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 245
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 285
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 286
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_0

    .line 286
    .end local v0    # "typefaceIndex":I
    goto :goto_0

    .line 296
    .restart local v0    # "typefaceIndex":I
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 296
    .end local v0    # "typefaceIndex":I
    goto :goto_0

    .line 292
    .restart local v0    # "typefaceIndex":I
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 293
    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 289
    nop

    .line 300
    .end local v0    # "typefaceIndex":I
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 247
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 250
    .local v0, "fontFamilyId":I
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 251
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 252
    .local v3, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v4, Landroid/support/v7/widget/AppCompatTextHelper$1;

    invoke-direct {v4, p0, v3}, Landroid/support/v7/widget/AppCompatTextHelper$1;-><init>(Landroid/support/v7/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V

    .line 265
    .local v4, "replyCallback":Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    :try_start_0
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v5, v4}, Landroid/support/v7/widget/TintTypedArray;->getFont(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 267
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_4

    .line 268
    :catch_0
    move-exception v1

    .line 272
    .end local v3    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v4    # "replyCallback":Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    :cond_5
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_6

    .line 274
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "fontFamilyName":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 276
    iget v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 279
    .end local v1    # "fontFamilyName":Ljava/lang/String;
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 356
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 357
    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 358
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 360
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_3

    .line 362
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 364
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 367
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 409
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method isAutoSizeEnabled()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    move/from16 v2, p2

    iget-object v3, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 72
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v4

    .line 75
    .local v4, "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 77
    .local v5, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    .line 79
    .local v7, "ap":I
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 81
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 80
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 83
    :cond_0
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 84
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 85
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 84
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 87
    :cond_1
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 88
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 89
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 88
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 91
    :cond_2
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 92
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 93
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 92
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 96
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    .line 97
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 98
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 99
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 98
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 101
    :cond_4
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 102
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 103
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 102
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 107
    :cond_5
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 112
    iget-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    instance-of v9, v9, Landroid/text/method/PasswordTransformationMethod;

    .line 114
    .local v9, "hasPwdTm":Z
    const/4 v10, 0x0

    .line 115
    .local v10, "allCaps":Z
    const/4 v11, 0x0

    .line 116
    .local v11, "allCapsSet":Z
    const/4 v12, 0x0

    .line 117
    .local v12, "textColor":Landroid/content/res/ColorStateList;
    const/4 v13, 0x0

    .line 118
    .local v13, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v14, 0x0

    .line 121
    .local v14, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v15, 0x17

    if-eq v7, v8, :cond_a

    .line 122
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 123
    if-nez v9, :cond_6

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 124
    const/4 v8, 0x1

    .line 125
    .end local v11    # "allCapsSet":Z
    .local v8, "allCapsSet":Z
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v11, v6}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 128
    move v11, v8

    .line 128
    .end local v8    # "allCapsSet":Z
    .restart local v11    # "allCapsSet":Z
    :cond_6
    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 129
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v15, :cond_9

    .line 132
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 135
    :cond_7
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 136
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 139
    :cond_8
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 140
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 144
    .end local v14    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v8, "textColorLink":Landroid/content/res/ColorStateList;
    move-object v14, v8

    .line 144
    .end local v8    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v14    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_9
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 148
    :cond_a
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v1, v8, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 150
    if-nez v9, :cond_b

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 151
    const/4 v11, 0x1

    .line 152
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v8, v6}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 154
    :cond_b
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v15, :cond_e

    .line 157
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 158
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 160
    .end local v12    # "textColor":Landroid/content/res/ColorStateList;
    .local v8, "textColor":Landroid/content/res/ColorStateList;
    move-object v12, v8

    .line 160
    .end local v8    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v12    # "textColor":Landroid/content/res/ColorStateList;
    :cond_c
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 161
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 164
    .end local v13    # "textColorHint":Landroid/content/res/ColorStateList;
    .local v8, "textColorHint":Landroid/content/res/ColorStateList;
    move-object v13, v8

    .line 164
    .end local v8    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v13    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_d
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 165
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 170
    :cond_e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v8, v15, :cond_f

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 171
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 172
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v15, -0x1

    invoke-virtual {v5, v8, v15}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    if-nez v8, :cond_f

    .line 173
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_f
    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 178
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 180
    if-eqz v12, :cond_10

    .line 181
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    :cond_10
    if-eqz v13, :cond_11

    .line 184
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    :cond_11
    if-eqz v14, :cond_12

    .line 187
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    :cond_12
    if-nez v9, :cond_13

    if-eqz v11, :cond_13

    .line 190
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 192
    :cond_13
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v8, :cond_14

    .line 193
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v15, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v8, v15, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_14
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v6, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 198
    sget-boolean v6, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v6, :cond_16

    .line 200
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v6

    if-eqz v6, :cond_16

    .line 202
    iget-object v6, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 203
    invoke-virtual {v6}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v6

    .line 204
    .local v6, "autoSizeTextSizesInPx":[I
    array-length v8, v6

    if-lez v8, :cond_16

    .line 205
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v8

    int-to-float v8, v8

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v8, v8, v15

    if-eqz v8, :cond_15

    .line 208
    iget-object v8, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v15, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 209
    invoke-virtual {v15}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v15

    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 210
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v2

    move-object/from16 v16, v4

    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 211
    .end local v4    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .local v16, "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v4

    .line 208
    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v8, v15, v2, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 208
    .end local v5    # "a":Landroid/support/v7/widget/TintTypedArray;
    .local v17, "a":Landroid/support/v7/widget/TintTypedArray;
    goto :goto_0

    .line 214
    .end local v16    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .end local v17    # "a":Landroid/support/v7/widget/TintTypedArray;
    .restart local v4    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .restart local v5    # "a":Landroid/support/v7/widget/TintTypedArray;
    :cond_15
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .line 214
    .end local v4    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .end local v5    # "a":Landroid/support/v7/widget/TintTypedArray;
    .restart local v16    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .restart local v17    # "a":Landroid/support/v7/widget/TintTypedArray;
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 214
    .end local v6    # "autoSizeTextSizesInPx":[I
    goto :goto_0

    .line 222
    .end local v16    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .end local v17    # "a":Landroid/support/v7/widget/TintTypedArray;
    .restart local v4    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .restart local v5    # "a":Landroid/support/v7/widget/TintTypedArray;
    :cond_16
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 222
    .end local v4    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .end local v5    # "a":Landroid/support/v7/widget/TintTypedArray;
    .restart local v16    # "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    .restart local v17    # "a":Landroid/support/v7/widget/TintTypedArray;
    :goto_0
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v2

    .line 223
    .end local v17    # "a":Landroid/support/v7/widget/TintTypedArray;
    .local v2, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 225
    .local v4, "firstBaselineToTopHeight":I
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v2, v6, v5}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 227
    .local v6, "lastBaselineToBottomHeight":I
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v2, v8, v5}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 229
    .local v8, "lineHeight":I
    invoke-virtual {v2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 230
    if-eq v4, v5, :cond_17

    .line 231
    iget-object v15, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v15, v4}, Landroid/support/v4/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 233
    :cond_17
    if-eq v6, v5, :cond_18

    .line 234
    iget-object v15, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v15, v6}, Landroid/support/v4/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 236
    :cond_18
    if-eq v8, v5, :cond_19

    .line 237
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5, v8}, Landroid/support/v4/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 239
    :cond_19
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 2
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 304
    .local p1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_0

    .line 305
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 306
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 308
    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 311
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 390
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    .line 393
    :cond_0
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 314
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 316
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 321
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 323
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_1

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 324
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 328
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 329
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 330
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 336
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 341
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 342
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    :cond_3
    return-void
.end method

.method setAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 349
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 432
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 437
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 423
    return-void
.end method

.method setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 398
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 403
    :cond_0
    return-void
.end method
