.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/TextViewCompat$OreoCallback;,
        Landroid/support/v4/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 457
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 458
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 460
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 440
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 441
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 443
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 423
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 426
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 474
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 475
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 407
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 408
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 410
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 297
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 298
    .local v0, "rtl":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    .local v1, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 301
    const/4 v3, 0x2

    aget-object v4, v1, v3

    .line 302
    .local v4, "start":Landroid/graphics/drawable/Drawable;
    aget-object v5, v1, v2

    .line 303
    .local v5, "end":Landroid/graphics/drawable/Drawable;
    aput-object v4, v1, v2

    .line 304
    aput-object v5, v1, v3

    .line 306
    .end local v4    # "start":Landroid/graphics/drawable/Drawable;
    .end local v5    # "end":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v1

    .line 308
    .end local v0    # "rtl":Z
    .end local v1    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 766
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 776
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0

    .line 228
    :cond_0
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 229
    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 230
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    .line 232
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 234
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat;->sMaximumFieldFetched:Z

    if-nez v0, :cond_2

    .line 235
    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    .line 236
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat;->sMaximumFieldFetched:Z

    .line 238
    :cond_2
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 239
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 242
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    return v0

    .line 254
    :cond_0
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 255
    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    .line 256
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat;->sMinModeFieldFetched:Z

    .line 258
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 260
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat;->sMinimumFieldFetched:Z

    if-nez v0, :cond_2

    .line 261
    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    .line 262
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat;->sMinimumFieldFetched:Z

    .line 264
    :cond_2
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 265
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 268
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .locals 2
    .param p0, "heuristic"    # Landroid/text/TextDirectionHeuristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 961
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 962
    return v1

    .line 963
    :cond_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_1

    .line 964
    return v1

    .line 965
    :cond_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_2

    .line 966
    const/4 v0, 0x2

    return v0

    .line 967
    :cond_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_3

    .line 968
    const/4 v0, 0x3

    return v0

    .line 969
    :cond_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_4

    .line 970
    const/4 v0, 0x4

    return v0

    .line 971
    :cond_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_5

    .line 972
    const/4 v0, 0x5

    return v0

    .line 973
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_6

    .line 974
    const/4 v0, 0x6

    return v0

    .line 975
    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_7

    .line 976
    const/4 v0, 0x7

    return v0

    .line 978
    :cond_7
    return v1
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 905
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 907
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 910
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_3

    .line 911
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 916
    nop

    .line 917
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 918
    .local v0, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 921
    .local v1, "zero":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 922
    .local v3, "firstCodepoint":I
    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    .line 923
    .local v4, "digitDirection":B
    if-eq v4, v2, :cond_2

    const/4 v2, 0x2

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 927
    :cond_1
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v2

    .line 925
    :cond_2
    :goto_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v2

    .line 933
    .end local v0    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local v1    # "zero":Ljava/lang/String;
    .end local v3    # "firstCodepoint":I
    .end local v4    # "digitDirection":B
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 936
    .local v0, "defaultIsRtl":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 939
    if-eqz v0, :cond_5

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 952
    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 950
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 948
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 946
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 944
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 942
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 939
    :cond_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroid/support/v4/text/PrecomputedTextCompat$Params;
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 813
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 814
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 816
    :cond_0
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    new-instance v1, Landroid/text/TextPaint;

    .line 817
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 818
    .local v0, "builder":Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 819
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 820
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 822
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 823
    invoke-static {p0}, Landroid/support/v4/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 825
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->build()Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v1

    return-object v1
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TextViewCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " field."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "TextViewCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 360
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 362
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 363
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 366
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 386
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 387
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 388
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 391
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "autoSizeTextType"    # I

    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 326
    :cond_0
    instance-of v0, p0, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 327
    move-object v0, p0

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 329
    :cond_1
    :goto_0
    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 151
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 153
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 155
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "top"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "end"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "bottom"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 210
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 211
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 212
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    if-eqz v0, :cond_3

    move v2, p1

    goto :goto_2

    :cond_3
    move v2, p3

    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 214
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 215
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 217
    :goto_3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 178
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 179
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 180
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 183
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_3
    return-void
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 504
    nop

    .line 505
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 504
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 506
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "firstBaselineToTopHeight"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 691
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 693
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 694
    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 699
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 702
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 705
    :cond_1
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_1

    .line 703
    :cond_2
    :goto_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 705
    .local v1, "fontMetricsTop":I
    :goto_1
    nop

    .line 711
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_3

    .line 712
    neg-int v2, v1

    sub-int v2, p1, v2

    .line 713
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 714
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 713
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 716
    .end local v2    # "paddingTop":I
    :cond_3
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lastBaselineToBottomHeight"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 736
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 738
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 740
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 743
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_1

    .line 744
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 746
    .local v1, "fontMetricsBottom":I
    :goto_1
    nop

    .line 752
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2

    .line 753
    sub-int v2, p1, v1

    .line 754
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 755
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 754
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 757
    .end local v2    # "paddingBottom":I
    :cond_2
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lineHeight"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 794
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 796
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 798
    .local v0, "fontHeight":I
    if-eq p1, v0, :cond_0

    .line 800
    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 802
    :cond_0
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroid/support/v4/text/PrecomputedTextCompat;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "precomputed"    # Landroid/support/v4/text/PrecomputedTextCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 885
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 887
    :cond_0
    invoke-static {p0}, Landroid/support/v4/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v0

    .line 888
    .local v0, "param":Landroid/support/v4/text/PrecomputedTextCompat$Params;
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat;->getParams()Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given text can not be applied to TextView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 891
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    .end local v0    # "param":Landroid/support/v4/text/PrecomputedTextCompat$Params;
    :goto_0
    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 286
    :goto_0
    return-void
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroid/support/v4/text/PrecomputedTextCompat$Params;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Landroid/support/v4/text/PrecomputedTextCompat$Params;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 840
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 841
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 844
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 845
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    .line 848
    .local v0, "paintTextScaleX":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 851
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 854
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 856
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 858
    .end local v0    # "paintTextScaleX":F
    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 864
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 865
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 867
    :goto_0
    return-void
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Landroid/support/v4/widget/TextViewCompat$OreoCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    .line 521
    :cond_1
    :goto_0
    return-object p1
.end method
