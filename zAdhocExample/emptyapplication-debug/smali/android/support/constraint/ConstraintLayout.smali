.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final CACHE_MEASURED_DIMENSION:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 576
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 581
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 582
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .line 1131
    if-nez p1, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1134
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1135
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1136
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1141
    :cond_1
    if-ne v0, p0, :cond_2

    .line 1142
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1144
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 595
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 598
    if-eqz p1, :cond_7

    .line 599
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 600
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 601
    .local v2, "N":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 601
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 602
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 603
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v5, v6, :cond_0

    .line 604
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    .line 605
    :cond_0
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v5, v6, :cond_1

    .line 606
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    .line 607
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v5, v6, :cond_2

    .line 608
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    .line 609
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v5, v6, :cond_3

    .line 610
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    .line 611
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v5, v6, :cond_4

    .line 612
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    .line 613
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v5, v6, :cond_5

    .line 614
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 616
    .local v6, "id":I
    :try_start_0
    new-instance v7, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v7}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 617
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    goto :goto_1

    .line 618
    :catch_0
    move-exception v7

    .line 619
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 621
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 601
    .end local v5    # "attr":I
    .end local v6    # "id":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 624
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 627
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 22
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1161
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1162
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1164
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1165
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1165
    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_13

    .line 1166
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1167
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1168
    nop

    .line 1165
    .end local v3    # "heightPadding":I
    .end local v8    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    :goto_1
    move/from16 v21, v3

    goto/16 :goto_a

    .line 1170
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1171
    .local v9, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1172
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_11

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_1

    .line 1173
    goto :goto_1

    .line 1175
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1177
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1178
    .local v11, "width":I
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1182
    .local v12, "height":I
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v14, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v15, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v14, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v15, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 1192
    .local v13, "doMeasure":Z
    :goto_3
    const/16 v16, 0x0

    .line 1193
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1195
    .local v17, "didWrapMeasureHeight":Z
    if-eqz v13, :cond_e

    .line 1199
    const/4 v6, -0x2

    if-nez v11, :cond_5

    .line 1200
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1202
    .local v18, "childWidthMeasureSpec":I
    const/16 v16, 0x1

    goto :goto_4

    .line 1203
    .end local v18    # "childWidthMeasureSpec":I
    :cond_5
    if-ne v11, v15, :cond_6

    .line 1204
    invoke-static {v1, v4, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1204
    .restart local v18    # "childWidthMeasureSpec":I
    goto :goto_4

    .line 1207
    .end local v18    # "childWidthMeasureSpec":I
    :cond_6
    if-ne v11, v6, :cond_7

    .line 1208
    const/16 v16, 0x1

    .line 1210
    :cond_7
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1210
    .restart local v18    # "childWidthMeasureSpec":I
    :goto_4
    move/from16 v19, v18

    .line 1213
    .end local v18    # "childWidthMeasureSpec":I
    .local v19, "childWidthMeasureSpec":I
    if-nez v12, :cond_8

    .line 1214
    invoke-static {v2, v3, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1216
    .local v18, "childHeightMeasureSpec":I
    const/16 v17, 0x1

    goto :goto_5

    .line 1217
    .end local v18    # "childHeightMeasureSpec":I
    :cond_8
    if-ne v12, v15, :cond_9

    .line 1218
    invoke-static {v2, v3, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1218
    .restart local v18    # "childHeightMeasureSpec":I
    goto :goto_5

    .line 1221
    .end local v18    # "childHeightMeasureSpec":I
    :cond_9
    if-ne v12, v6, :cond_a

    .line 1222
    const/16 v17, 0x1

    .line 1224
    :cond_a
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1224
    .restart local v18    # "childHeightMeasureSpec":I
    :goto_5
    move/from16 v20, v18

    .line 1227
    .end local v18    # "childHeightMeasureSpec":I
    .local v20, "childHeightMeasureSpec":I
    move/from16 v14, v19

    move/from16 v15, v20

    invoke-virtual {v8, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1228
    .end local v19    # "childWidthMeasureSpec":I
    .end local v20    # "childHeightMeasureSpec":I
    .local v14, "childWidthMeasureSpec":I
    .local v15, "childHeightMeasureSpec":I
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_b

    .line 1229
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v18, 0x1

    move/from16 v21, v3

    add-long v2, v0, v18

    .line 1229
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    iput-wide v2, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_6

    .line 1232
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_b
    move/from16 v21, v3

    .line 1232
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_6
    const/4 v0, -0x2

    if-ne v11, v0, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1233
    if-ne v12, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1235
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1235
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    goto :goto_9

    .line 1238
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_e
    move/from16 v21, v3

    .line 1238
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :goto_9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1239
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1241
    if-eqz v16, :cond_f

    .line 1242
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1244
    :cond_f
    if-eqz v17, :cond_10

    .line 1245
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1248
    :cond_10
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_12

    .line 1249
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1250
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 1251
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1251
    .end local v0    # "baseline":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "doMeasure":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_a

    .line 1165
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_11
    move/from16 v21, v3

    .line 1165
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 1255
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_13
    move/from16 v21, v3

    .line 1255
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 33
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1283
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1284
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1286
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1287
    .local v5, "widgetsCount":I
    const/4 v7, 0x0

    .line 1287
    .local v7, "i":I
    :goto_0
    const/16 v10, 0x8

    const/4 v13, -0x2

    if-ge v7, v5, :cond_e

    .line 1288
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1289
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_0

    .line 1290
    nop

    .line 1287
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .end local v14    # "child":Landroid/view/View;
    .local v21, "heightPadding":I
    .local v22, "widthPadding":I
    .local v23, "widgetsCount":I
    :goto_1
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_6

    .line 1292
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v14    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1293
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1294
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v6, :cond_c

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v6, :cond_1

    .line 1295
    goto :goto_1

    .line 1297
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1299
    iget v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1300
    .local v6, "width":I
    iget v12, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1302
    .local v12, "height":I
    if-eqz v6, :cond_b

    if-nez v12, :cond_2

    .line 1303
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_5

    .line 1308
    :cond_2
    const/16 v16, 0x0

    .line 1309
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1313
    .local v17, "didWrapMeasureHeight":Z
    if-ne v6, v13, :cond_3

    .line 1314
    const/16 v16, 0x1

    .line 1316
    :cond_3
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 1318
    .local v11, "childWidthMeasureSpec":I
    if-ne v12, v13, :cond_4

    .line 1319
    const/16 v17, 0x1

    .line 1321
    :cond_4
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 1323
    .local v13, "childHeightMeasureSpec":I
    invoke-virtual {v14, v11, v13}, Landroid/view/View;->measure(II)V

    .line 1324
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v8, :cond_5

    .line 1325
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v21, v3

    iget-wide v2, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1325
    .end local v3    # "heightPadding":I
    .restart local v21    # "heightPadding":I
    move/from16 v22, v4

    move/from16 v23, v5

    const-wide/16 v18, 0x1

    add-long v4, v2, v18

    .line 1325
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iput-wide v4, v8, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_2

    .line 1328
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_5
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1328
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_2
    const/4 v2, -0x2

    if-ne v6, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1329
    if-ne v12, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1330
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1331
    .end local v6    # "width":I
    .local v2, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1333
    .end local v12    # "height":I
    .local v3, "height":I
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1334
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1336
    if-eqz v16, :cond_8

    .line 1337
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1339
    :cond_8
    if-eqz v17, :cond_9

    .line 1340
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1343
    :cond_9
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v4, :cond_a

    .line 1344
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1345
    .local v4, "baseline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 1346
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1350
    .end local v4    # "baseline":I
    :cond_a
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v4, :cond_d

    .line 1351
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1352
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1352
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v13    # "childHeightMeasureSpec":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    goto :goto_6

    .line 1303
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .local v3, "heightPadding":I
    .local v4, "widthPadding":I
    .restart local v5    # "widgetsCount":I
    .restart local v6    # "width":I
    .restart local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v12    # "height":I
    .restart local v14    # "child":Landroid/view/View;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_b
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1303
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :goto_5
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1304
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1305
    goto :goto_6

    .line 1287
    .end local v6    # "width":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "height":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_c
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1287
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v2, p2

    goto/16 :goto_0

    .line 1357
    .end local v7    # "i":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .end local v23    # "widgetsCount":I
    .restart local v3    # "heightPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_e
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1357
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    .restart local v23    # "widgetsCount":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1359
    const/4 v2, 0x0

    .line 1359
    .local v2, "i":I
    :goto_7
    move/from16 v3, v23

    if-ge v2, v3, :cond_2b

    .line 1360
    .end local v23    # "widgetsCount":I
    .local v3, "widgetsCount":I
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1361
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_f

    .line 1362
    nop

    .line 1359
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .local v24, "widgetsCount":I
    .local v25, "i":I
    .local v30, "heightPadding":I
    .local v31, "widthPadding":I
    :goto_8
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_15

    .line 1364
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v2    # "i":I
    .restart local v3    # "widgetsCount":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1365
    .local v5, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1366
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_29

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v7, :cond_10

    .line 1367
    goto :goto_8

    .line 1369
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1371
    iget v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1372
    .local v7, "width":I
    iget v8, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1374
    .local v8, "height":I
    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    .line 1375
    goto :goto_8

    .line 1378
    :cond_11
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 1379
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 1380
    .local v11, "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_12

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1381
    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    .line 1382
    .local v12, "bothHorizontal":Z
    :goto_9
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 1383
    .local v13, "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v14

    .line 1384
    .local v14, "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1385
    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    .line 1387
    .local v15, "bothVertical":Z
    :goto_a
    if-nez v7, :cond_14

    if-nez v8, :cond_14

    if-eqz v12, :cond_14

    if-eqz v15, :cond_14

    .line 1388
    goto/16 :goto_8

    .line 1391
    :cond_14
    const/16 v16, 0x0

    .line 1392
    .restart local v16    # "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1393
    .restart local v17    # "didWrapMeasureHeight":Z
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v24, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1393
    .end local v3    # "widgetsCount":I
    .restart local v24    # "widgetsCount":I
    if-eq v10, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    .line 1394
    .local v3, "resolveWidth":Z
    :goto_b
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move/from16 v25, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1394
    .end local v2    # "i":I
    .restart local v25    # "i":I
    if-eq v10, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    .line 1399
    .local v2, "resolveHeight":Z
    :goto_c
    if-nez v3, :cond_17

    .line 1400
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1402
    :cond_17
    if-nez v2, :cond_18

    .line 1403
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1405
    :cond_18
    if-nez v7, :cond_1a

    .line 1406
    if-eqz v3, :cond_19

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v10

    if-eqz v10, :cond_19

    if-eqz v12, :cond_19

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1407
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v10

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v10, v10, v23

    float-to-int v7, v10

    .line 1408
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1409
    move/from16 v10, v22

    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1409
    .local v10, "widthPadding":I
    .local v22, "childWidthMeasureSpec":I
    goto :goto_d

    .line 1412
    .end local v10    # "widthPadding":I
    .local v22, "widthPadding":I
    :cond_19
    move/from16 v10, v22

    .line 1412
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    move/from16 v26, v3

    const/4 v3, -0x2

    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1414
    .end local v3    # "resolveWidth":Z
    .local v22, "childWidthMeasureSpec":I
    .local v26, "resolveWidth":Z
    const/16 v16, 0x1

    .line 1415
    const/4 v3, 0x0

    .line 1424
    :goto_d
    move/from16 v26, v3

    goto :goto_e

    .line 1417
    .end local v10    # "widthPadding":I
    .end local v26    # "resolveWidth":Z
    .restart local v3    # "resolveWidth":Z
    .local v22, "widthPadding":I
    :cond_1a
    move/from16 v26, v3

    move/from16 v10, v22

    .line 1417
    .end local v3    # "resolveWidth":Z
    .end local v22    # "widthPadding":I
    .restart local v10    # "widthPadding":I
    .restart local v26    # "resolveWidth":Z
    const/4 v3, -0x1

    if-ne v7, v3, :cond_1b

    .line 1418
    invoke-static {v1, v10, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1418
    .local v22, "childWidthMeasureSpec":I
    goto :goto_e

    .line 1421
    .end local v22    # "childWidthMeasureSpec":I
    :cond_1b
    const/4 v3, -0x2

    if-ne v7, v3, :cond_1c

    .line 1422
    const/4 v3, 0x1

    .line 1424
    .end local v16    # "didWrapMeasureWidth":Z
    .local v3, "didWrapMeasureWidth":Z
    move/from16 v16, v3

    .line 1424
    .end local v3    # "didWrapMeasureWidth":Z
    .restart local v16    # "didWrapMeasureWidth":Z
    :cond_1c
    invoke-static {v1, v10, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v22

    .line 1424
    .restart local v22    # "childWidthMeasureSpec":I
    :goto_e
    move/from16 v3, v22

    .line 1427
    .end local v22    # "childWidthMeasureSpec":I
    .local v3, "childWidthMeasureSpec":I
    if-nez v8, :cond_1e

    .line 1428
    if-eqz v2, :cond_1d

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v22

    if-eqz v22, :cond_1d

    if-eqz v15, :cond_1d

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 1429
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v22

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v23

    sub-float v1, v22, v23

    float-to-int v8, v1

    .line 1430
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1431
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1446
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .local v20, "childHeightMeasureSpec":I
    .local v27, "resolveHeight":Z
    move-object/from16 v28, v9

    goto :goto_f

    .line 1434
    .end local v20    # "childHeightMeasureSpec":I
    .end local v27    # "resolveHeight":Z
    .local v2, "resolveHeight":Z
    .restart local v21    # "heightPadding":I
    :cond_1d
    move/from16 v27, v2

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1434
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    move-object/from16 v28, v9

    const/4 v9, -0x2

    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1436
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v20    # "childHeightMeasureSpec":I
    .local v28, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/16 v17, 0x1

    .line 1437
    const/4 v9, 0x0

    .line 1446
    .end local v27    # "resolveHeight":Z
    .local v9, "resolveHeight":Z
    move/from16 v27, v9

    goto :goto_f

    .line 1439
    .end local v20    # "childHeightMeasureSpec":I
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v2, "resolveHeight":Z
    .local v9, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v21    # "heightPadding":I
    :cond_1e
    move/from16 v27, v2

    move-object/from16 v28, v9

    move/from16 v2, v21

    move/from16 v1, p2

    .line 1439
    .end local v9    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v21    # "heightPadding":I
    .local v2, "heightPadding":I
    .restart local v27    # "resolveHeight":Z
    .restart local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1f

    .line 1440
    invoke-static {v1, v2, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1440
    .restart local v20    # "childHeightMeasureSpec":I
    goto :goto_f

    .line 1443
    .end local v20    # "childHeightMeasureSpec":I
    :cond_1f
    const/4 v9, -0x2

    if-ne v8, v9, :cond_20

    .line 1444
    const/4 v9, 0x1

    .line 1446
    .end local v17    # "didWrapMeasureHeight":Z
    .local v9, "didWrapMeasureHeight":Z
    move/from16 v17, v9

    .line 1446
    .end local v9    # "didWrapMeasureHeight":Z
    .restart local v17    # "didWrapMeasureHeight":Z
    :cond_20
    invoke-static {v1, v2, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 1446
    .restart local v20    # "childHeightMeasureSpec":I
    :goto_f
    move/from16 v9, v20

    .line 1449
    .end local v20    # "childHeightMeasureSpec":I
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v4, v3, v9}, Landroid/view/View;->measure(II)V

    .line 1450
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_21

    .line 1451
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v30, v2

    move/from16 v29, v3

    iget-wide v2, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1451
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .local v29, "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    add-long v9, v2, v18

    .line 1451
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v31    # "widthPadding":I
    .local v32, "childHeightMeasureSpec":I
    iput-wide v9, v1, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_10

    .line 1454
    .end local v29    # "childWidthMeasureSpec":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .end local v32    # "childHeightMeasureSpec":I
    .restart local v2    # "heightPadding":I
    .restart local v3    # "childWidthMeasureSpec":I
    .restart local v9    # "childHeightMeasureSpec":I
    .restart local v10    # "widthPadding":I
    :cond_21
    move/from16 v30, v2

    move/from16 v29, v3

    move/from16 v32, v9

    move/from16 v31, v10

    const-wide/16 v18, 0x1

    .line 1454
    .end local v2    # "heightPadding":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "widthPadding":I
    .restart local v29    # "childWidthMeasureSpec":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "childHeightMeasureSpec":I
    :goto_10
    const/4 v1, -0x2

    if-ne v7, v1, :cond_22

    const/4 v2, 0x1

    goto :goto_11

    :cond_22
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1455
    if-ne v8, v1, :cond_23

    const/4 v2, 0x1

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1456
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1457
    .end local v7    # "width":I
    .local v2, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1459
    .end local v8    # "height":I
    .local v3, "height":I
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1460
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1462
    if-eqz v16, :cond_24

    .line 1463
    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1465
    :cond_24
    if-eqz v17, :cond_25

    .line 1466
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1468
    :cond_25
    if-eqz v26, :cond_26

    .line 1469
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_13

    .line 1471
    :cond_26
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1473
    :goto_13
    if-eqz v27, :cond_27

    .line 1474
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_14

    .line 1476
    :cond_27
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    .line 1479
    :goto_14
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v7, :cond_28

    .line 1480
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v7

    .line 1481
    .local v7, "baseline":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    .line 1482
    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1482
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "baseline":I
    .end local v11    # "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v12    # "bothHorizontal":Z
    .end local v13    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v14    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v15    # "bothVertical":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    .end local v26    # "resolveWidth":Z
    .end local v27    # "resolveHeight":Z
    .end local v28    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v29    # "childWidthMeasureSpec":I
    .end local v32    # "childHeightMeasureSpec":I
    goto :goto_15

    .line 1359
    :cond_28
    const/4 v8, -0x1

    goto :goto_15

    .line 1359
    .end local v24    # "widgetsCount":I
    .end local v25    # "i":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .local v2, "i":I
    .local v3, "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .local v22, "widthPadding":I
    :cond_29
    move/from16 v25, v2

    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    const/4 v1, -0x2

    const/4 v8, -0x1

    const-wide/16 v18, 0x1

    .line 1359
    .end local v2    # "i":I
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v25    # "i":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    :cond_2a
    :goto_15
    add-int/lit8 v2, v25, 0x1

    .line 1359
    .end local v25    # "i":I
    .restart local v2    # "i":I
    move/from16 v23, v24

    move/from16 v21, v30

    move/from16 v22, v31

    move/from16 v1, p1

    const/16 v10, 0x8

    goto/16 :goto_7

    .line 1486
    .end local v2    # "i":I
    .end local v24    # "widgetsCount":I
    .end local v30    # "heightPadding":I
    .end local v31    # "widthPadding":I
    .restart local v3    # "widgetsCount":I
    .restart local v21    # "heightPadding":I
    .restart local v22    # "widthPadding":I
    :cond_2b
    move/from16 v24, v3

    move/from16 v30, v21

    move/from16 v31, v22

    .line 1486
    .end local v3    # "widgetsCount":I
    .end local v21    # "heightPadding":I
    .end local v22    # "widthPadding":I
    .restart local v24    # "widgetsCount":I
    .restart local v30    # "heightPadding":I
    .restart local v31    # "widthPadding":I
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 33

    .line 808
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 810
    .local v2, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    .line 811
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 815
    const/4 v6, 0x0

    .line 815
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 816
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 818
    .local v7, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 819
    .local v8, "IdAsString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v8, v9}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 820
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 821
    .local v9, "slashIndex":I
    if-eq v9, v5, :cond_0

    .line 822
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 824
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v8    # "IdAsString":Ljava/lang/String;
    .end local v9    # "slashIndex":I
    goto :goto_1

    .line 825
    :catch_0
    move-exception v0

    .line 815
    .end local v7    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 832
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .line 832
    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 833
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 834
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 835
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v8, :cond_2

    .line 836
    goto :goto_3

    .line 838
    :cond_2
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 832
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 841
    .end local v6    # "i":I
    :cond_3
    iget v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v6, v5, :cond_5

    .line 842
    const/4 v6, 0x0

    .line 842
    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_5

    .line 843
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 844
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    iget v9, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v8, v9, :cond_4

    instance-of v8, v7, Landroid/support/constraint/Constraints;

    if-eqz v8, :cond_4

    .line 845
    move-object v8, v7

    check-cast v8, Landroid/support/constraint/Constraints;

    invoke-virtual {v8}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v8

    iput-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 842
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 849
    .end local v6    # "i":I
    :cond_5
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v6, :cond_6

    .line 850
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v6, v1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 853
    :cond_6
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 855
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 856
    .local v6, "helperCount":I
    if-lez v6, :cond_7

    .line 857
    const/4 v7, 0x0

    .line 857
    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_7

    .line 858
    iget-object v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintHelper;

    .line 859
    .local v8, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v8, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 857
    .end local v8    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 863
    .end local v7    # "i":I
    :cond_7
    const/4 v7, 0x0

    .line 863
    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v3, :cond_9

    .line 864
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 865
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Landroid/support/constraint/Placeholder;

    if-eqz v9, :cond_8

    .line 866
    move-object v9, v8

    check-cast v9, Landroid/support/constraint/Placeholder;

    invoke-virtual {v9, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 863
    .end local v8    # "child":Landroid/view/View;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 870
    .end local v7    # "i":I
    :cond_9
    const/4 v7, 0x0

    .line 870
    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v3, :cond_36

    .line 871
    invoke-virtual {v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 872
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v15

    .line 873
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v15, :cond_b

    .line 874
    nop

    .line 870
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "count":I
    .local v23, "helperCount":I
    :cond_a
    :goto_8
    move/from16 v17, v3

    move/from16 v23, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_17

    .line 876
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .restart local v3    # "count":I
    .restart local v6    # "helperCount":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 877
    .local v14, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 878
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v9, :cond_c

    .line 879
    iput-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_9

    .line 881
    :cond_c
    if-eqz v2, :cond_d

    .line 886
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    .line 887
    .local v9, "IdAsString":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v4, v9, v10}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    const-string v10, "id/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 889
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    .end local v9    # "IdAsString":Ljava/lang/String;
    goto :goto_9

    .line 890
    :catch_1
    move-exception v0

    .line 895
    :cond_d
    :goto_9
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 896
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v9, :cond_e

    .line 897
    const/16 v9, 0x8

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 899
    :cond_e
    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 900
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 902
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v9, :cond_f

    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_10

    .line 903
    :cond_f
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_10
    iget-boolean v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v10, 0x11

    if-eqz v9, :cond_15

    .line 907
    move-object v9, v15

    check-cast v9, Landroid/support/constraint/solver/widgets/Guideline;

    .line 908
    .local v9, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 909
    .local v11, "resolvedGuideBegin":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 910
    .local v12, "resolvedGuideEnd":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 911
    .local v13, "resolvedGuidePercent":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v10, :cond_11

    .line 912
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 913
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 914
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 916
    :cond_11
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v13, v4

    if-eqz v4, :cond_12

    .line 917
    invoke-virtual {v9, v13}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_a

    .line 918
    :cond_12
    if-eq v11, v5, :cond_13

    .line 919
    invoke-virtual {v9, v11}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_a

    .line 920
    :cond_13
    if-eq v12, v5, :cond_14

    .line 921
    invoke-virtual {v9, v12}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 923
    .end local v9    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v11    # "resolvedGuideBegin":I
    .end local v12    # "resolvedGuideEnd":I
    .end local v13    # "resolvedGuidePercent":F
    :cond_14
    :goto_a
    goto/16 :goto_8

    :cond_15
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v4, v5, :cond_16

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_a

    .line 943
    :cond_16
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 944
    .local v4, "resolvedLeftToLeft":I
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 945
    .local v9, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 946
    .local v11, "resolvedRightToLeft":I
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 947
    .local v12, "resolvedRightToRight":I
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 948
    .local v13, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 949
    .local v5, "resolveGoneRightMargin":I
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 951
    .local v10, "resolvedHorizontalBias":F
    move/from16 v17, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 951
    .end local v3    # "count":I
    .restart local v17    # "count":I
    move/from16 v18, v4

    const/16 v4, 0x11

    if-ge v3, v4, :cond_1d

    .line 954
    .end local v4    # "resolvedLeftToLeft":I
    .local v18, "resolvedLeftToLeft":I
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 955
    .end local v18    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 956
    .end local v9    # "resolvedLeftToRight":I
    .local v4, "resolvedLeftToRight":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 957
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 958
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 959
    .end local v13    # "resolveGoneLeftMargin":I
    .local v9, "resolveGoneLeftMargin":I
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 960
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 962
    const/4 v13, -0x1

    if-ne v3, v13, :cond_18

    if-ne v4, v13, :cond_18

    .line 963
    move/from16 v19, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 963
    .end local v3    # "resolvedLeftToLeft":I
    .local v19, "resolvedLeftToLeft":I
    if-eq v3, v13, :cond_17

    .line 964
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 969
    .end local v19    # "resolvedLeftToLeft":I
    .restart local v3    # "resolvedLeftToLeft":I
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    goto :goto_c

    .line 965
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_17
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v3, v13, :cond_19

    .line 966
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 966
    .end local v4    # "resolvedLeftToRight":I
    .local v3, "resolvedLeftToRight":I
    goto :goto_b

    .line 969
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToLeft":I
    .restart local v4    # "resolvedLeftToRight":I
    :cond_18
    move/from16 v19, v3

    .line 969
    .end local v3    # "resolvedLeftToLeft":I
    .restart local v19    # "resolvedLeftToLeft":I
    :cond_19
    move v3, v4

    .line 969
    .end local v19    # "resolvedLeftToLeft":I
    .local v3, "resolvedLeftToRight":I
    .local v4, "resolvedLeftToLeft":I
    :goto_b
    move/from16 v4, v19

    :goto_c
    if-ne v11, v13, :cond_1b

    if-ne v12, v13, :cond_1b

    .line 970
    move/from16 v20, v3

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 970
    .end local v3    # "resolvedLeftToRight":I
    .local v20, "resolvedLeftToRight":I
    if-eq v3, v13, :cond_1a

    .line 971
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_d

    .line 972
    :cond_1a
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v3, v13, :cond_1c

    .line 973
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_d

    .line 979
    .end local v20    # "resolvedLeftToRight":I
    .restart local v3    # "resolvedLeftToRight":I
    :cond_1b
    move/from16 v20, v3

    .line 979
    .end local v3    # "resolvedLeftToRight":I
    .end local v9    # "resolveGoneLeftMargin":I
    .end local v10    # "resolvedHorizontalBias":F
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .local v16, "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :cond_1c
    :goto_d
    move/from16 v18, v5

    move/from16 v16, v9

    move v13, v11

    move/from16 v5, v20

    const/4 v3, -0x1

    goto :goto_e

    .line 979
    .end local v4    # "resolvedLeftToLeft":I
    .end local v16    # "resolveGoneLeftMargin":I
    .local v5, "resolveGoneRightMargin":I
    .local v9, "resolvedLeftToRight":I
    .restart local v10    # "resolvedHorizontalBias":F
    .local v11, "resolvedRightToLeft":I
    .local v13, "resolveGoneLeftMargin":I
    .local v18, "resolvedLeftToLeft":I
    :cond_1d
    const/4 v3, -0x1

    move/from16 v16, v13

    move/from16 v4, v18

    move/from16 v18, v5

    move v5, v9

    move v13, v11

    .line 979
    .end local v9    # "resolvedLeftToRight":I
    .end local v10    # "resolvedHorizontalBias":F
    .restart local v4    # "resolvedLeftToLeft":I
    .local v5, "resolvedLeftToRight":I
    .local v11, "resolvedHorizontalBias":F
    .local v13, "resolvedRightToLeft":I
    .restart local v16    # "resolveGoneLeftMargin":I
    .local v18, "resolveGoneRightMargin":I
    :goto_e
    move v11, v10

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v9, v3, :cond_1f

    .line 980
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 981
    .local v3, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1e

    .line 982
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v15, v3, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 984
    .end local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1e
    nop

    .line 1080
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    goto/16 :goto_14

    .line 986
    :cond_1f
    const/4 v3, -0x1

    if-eq v4, v3, :cond_21

    .line 987
    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 988
    .restart local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_20

    .line 989
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v19, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v9

    move-object v9, v15

    move/from16 v21, v4

    move v4, v11

    move-object v11, v3

    .line 989
    .end local v11    # "resolvedHorizontalBias":F
    .local v4, "resolvedHorizontalBias":F
    .local v21, "resolvedLeftToLeft":I
    move-object/from16 v22, v3

    move v3, v12

    move-object/from16 v12, v19

    .line 989
    .end local v12    # "resolvedRightToRight":I
    .local v3, "resolvedRightToRight":I
    .local v22, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v23, v6

    move v6, v13

    move/from16 v13, v20

    .line 989
    .end local v13    # "resolvedRightToLeft":I
    .local v6, "resolvedRightToLeft":I
    .restart local v23    # "helperCount":I
    move-object/from16 v24, v8

    move-object v8, v14

    move/from16 v14, v16

    .line 989
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v24, "child":Landroid/view/View;
    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 989
    .end local v22    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_f

    .line 993
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_20
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 993
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    :goto_f
    goto :goto_10

    .line 993
    .end local v3    # "resolvedRightToRight":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v23    # "helperCount":I
    .end local v24    # "child":Landroid/view/View;
    .local v4, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedHorizontalBias":F
    .restart local v12    # "resolvedRightToRight":I
    .restart local v13    # "resolvedRightToLeft":I
    .restart local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_21
    move/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v8

    move v4, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .line 993
    .end local v11    # "resolvedHorizontalBias":F
    .end local v12    # "resolvedRightToRight":I
    .end local v13    # "resolvedRightToLeft":I
    .end local v14    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v3    # "resolvedRightToRight":I
    .local v4, "resolvedHorizontalBias":F
    .local v6, "resolvedRightToLeft":I
    .local v8, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v21    # "resolvedLeftToLeft":I
    .restart local v23    # "helperCount":I
    .restart local v24    # "child":Landroid/view/View;
    const/4 v9, -0x1

    if-eq v5, v9, :cond_22

    .line 994
    invoke-direct {v1, v5}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 995
    .local v19, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_22

    .line 996
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1003
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_22
    :goto_10
    const/4 v9, -0x1

    if-eq v6, v9, :cond_24

    .line 1004
    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1005
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_23

    .line 1006
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1010
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_23
    goto :goto_11

    :cond_24
    const/4 v9, -0x1

    if-eq v3, v9, :cond_25

    .line 1011
    invoke-direct {v1, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1012
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_25

    .line 1013
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1020
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_25
    :goto_11
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_27

    .line 1021
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1022
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_26

    .line 1023
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1027
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    goto :goto_12

    :cond_27
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_28

    .line 1028
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1029
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_28

    .line 1030
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1037
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    :goto_12
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2a

    .line 1038
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1039
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_29

    .line 1040
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1044
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    goto :goto_13

    :cond_2a
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2b

    .line 1045
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v1, v9}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 1046
    .restart local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v19, :cond_2b

    .line 1047
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1054
    .end local v19    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    :goto_13
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2c

    .line 1055
    iget-object v9, v1, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1056
    .local v9, "view":Landroid/view/View;
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v1, v10}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 1057
    .local v10, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_2c

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v11, :cond_2c

    .line 1058
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1059
    .local v11, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1060
    iput-boolean v12, v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1061
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    .line 1062
    .local v12, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1063
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1064
    .local v13, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v27, 0x0

    const/16 v28, -0x1

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v25 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1067
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1068
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1072
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v12    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2c
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    const/high16 v11, 0x3f000000    # 0.5f

    if-ltz v10, :cond_2d

    cmpl-float v10, v4, v11

    if-eqz v10, :cond_2d

    .line 1073
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1075
    :cond_2d
    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_2e

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_2e

    .line 1076
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1080
    :cond_2e
    :goto_14
    if-eqz v2, :cond_30

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2f

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v9, v10, :cond_30

    .line 1082
    :cond_2f
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v15, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1086
    :cond_30
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_32

    .line 1087
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_31

    .line 1088
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1089
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1090
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_15

    .line 1092
    :cond_31
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_15

    .line 1096
    :cond_32
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1097
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1099
    :goto_15
    iget-boolean v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v9, :cond_34

    .line 1100
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_33

    .line 1101
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1102
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1103
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1113
    const/4 v9, 0x0

    goto :goto_16

    .line 1105
    :cond_33
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1106
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_16

    .line 1109
    :cond_34
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1110
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1113
    :goto_16
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v11, :cond_35

    .line 1114
    iget-object v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1116
    :cond_35
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1117
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1118
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1119
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1120
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1123
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v12, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v14, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 870
    .end local v3    # "resolvedRightToRight":I
    .end local v4    # "resolvedHorizontalBias":F
    .end local v5    # "resolvedLeftToRight":I
    .end local v6    # "resolvedRightToLeft":I
    .end local v8    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v18    # "resolveGoneRightMargin":I
    .end local v21    # "resolvedLeftToLeft":I
    .end local v24    # "child":Landroid/view/View;
    :goto_17
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v6, v23

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto/16 :goto_7

    .line 1128
    .end local v7    # "i":I
    .end local v17    # "count":I
    .end local v23    # "helperCount":I
    .local v3, "count":I
    .local v6, "helperCount":I
    :cond_36
    move/from16 v17, v3

    move/from16 v23, v6

    .line 1128
    .end local v3    # "count":I
    .end local v6    # "helperCount":I
    .restart local v17    # "count":I
    .restart local v23    # "helperCount":I
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v0, p0

    .line 1798
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1799
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1800
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1801
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1803
    .local v4, "heightSize":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1804
    .local v5, "heightPadding":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1806
    .local v6, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1807
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1808
    .local v8, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v9, 0x0

    .line 1809
    .local v9, "desiredWidth":I
    const/4 v10, 0x0

    .line 1811
    .local v10, "desiredHeight":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1812
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v1, v13, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v12, :cond_0

    goto :goto_0

    .line 1823
    :cond_0
    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v9, v14, v6

    goto :goto_0

    .line 1819
    :cond_1
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1821
    goto :goto_0

    .line 1814
    :cond_2
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1815
    move v9, v2

    .line 1817
    nop

    .line 1826
    :goto_0
    if-eq v3, v13, :cond_5

    if-eqz v3, :cond_4

    if-eq v3, v12, :cond_3

    goto :goto_1

    .line 1837
    :cond_3
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v10, v12, v5

    goto :goto_1

    .line 1833
    :cond_4
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1835
    goto :goto_1

    .line 1828
    :cond_5
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1829
    move v10, v4

    .line 1831
    nop

    .line 1841
    :goto_1
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1842
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1843
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1844
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1845
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1846
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1847
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1848
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1849
    return-void
.end method

.method private updateHierarchy()V
    .locals 5

    .line 791
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 793
    .local v0, "count":I
    const/4 v1, 0x0

    .line 794
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .line 794
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 795
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 796
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 797
    const/4 v1, 0x1

    .line 798
    goto :goto_1

    .line 794
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 801
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 802
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 803
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 805
    :cond_2
    return-void
.end method

.method private updatePostMeasures()V
    .locals 5

    .line 1258
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1259
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1259
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1260
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1261
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_0

    .line 1262
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/Placeholder;

    invoke-virtual {v4, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1259
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1267
    .local v2, "helperCount":I
    if-lez v2, :cond_2

    .line 1268
    nop

    .line 1268
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1269
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 1270
    .local v3, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v3, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1268
    .end local v3    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1273
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 636
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1996
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2023
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 2026
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2027
    .local v1, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 2028
    .local v2, "ch":F
    const/high16 v3, 0x44870000    # 1080.0f

    .line 2029
    .local v3, "ow":F
    const/high16 v4, 0x44f00000    # 1920.0f

    .line 2030
    .local v4, "oh":F
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2030
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 2031
    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2032
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 2033
    nop

    .line 2030
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_1

    .line 2035
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 2036
    .local v9, "tag":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 2037
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 2038
    .local v10, "coordinates":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2039
    .local v11, "split":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    .line 2040
    aget-object v12, v11, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2041
    .local v12, "x":I
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2042
    .local v13, "y":I
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2043
    .local v14, "w":I
    const/4 v15, 0x3

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2044
    .local v15, "h":I
    int-to-float v5, v12

    div-float/2addr v5, v3

    mul-float v5, v5, v1

    float-to-int v5, v5

    .line 2045
    .end local v12    # "x":I
    .local v5, "x":I
    int-to-float v12, v13

    div-float/2addr v12, v4

    mul-float v12, v12, v2

    float-to-int v12, v12

    .line 2046
    .end local v13    # "y":I
    .local v12, "y":I
    int-to-float v13, v14

    div-float/2addr v13, v3

    mul-float v13, v13, v1

    float-to-int v13, v13

    .line 2047
    .end local v14    # "w":I
    .local v13, "w":I
    int-to-float v14, v15

    div-float/2addr v14, v4

    mul-float v14, v14, v2

    float-to-int v14, v14

    .line 2048
    .end local v15    # "h":I
    .local v14, "h":I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 2049
    .local v15, "paint":Landroid/graphics/Paint;
    move/from16 v22, v0

    const/high16 v0, -0x10000

    .line 2049
    .end local v0    # "count":I
    .local v22, "count":I
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2050
    int-to-float v0, v5

    move/from16 v23, v1

    int-to-float v1, v12

    .line 2050
    .end local v1    # "cw":F
    .local v23, "cw":F
    move/from16 v24, v2

    add-int v2, v5, v13

    .line 2050
    .end local v2    # "ch":F
    .local v24, "ch":F
    int-to-float v2, v2

    move/from16 v25, v3

    int-to-float v3, v12

    .line 2050
    .end local v3    # "ow":F
    .local v25, "ow":F
    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2051
    add-int v0, v5, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2052
    add-int v0, v5, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2053
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2054
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2055
    int-to-float v0, v5

    int-to-float v1, v12

    add-int v2, v5, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2056
    int-to-float v0, v5

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v5, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2056
    .end local v5    # "x":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "tag":Ljava/lang/Object;
    .end local v10    # "coordinates":Ljava/lang/String;
    .end local v11    # "split":[Ljava/lang/String;
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    goto :goto_1

    .line 2030
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_1
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 2030
    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2061
    .end local v4    # "oh":F
    .end local v6    # "i":I
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .line 1496
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1497
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1498
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1980
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 482
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1972
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1988
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 560
    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 566
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 787
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 777
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 740
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 730
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1965
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 2015
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1154
    if-ne p1, p0, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1157
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 1875
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1876
    .local v1, "widgetsCount":I
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1877
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1877
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1878
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1879
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1880
    .local v6, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1882
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v8, :cond_0

    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v8, :cond_0

    if-nez v2, :cond_0

    .line 1885
    goto :goto_1

    .line 1887
    :cond_0
    iget-boolean v8, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v8, :cond_1

    .line 1888
    goto :goto_1

    .line 1890
    :cond_1
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v8

    .line 1891
    .local v8, "l":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v9

    .line 1892
    .local v9, "t":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1893
    .local v10, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    add-int/2addr v11, v9

    .line 1915
    .local v11, "b":I
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1916
    instance-of v12, v5, Landroid/support/constraint/Placeholder;

    if-eqz v12, :cond_2

    .line 1917
    move-object v12, v5

    check-cast v12, Landroid/support/constraint/Placeholder;

    .line 1918
    .local v12, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v12}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v13

    .line 1919
    .local v13, "content":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1920
    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    invoke-virtual {v13, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1877
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "l":I
    .end local v9    # "t":I
    .end local v10    # "r":I
    .end local v11    # "b":I
    .end local v12    # "holder":Landroid/support/constraint/Placeholder;
    .end local v13    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1925
    .end local v4    # "i":I
    :cond_3
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1926
    .local v4, "helperCount":I
    if-lez v4, :cond_4

    .line 1927
    nop

    .line 1927
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 1928
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintHelper;

    .line 1929
    .local v5, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1927
    .end local v5    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1932
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 47
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1505
    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1506
    .local v3, "time":J
    const/4 v5, 0x0

    .line 1507
    .local v5, "REMEASURES_A":I
    const/4 v6, 0x0

    .line 1513
    .local v6, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1514
    .local v7, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1515
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1516
    .local v9, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1542
    .local v10, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    .line 1543
    .local v11, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v12

    .line 1545
    .local v12, "paddingTop":I
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1546
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1547
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1548
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1550
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v15, 0x1

    const/16 v14, 0x11

    if-lt v13, v14, :cond_1

    .line 1551
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v14

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1554
    :cond_1
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1555
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    .line 1556
    .local v13, "startingWidth":I
    iget-object v14, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    .line 1558
    .local v14, "startingHeight":I
    const/16 v17, 0x0

    .line 1559
    .local v17, "runAnalyzer":Z
    iget-boolean v15, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v15, :cond_2

    .line 1560
    const/4 v15, 0x0

    iput-boolean v15, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1561
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1562
    const/16 v17, 0x1

    .line 1565
    :cond_2
    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move-wide/from16 v19, v3

    const/16 v3, 0x8

    .line 1565
    .end local v3    # "time":J
    .local v19, "time":J
    and-int/lit8 v4, v15, 0x8

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1567
    .local v4, "optimiseDimensions":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 1568
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1569
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15, v13, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1570
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_2

    .line 1572
    :cond_4
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1574
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v15

    if-lez v15, :cond_5

    if-eqz v17, :cond_5

    .line 1583
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v15}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 1585
    :cond_5
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v15, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    if-eqz v15, :cond_9

    .line 1586
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v15, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    const/high16 v3, -0x80000000

    if-eqz v15, :cond_7

    if-ne v7, v3, :cond_7

    .line 1587
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v15, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-ge v15, v8, :cond_6

    .line 1588
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1590
    :cond_6
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1591
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1593
    :cond_7
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v3, :cond_9

    const/high16 v3, -0x80000000

    if-ne v9, v3, :cond_9

    .line 1594
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-ge v3, v10, :cond_8

    .line 1595
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v15, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1597
    :cond_8
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1598
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1602
    :cond_9
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/16 v15, 0x20

    and-int/2addr v3, v15

    move/from16 v21, v5

    .line 1602
    .end local v5    # "REMEASURES_A":I
    .local v21, "REMEASURES_A":I
    if-ne v3, v15, :cond_e

    .line 1603
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    .line 1604
    .local v3, "width":I
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    .line 1605
    .local v15, "height":I
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-eq v5, v3, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v7, v5, :cond_a

    .line 1606
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move/from16 v22, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_3

    .line 1608
    :cond_a
    move/from16 v22, v6

    .line 1608
    .end local v6    # "REMEASURES_B":I
    .local v22, "REMEASURES_B":I
    :goto_3
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-eq v5, v15, :cond_b

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_b

    .line 1609
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v5, v6, v15}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1611
    :cond_b
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    if-eqz v5, :cond_c

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-le v5, v8, :cond_c

    .line 1612
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_4

    .line 1614
    :cond_c
    const/4 v6, 0x0

    :goto_4
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-le v5, v10, :cond_d

    .line 1615
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v5, v6, v10}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1615
    .end local v3    # "width":I
    .end local v15    # "height":I
    goto :goto_5

    .line 1620
    :cond_d
    const/4 v6, 0x1

    goto :goto_5

    .line 1620
    .end local v22    # "REMEASURES_B":I
    .restart local v6    # "REMEASURES_B":I
    :cond_e
    move/from16 v22, v6

    const/4 v6, 0x1

    .line 1620
    .end local v6    # "REMEASURES_B":I
    .restart local v22    # "REMEASURES_B":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 1621
    const-string v3, "First pass"

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1623
    :cond_f
    const/4 v3, 0x0

    .line 1626
    .local v3, "childState":I
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1628
    .local v5, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v15, v12

    .line 1629
    .local v15, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v16

    add-int v6, v11, v16

    .line 1635
    .local v6, "widthPadding":I
    move/from16 v25, v3

    .line 1635
    .end local v3    # "childState":I
    .local v25, "childState":I
    if-lez v5, :cond_2e

    .line 1636
    const/16 v16, 0x0

    .line 1637
    .local v16, "needSolverPass":Z
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    move/from16 v26, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1637
    .end local v7    # "widthMode":I
    .local v26, "widthMode":I
    if-ne v3, v7, :cond_10

    const/4 v3, 0x1

    goto :goto_6

    :cond_10
    const/4 v3, 0x0

    .line 1639
    .local v3, "containerWrapWidth":Z
    :goto_6
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    move/from16 v27, v8

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1639
    .end local v8    # "widthSize":I
    .local v27, "widthSize":I
    if-ne v7, v8, :cond_11

    const/16 v24, 0x1

    goto :goto_7

    :cond_11
    const/16 v24, 0x0

    :goto_7
    move/from16 v7, v24

    .line 1641
    .local v7, "containerWrapHeight":Z
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    move/from16 v28, v9

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 1641
    .end local v9    # "heightMode":I
    .local v28, "heightMode":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1642
    .local v8, "minWidth":I
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    move/from16 v29, v8

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 1642
    .end local v8    # "minWidth":I
    .local v29, "minWidth":I
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1643
    .local v8, "minHeight":I
    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v11, v25

    move/from16 v9, v29

    move v10, v8

    const/4 v8, 0x0

    .line 1643
    .end local v25    # "childState":I
    .end local v29    # "minWidth":I
    .local v8, "i":I
    .local v9, "minWidth":I
    .local v10, "minHeight":I
    .local v11, "childState":I
    .local v30, "heightSize":I
    .local v31, "paddingLeft":I
    :goto_8
    const-wide/16 v24, 0x1

    if-ge v8, v5, :cond_22

    .line 1644
    move/from16 v32, v12

    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 1644
    .end local v12    # "paddingTop":I
    .local v32, "paddingTop":I
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1645
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v18

    move/from16 v33, v5

    move-object/from16 v5, v18

    check-cast v5, Landroid/view/View;

    .line 1646
    .local v5, "child":Landroid/view/View;
    .local v33, "sizeDependentWidgetsCount":I
    if-nez v5, :cond_12

    .line 1647
    nop

    .line 1643
    move/from16 v36, v8

    move/from16 v35, v13

    move/from16 v34, v14

    .line 1643
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "i":I
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "startingWidth":I
    .end local v14    # "startingHeight":I
    .end local v15    # "heightPadding":I
    .local v34, "startingHeight":I
    .local v35, "startingWidth":I
    .local v36, "i":I
    .local v40, "heightPadding":I
    :goto_9
    move/from16 v40, v15

    goto/16 :goto_d

    .line 1649
    .end local v34    # "startingHeight":I
    .end local v35    # "startingWidth":I
    .end local v36    # "i":I
    .end local v40    # "heightPadding":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "startingWidth":I
    .restart local v14    # "startingHeight":I
    .restart local v15    # "heightPadding":I
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v34, v14

    move-object/from16 v14, v18

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1650
    .local v14, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v34    # "startingHeight":I
    move/from16 v35, v13

    iget-boolean v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1650
    .end local v13    # "startingWidth":I
    .restart local v35    # "startingWidth":I
    if-nez v13, :cond_20

    iget-boolean v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v13, :cond_13

    .line 1651
    nop

    .line 1643
    move/from16 v36, v8

    goto :goto_9

    .line 1653
    :cond_13
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v36, v8

    const/16 v8, 0x8

    if-ne v13, v8, :cond_14

    .line 1654
    .end local v8    # "i":I
    .restart local v36    # "i":I
    goto :goto_9

    .line 1657
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1658
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1659
    goto :goto_9

    .line 1661
    :cond_15
    const/4 v8, 0x0

    .line 1662
    .local v8, "widthSpec":I
    const/4 v13, 0x0

    .line 1664
    .local v13, "heightSpec":I
    move/from16 v37, v8

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1664
    .end local v8    # "widthSpec":I
    .local v37, "widthSpec":I
    move/from16 v38, v13

    const/4 v13, -0x2

    .line 1664
    .end local v13    # "heightSpec":I
    .local v38, "heightSpec":I
    if-ne v8, v13, :cond_16

    iget-boolean v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v8, :cond_16

    .line 1665
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v6, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v8

    goto :goto_a

    .line 1667
    :cond_16
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1669
    .end local v37    # "widthSpec":I
    .restart local v8    # "widthSpec":I
    :goto_a
    iget v13, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v13, v1, :cond_17

    iget-boolean v1, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_17

    .line 1670
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v15, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_b

    .line 1672
    :cond_17
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1676
    .end local v38    # "heightSpec":I
    .local v1, "heightSpec":I
    :goto_b
    invoke-virtual {v5, v8, v1}, Landroid/view/View;->measure(II)V

    .line 1677
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v13, :cond_18

    .line 1678
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v39, v1

    iget-wide v1, v13, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1678
    .end local v1    # "heightSpec":I
    .local v39, "heightSpec":I
    move-object/from16 v41, v14

    move/from16 v40, v15

    add-long v14, v1, v24

    .line 1678
    .end local v14    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "heightPadding":I
    .restart local v40    # "heightPadding":I
    .local v41, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-wide v14, v13, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_c

    .line 1681
    .end local v39    # "heightSpec":I
    .end local v40    # "heightPadding":I
    .end local v41    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v1    # "heightSpec":I
    .restart local v14    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .restart local v15    # "heightPadding":I
    :cond_18
    move/from16 v39, v1

    move-object/from16 v41, v14

    move/from16 v40, v15

    .line 1681
    .end local v1    # "heightSpec":I
    .end local v14    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "heightPadding":I
    .restart local v39    # "heightSpec":I
    .restart local v40    # "heightPadding":I
    .restart local v41    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :goto_c
    add-int/lit8 v21, v21, 0x1

    .line 1683
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1684
    .local v1, "measuredWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1686
    .local v2, "measuredHeight":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    if-eq v1, v13, :cond_1b

    .line 1687
    invoke-virtual {v12, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1688
    if-eqz v4, :cond_19

    .line 1689
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1691
    :cond_19
    if-eqz v3, :cond_1a

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v13

    if-le v13, v9, :cond_1a

    .line 1692
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v13

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1693
    invoke-virtual {v12, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v13, v14

    .line 1694
    .local v13, "w":I
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1696
    .end local v13    # "w":I
    :cond_1a
    const/16 v16, 0x1

    .line 1698
    :cond_1b
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    if-eq v2, v13, :cond_1e

    .line 1699
    invoke-virtual {v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1700
    if-eqz v4, :cond_1c

    .line 1701
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1703
    :cond_1c
    if-eqz v7, :cond_1d

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v13

    if-le v13, v10, :cond_1d

    .line 1704
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v13

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1705
    invoke-virtual {v12, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v13, v14

    .line 1706
    .local v13, "h":I
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1708
    .end local v13    # "h":I
    :cond_1d
    const/16 v16, 0x1

    .line 1710
    :cond_1e
    move-object/from16 v13, v41

    iget-boolean v14, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1710
    .end local v41    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .local v13, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    if-eqz v14, :cond_1f

    .line 1711
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1712
    .local v14, "baseline":I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1f

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    if-eq v14, v15, :cond_1f

    .line 1713
    invoke-virtual {v12, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1714
    const/16 v16, 0x1

    .line 1718
    .end local v14    # "baseline":I
    :cond_1f
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xb

    if-lt v14, v15, :cond_21

    .line 1719
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v11, v14}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v11

    .line 1719
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredHeight":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "widthSpec":I
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v39    # "heightSpec":I
    goto :goto_d

    .line 1643
    .end local v36    # "i":I
    .end local v40    # "heightPadding":I
    .local v8, "i":I
    .restart local v15    # "heightPadding":I
    :cond_20
    move/from16 v36, v8

    move/from16 v40, v15

    .line 1643
    .end local v8    # "i":I
    .end local v15    # "heightPadding":I
    .restart local v36    # "i":I
    .restart local v40    # "heightPadding":I
    :cond_21
    :goto_d
    add-int/lit8 v8, v36, 0x1

    .line 1643
    .end local v36    # "i":I
    .restart local v8    # "i":I
    move/from16 v12, v32

    move/from16 v5, v33

    move/from16 v14, v34

    move/from16 v13, v35

    move/from16 v15, v40

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_8

    .line 1722
    .end local v8    # "i":I
    .end local v32    # "paddingTop":I
    .end local v33    # "sizeDependentWidgetsCount":I
    .end local v34    # "startingHeight":I
    .end local v35    # "startingWidth":I
    .end local v40    # "heightPadding":I
    .local v5, "sizeDependentWidgetsCount":I
    .local v12, "paddingTop":I
    .local v13, "startingWidth":I
    .local v14, "startingHeight":I
    .restart local v15    # "heightPadding":I
    :cond_22
    move/from16 v33, v5

    move/from16 v32, v12

    move/from16 v35, v13

    move/from16 v34, v14

    move/from16 v40, v15

    .line 1722
    .end local v5    # "sizeDependentWidgetsCount":I
    .end local v12    # "paddingTop":I
    .end local v13    # "startingWidth":I
    .end local v14    # "startingHeight":I
    .end local v15    # "heightPadding":I
    .restart local v32    # "paddingTop":I
    .restart local v33    # "sizeDependentWidgetsCount":I
    .restart local v34    # "startingHeight":I
    .restart local v35    # "startingWidth":I
    .restart local v40    # "heightPadding":I
    if-eqz v16, :cond_26

    .line 1723
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v2, v35

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1724
    .end local v35    # "startingWidth":I
    .local v2, "startingWidth":I
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v34

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1725
    .end local v34    # "startingHeight":I
    .local v5, "startingHeight":I
    if-eqz v4, :cond_23

    .line 1726
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1728
    :cond_23
    const-string v1, "2nd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1729
    const/4 v1, 0x0

    .line 1730
    .end local v16    # "needSolverPass":Z
    .local v1, "needSolverPass":Z
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ge v8, v9, :cond_24

    .line 1731
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1732
    const/4 v1, 0x1

    .line 1734
    :cond_24
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-ge v8, v10, :cond_25

    .line 1735
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1736
    const/4 v1, 0x1

    .line 1738
    .end local v1    # "needSolverPass":Z
    .restart local v16    # "needSolverPass":Z
    :cond_25
    move/from16 v16, v1

    if-eqz v16, :cond_27

    .line 1739
    const-string v1, "3rd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    goto :goto_e

    .line 1742
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .restart local v34    # "startingHeight":I
    .restart local v35    # "startingWidth":I
    :cond_26
    move/from16 v5, v34

    move/from16 v2, v35

    .line 1742
    .end local v34    # "startingHeight":I
    .end local v35    # "startingWidth":I
    .restart local v2    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    :cond_27
    :goto_e
    const/16 v23, 0x0

    .line 1742
    .local v23, "i":I
    :goto_f
    move/from16 v1, v23

    .line 1742
    .end local v23    # "i":I
    .local v1, "i":I
    move/from16 v8, v33

    if-ge v1, v8, :cond_2d

    .line 1743
    .end local v33    # "sizeDependentWidgetsCount":I
    .local v8, "sizeDependentWidgetsCount":I
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1744
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 1745
    .local v13, "child":Landroid/view/View;
    if-nez v13, :cond_29

    .line 1746
    nop

    .line 1742
    .end local v2    # "startingWidth":I
    .end local v3    # "containerWrapWidth":Z
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "startingHeight":I
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "child":Landroid/view/View;
    .local v42, "startingWidth":I
    .local v43, "containerWrapWidth":Z
    .local v45, "optimiseDimensions":Z
    .local v46, "startingHeight":I
    :cond_28
    move/from16 v42, v2

    move/from16 v43, v3

    move/from16 v45, v4

    move/from16 v46, v5

    goto :goto_11

    .line 1748
    .end local v42    # "startingWidth":I
    .end local v43    # "containerWrapWidth":Z
    .end local v45    # "optimiseDimensions":Z
    .end local v46    # "startingHeight":I
    .restart local v2    # "startingWidth":I
    .restart local v3    # "containerWrapWidth":Z
    .restart local v4    # "optimiseDimensions":Z
    .restart local v5    # "startingHeight":I
    .restart local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "child":Landroid/view/View;
    :cond_29
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ne v14, v15, :cond_2a

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-eq v14, v15, :cond_28

    .line 1749
    :cond_2a
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_2c

    .line 1750
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1751
    .local v14, "widthSpec":I
    move/from16 v42, v2

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    .line 1751
    .end local v2    # "startingWidth":I
    .restart local v42    # "startingWidth":I
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1752
    .local v2, "heightSpec":I
    invoke-virtual {v13, v14, v2}, Landroid/view/View;->measure(II)V

    .line 1753
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v15, :cond_2b

    .line 1754
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v44, v2

    move/from16 v43, v3

    iget-wide v2, v15, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1754
    .end local v2    # "heightSpec":I
    .end local v3    # "containerWrapWidth":Z
    .restart local v43    # "containerWrapWidth":Z
    .local v44, "heightSpec":I
    move/from16 v45, v4

    move/from16 v46, v5

    add-long v4, v2, v24

    .line 1754
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "startingHeight":I
    .restart local v45    # "optimiseDimensions":Z
    .restart local v46    # "startingHeight":I
    iput-wide v4, v15, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_10

    .line 1757
    .end local v43    # "containerWrapWidth":Z
    .end local v44    # "heightSpec":I
    .end local v45    # "optimiseDimensions":Z
    .end local v46    # "startingHeight":I
    .restart local v2    # "heightSpec":I
    .restart local v3    # "containerWrapWidth":Z
    .restart local v4    # "optimiseDimensions":Z
    .restart local v5    # "startingHeight":I
    :cond_2b
    move/from16 v44, v2

    move/from16 v43, v3

    move/from16 v45, v4

    move/from16 v46, v5

    .line 1757
    .end local v2    # "heightSpec":I
    .end local v3    # "containerWrapWidth":Z
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "startingHeight":I
    .restart local v43    # "containerWrapWidth":Z
    .restart local v44    # "heightSpec":I
    .restart local v45    # "optimiseDimensions":Z
    .restart local v46    # "startingHeight":I
    :goto_10
    add-int/lit8 v22, v22, 0x1

    .line 1757
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "widthSpec":I
    .end local v44    # "heightSpec":I
    goto :goto_11

    .line 1742
    .end local v42    # "startingWidth":I
    .end local v43    # "containerWrapWidth":Z
    .end local v45    # "optimiseDimensions":Z
    .end local v46    # "startingHeight":I
    .local v2, "startingWidth":I
    .restart local v3    # "containerWrapWidth":Z
    .restart local v4    # "optimiseDimensions":Z
    .restart local v5    # "startingHeight":I
    :cond_2c
    move/from16 v42, v2

    move/from16 v43, v3

    move/from16 v45, v4

    move/from16 v46, v5

    .line 1742
    .end local v2    # "startingWidth":I
    .end local v3    # "containerWrapWidth":Z
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    .restart local v43    # "containerWrapWidth":Z
    .restart local v45    # "optimiseDimensions":Z
    .restart local v46    # "startingHeight":I
    :goto_11
    add-int/lit8 v23, v1, 0x1

    .line 1742
    .end local v1    # "i":I
    .restart local v23    # "i":I
    move/from16 v33, v8

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v45

    move/from16 v5, v46

    goto/16 :goto_f

    .line 1762
    .end local v7    # "containerWrapHeight":Z
    .end local v9    # "minWidth":I
    .end local v10    # "minHeight":I
    .end local v16    # "needSolverPass":Z
    .end local v23    # "i":I
    .end local v42    # "startingWidth":I
    .end local v43    # "containerWrapWidth":Z
    .end local v45    # "optimiseDimensions":Z
    .end local v46    # "startingHeight":I
    .restart local v2    # "startingWidth":I
    .restart local v4    # "optimiseDimensions":Z
    .restart local v5    # "startingHeight":I
    :cond_2d
    move/from16 v42, v2

    move/from16 v45, v4

    move/from16 v46, v5

    .line 1762
    .end local v2    # "startingWidth":I
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "startingHeight":I
    .restart local v42    # "startingWidth":I
    .restart local v45    # "optimiseDimensions":Z
    .restart local v46    # "startingHeight":I
    goto :goto_12

    .line 1762
    .end local v26    # "widthMode":I
    .end local v27    # "widthSize":I
    .end local v28    # "heightMode":I
    .end local v30    # "heightSize":I
    .end local v31    # "paddingLeft":I
    .end local v32    # "paddingTop":I
    .end local v40    # "heightPadding":I
    .end local v42    # "startingWidth":I
    .end local v45    # "optimiseDimensions":Z
    .end local v46    # "startingHeight":I
    .restart local v4    # "optimiseDimensions":Z
    .local v5, "sizeDependentWidgetsCount":I
    .local v7, "widthMode":I
    .local v8, "widthSize":I
    .local v9, "heightMode":I
    .local v10, "heightSize":I
    .local v11, "paddingLeft":I
    .local v12, "paddingTop":I
    .local v13, "startingWidth":I
    .local v14, "startingHeight":I
    .restart local v15    # "heightPadding":I
    .restart local v25    # "childState":I
    :cond_2e
    move/from16 v45, v4

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v42, v13

    move/from16 v46, v14

    move/from16 v40, v15

    move v8, v5

    move/from16 v11, v25

    .line 1762
    .end local v4    # "optimiseDimensions":Z
    .end local v5    # "sizeDependentWidgetsCount":I
    .end local v7    # "widthMode":I
    .end local v9    # "heightMode":I
    .end local v10    # "heightSize":I
    .end local v12    # "paddingTop":I
    .end local v13    # "startingWidth":I
    .end local v14    # "startingHeight":I
    .end local v15    # "heightPadding":I
    .end local v25    # "childState":I
    .local v8, "sizeDependentWidgetsCount":I
    .local v11, "childState":I
    .restart local v26    # "widthMode":I
    .restart local v27    # "widthSize":I
    .restart local v28    # "heightMode":I
    .restart local v30    # "heightSize":I
    .restart local v31    # "paddingLeft":I
    .restart local v32    # "paddingTop":I
    .restart local v40    # "heightPadding":I
    .restart local v42    # "startingWidth":I
    .restart local v45    # "optimiseDimensions":Z
    .restart local v46    # "startingHeight":I
    :goto_12
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1763
    .local v1, "androidLayoutWidth":I
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    add-int v2, v2, v40

    .line 1765
    .local v2, "androidLayoutHeight":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_31

    .line 1766
    move/from16 v3, p1

    invoke-static {v1, v3, v11}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 1767
    .local v4, "resolvedWidthSize":I
    shl-int/lit8 v5, v11, 0x10

    move/from16 v7, p2

    invoke-static {v2, v7, v5}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1769
    .local v5, "resolvedHeightSize":I
    const v9, 0xffffff

    and-int/2addr v4, v9

    .line 1770
    and-int/2addr v5, v9

    .line 1771
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1772
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1773
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v9

    const/high16 v10, 0x1000000

    if-eqz v9, :cond_2f

    .line 1774
    or-int/2addr v4, v10

    .line 1776
    :cond_2f
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 1777
    or-int/2addr v5, v10

    .line 1779
    :cond_30
    invoke-virtual {v0, v4, v5}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1780
    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1781
    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1782
    .end local v4    # "resolvedWidthSize":I
    .end local v5    # "resolvedHeightSize":I
    goto :goto_13

    .line 1783
    :cond_31
    move/from16 v3, p1

    move/from16 v7, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1784
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1785
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1795
    :goto_13
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 659
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 660
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 661
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v1, :cond_1

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 663
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 664
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 665
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 668
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v1, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_2

    .line 669
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 670
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 672
    .local v3, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 673
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 674
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v3    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 679
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 691
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 692
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 695
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 649
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3172
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3175
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3176
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3177
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3178
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3179
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3180
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3181
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 2004
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 2005
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 542
    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 546
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 548
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 549
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 552
    .local v2, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 589
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 762
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 766
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 767
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 749
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 753
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 754
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 716
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 717
    return-void

    .line 719
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 720
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 721
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 703
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 704
    return-void

    .line 706
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 707
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 708
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1955
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1956
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3189
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1861
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    .line 1864
    :cond_0
    return-void
.end method
