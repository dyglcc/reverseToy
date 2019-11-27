.class public Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroid/support/v7/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;,
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;,
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;,
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;,
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;,
        Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String; = ": <transition> tag requires \'fromId\' & \'toId\' attributes"


# instance fields
.field private mMutated:Z

.field private mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

.field private mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/StateListDrawable;-><init>(Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;)V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 105
    iput v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 116
    new-instance v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 117
    .local v0, "newState":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 118
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    .line 119
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    .line 120
    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 140
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 142
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 142
    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    if-eq v4, v3, :cond_0

    .line 142
    .end local v4    # "type":I
    goto :goto_0

    .line 146
    .restart local v4    # "type":I
    :cond_0
    if-eq v4, v5, :cond_1

    .line 147
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    invoke-static {p0, v0, v1, v2, p2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 152
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v1, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 155
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "name":Ljava/lang/String;
    const-string v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid animated-selector tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    new-instance v1, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;-><init>()V

    .line 176
    .local v1, "asl":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 177
    return-object v1
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 484
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 484
    .local v3, "type":I
    if-eq v2, v1, :cond_5

    .line 485
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .line 485
    .local v4, "depth":I
    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_5

    .line 487
    :cond_1
    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    .line 488
    goto :goto_0

    .line 490
    :cond_2
    if-le v4, v0, :cond_3

    .line 491
    goto :goto_0

    .line 493
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "item"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 495
    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "transition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 499
    .end local v4    # "depth":I
    :cond_5
    return-void
.end method

.method private init()V
    .locals 1

    .line 471
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    .line 472
    return-void
.end method

.method private parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 565
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 567
    .local v1, "keyframeId":I
    const/4 v2, 0x0

    .line 568
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    .line 569
    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 570
    .local v3, "drawableId":I
    if-lez v3, :cond_0

    .line 571
    invoke-static {p1, v3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 573
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    invoke-virtual {p0, p4}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v4

    .line 577
    .local v4, "states":[I
    if-nez v2, :cond_5

    .line 579
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 579
    .local v6, "type":I
    const/4 v7, 0x4

    if-ne v5, v7, :cond_1

    .line 579
    .end local v6    # "type":I
    goto :goto_0

    .line 582
    .restart local v6    # "type":I
    :cond_1
    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    .line 583
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 587
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "vector"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 588
    invoke-static {p2, p3, p4, p5}, Landroid/support/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-result-object v2

    goto :goto_1

    .line 589
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_4

    .line 590
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 592
    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 595
    .end local v6    # "type":I
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 596
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 599
    :cond_6
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v5, v4, v2, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v5

    return v5
.end method

.method private parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 511
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 513
    .local v1, "fromId":I
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 515
    .local v3, "toId":I
    const/4 v4, 0x0

    .line 516
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    sget v5, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 518
    .local v5, "drawableId":I
    if-lez v5, :cond_0

    .line 519
    invoke-static {p1, v5}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 521
    :cond_0
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 523
    .local v6, "reversible":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    if-nez v4, :cond_5

    .line 528
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 528
    .local v8, "type":I
    const/4 v9, 0x4

    if-ne v7, v9, :cond_1

    .line 528
    .end local v8    # "type":I
    goto :goto_0

    .line 531
    .restart local v8    # "type":I
    :cond_1
    const/4 v7, 0x2

    if-eq v8, v7, :cond_2

    .line 532
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "animated-vector"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v4

    goto :goto_1

    .line 539
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v7, v9, :cond_4

    .line 540
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 542
    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 545
    .end local v8    # "type":I
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 546
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_6
    if-eq v1, v2, :cond_8

    if-ne v3, v2, :cond_7

    goto :goto_2

    .line 553
    :cond_7
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v2, v1, v3, v4, v6}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v2

    return v2

    .line 550
    :cond_8
    :goto_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private selectTransition(I)Z
    .locals 12
    .param p1, "toIndex"    # I

    .line 292
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 293
    .local v0, "currentTransition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 294
    iget v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    if-ne p1, v2, :cond_0

    .line 296
    return v1

    .line 297
    :cond_0
    iget v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->reverse()V

    .line 300
    iget v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    iput v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 301
    iput p1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 302
    return v1

    .line 305
    :cond_1
    iget v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 307
    .local v2, "fromIndex":I
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    goto :goto_0

    .line 309
    .end local v2    # "fromIndex":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v2

    .line 312
    .restart local v2    # "fromIndex":I
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 313
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 314
    iput v3, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 315
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    .line 316
    .local v3, "state":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    invoke-virtual {v3, v2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v4

    .line 317
    .local v4, "fromId":I
    invoke-virtual {v3, p1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v5

    .line 318
    .local v5, "toId":I
    const/4 v6, 0x0

    if-eqz v5, :cond_8

    if-nez v4, :cond_3

    goto :goto_3

    .line 322
    :cond_3
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfTransition(II)I

    move-result v7

    .line 323
    .local v7, "transitionIndex":I
    if-gez v7, :cond_4

    .line 325
    return v6

    .line 327
    :cond_4
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    move-result v8

    .line 329
    .local v8, "hasReversibleFlag":Z
    invoke-virtual {p0, v7}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 332
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    instance-of v10, v9, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v10, :cond_5

    .line 333
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v6

    .line 334
    .local v6, "reversed":Z
    new-instance v10, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v10, v11, v6, v8}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 334
    .end local v6    # "reversed":Z
    move-object v6, v10

    .line 336
    .local v6, "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    goto :goto_2

    .line 336
    .end local v6    # "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_5
    instance-of v10, v9, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v10, :cond_6

    .line 338
    new-instance v6, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;

    move-object v10, v9

    check-cast v10, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v6, v10}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V

    .line 338
    .restart local v6    # "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :goto_1
    goto :goto_2

    .line 339
    .end local v6    # "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_6
    instance-of v10, v9, Landroid/graphics/drawable/Animatable;

    if-eqz v10, :cond_7

    .line 340
    new-instance v6, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;

    move-object v10, v9

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v6, v10}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    goto :goto_1

    .line 343
    .restart local v6    # "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :goto_2
    nop

    .line 345
    invoke-virtual {v6}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    .line 346
    iput-object v6, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 347
    iput v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 348
    iput p1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 349
    return v1

    .line 343
    .end local v6    # "transition":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    :cond_7
    return v6

    .line 320
    .end local v7    # "transitionIndex":I
    .end local v8    # "hasReversibleFlag":Z
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_3
    return v6
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 448
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    .line 450
    .local v0, "state":Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 451
    iget v1, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    .line 454
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mVariablePadding:Z

    .line 455
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 454
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setVariablePadding(Z)V

    .line 457
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mConstantSize:Z

    .line 458
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setConstantSize(Z)V

    .line 460
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mEnterFadeDuration:I

    .line 461
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 460
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setEnterFadeDuration(I)V

    .line 463
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mExitFadeDuration:I

    .line 464
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setExitFadeDuration(I)V

    .line 466
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v2, v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->setDither(Z)V

    .line 468
    return-void
.end method


# virtual methods
.method public bridge synthetic addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "stateSet"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "id"    # I

    .line 233
    if-nez p2, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    .line 238
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .line 250
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    .line 254
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    .line 618
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->clearMutated()V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    .line 620
    return-void
.end method

.method cloneConstantState()Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .locals 3

    .line 613
    new-instance v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->setVisible(ZZ)Z

    .line 204
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 205
    invoke-virtual {p0, p2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->updateDensity(Landroid/content/res/Resources;)V

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 208
    invoke-direct {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->init()V

    .line 209
    return-void
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 263
    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 264
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    .line 267
    iget v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    .line 269
    iput v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    .line 271
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 604
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mutate()V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    .line 608
    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->onLayoutDirectionChanged(I)Z

    move-result p1

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 277
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v0

    .line 278
    .local v0, "targetIndex":I
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 279
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->selectTransition(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 283
    .local v1, "changed":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 284
    .local v2, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 287
    :cond_2
    return v1
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/StateListDrawable;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 717
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 718
    instance-of v0, p1, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    if-eqz v0, :cond_0

    .line 719
    move-object v0, p1

    check-cast v0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    .line 721
    :cond_0
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setEnterFadeDuration(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setExitFadeDuration(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 213
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 214
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    .line 222
    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/StateListDrawable;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
