.class public Landroid/support/constraint/solver/widgets/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 12
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 45
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 51
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 52
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 53
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 54
    .local v2, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 55
    .local v3, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 56
    .local v4, "horizontalWrapContent":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 57
    .local v5, "verticalWrapContent":Z
    :goto_1
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 58
    .local v6, "hasWrapContent":Z
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 61
    .local v8, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 62
    iput-boolean v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 63
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    .line 64
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_4

    .line 65
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 66
    .restart local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v9, :cond_6

    .line 67
    invoke-static {v8, v3, v6}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z

    move-result v9

    if-nez v9, :cond_6

    .line 68
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 69
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 70
    return-void

    .line 73
    .end local v8    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_6
    goto :goto_5

    .line 74
    :cond_7
    const/4 v7, 0x0

    .line 75
    .local v7, "measuredWidth":I
    const/4 v8, 0x0

    .line 77
    .local v8, "measuredHeight":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 78
    .local v10, "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    nop

    .line 79
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v11

    .line 78
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 80
    nop

    .line 81
    invoke-static {v10, v0}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v11

    .line 80
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 82
    .end local v10    # "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    goto :goto_6

    .line 84
    :cond_8
    if-eqz v4, :cond_9

    .line 85
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 86
    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 87
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 88
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 89
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 91
    :cond_9
    if-eqz v5, :cond_a

    .line 92
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    invoke-virtual {p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 94
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 95
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 96
    iput v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 98
    :cond_a
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    invoke-static {v3, v1, v9}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 99
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    invoke-static {v3, v0, v1}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 100
    return-void
.end method

.method private static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z
    .locals 3
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "hasWrapContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .line 110
    .local p1, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;Z)V

    .line 111
    .local v0, "traverseList":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {p0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v1

    return v1
.end method

.method private static getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I
    .locals 9
    .param p0, "group"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    .param p1, "orientation"    # I

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "dimension":I
    mul-int/lit8 v1, p1, 0x2

    .line 276
    .local v1, "offset":I
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getStartWidgets(I)Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, "startWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 278
    .local v3, "size":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .line 278
    .local v0, "i":I
    .local v5, "dimension":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 279
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 280
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v1

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 283
    .local v7, "topLeftFlow":Z
    :goto_2
    invoke-static {v6, p1, v7, v4}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 278
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "topLeftFlow":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    aput v5, v0, p1

    .line 287
    return v5
.end method

.method private static getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I
    .locals 27
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "topLeftFlow"    # Z
    .param p3, "depth"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 304
    iget-boolean v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 305
    return v4

    .line 309
    :cond_0
    const/4 v3, 0x0

    .line 310
    .local v3, "dimension":I
    const/4 v5, 0x0

    .line 311
    .local v5, "dimensionPre":I
    const/4 v6, 0x0

    .line 316
    .local v6, "dimensionPost":I
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    if-ne v1, v8, :cond_1

    const/4 v4, 0x1

    nop

    .line 318
    .local v4, "hasBaseline":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    .line 320
    .local v7, "baselinePreDistance":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v10

    sub-int/2addr v9, v10

    .line 321
    .local v9, "baselinePostDistance":I
    mul-int/lit8 v10, v1, 0x2

    .line 322
    .local v10, "startOffset":I
    add-int/lit8 v11, v10, 0x1

    .line 322
    .local v11, "endOffset":I
    goto :goto_0

    .line 324
    .end local v7    # "baselinePreDistance":I
    .end local v9    # "baselinePostDistance":I
    .end local v10    # "startOffset":I
    .end local v11    # "endOffset":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v9

    sub-int/2addr v7, v9

    .line 325
    .restart local v7    # "baselinePreDistance":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v9

    .line 326
    .restart local v9    # "baselinePostDistance":I
    mul-int/lit8 v11, v1, 0x2

    .line 327
    .restart local v11    # "endOffset":I
    add-int/lit8 v10, v11, 0x1

    .line 332
    .restart local v10    # "startOffset":I
    :goto_0
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v11

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_3

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v10

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_3

    .line 333
    const/4 v12, -0x1

    .line 334
    .local v12, "flow":I
    move v13, v10

    .line 335
    .local v13, "aux":I
    move v10, v11

    .line 336
    move v11, v13

    .line 337
    .end local v13    # "aux":I
    goto :goto_1

    .line 338
    .end local v12    # "flow":I
    :cond_3
    const/4 v12, 0x1

    .line 341
    .restart local v12    # "flow":I
    :goto_1
    if-eqz v4, :cond_4

    .line 342
    sub-int v13, p3, v7

    .line 342
    .end local p3    # "depth":I
    .local v13, "depth":I
    goto :goto_2

    .line 345
    .end local v13    # "depth":I
    .restart local p3    # "depth":I
    :cond_4
    move/from16 v13, p3

    .line 345
    .end local p3    # "depth":I
    .restart local v13    # "depth":I
    :goto_2
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    mul-int v14, v14, v12

    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v15

    add-int/2addr v14, v15

    .line 346
    .end local v3    # "dimension":I
    .local v14, "dimension":I
    add-int v3, v14, v13

    .line 347
    .local v3, "downDepth":I
    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    :goto_3
    mul-int v15, v15, v12

    .line 348
    .local v15, "postTemp":I
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 349
    .local v16, "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 350
    .local v6, "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v17, "dimensionPost":I
    move-object/from16 v18, v8

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v8, v1, v2, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 351
    .end local v6    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v16    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    nop

    .line 348
    move/from16 v6, v17

    move-object/from16 v8, v18

    goto :goto_4

    .line 352
    .end local v17    # "dimensionPost":I
    .local v6, "dimensionPost":I
    :cond_6
    move/from16 v17, v6

    .line 352
    .end local v6    # "dimensionPost":I
    .restart local v17    # "dimensionPost":I
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v8, v17

    .line 352
    .end local v17    # "dimensionPost":I
    .local v8, "dimensionPost":I
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 353
    .restart local v16    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move-object/from16 v19, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 354
    .local v6, "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move/from16 v20, v11

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 354
    .end local v11    # "endOffset":I
    .local v20, "endOffset":I
    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v6

    add-int v6, v15, v3

    .line 354
    .end local v6    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v21, "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    invoke-static {v11, v1, v2, v6}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 355
    .end local v16    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    .end local v21    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    nop

    .line 352
    move-object/from16 v6, v19

    move/from16 v11, v20

    goto :goto_5

    .line 356
    .end local v20    # "endOffset":I
    .restart local v11    # "endOffset":I
    :cond_7
    move/from16 v20, v11

    .line 356
    .end local v11    # "endOffset":I
    .restart local v20    # "endOffset":I
    if-eqz v4, :cond_8

    .line 357
    sub-int/2addr v5, v7

    .line 358
    add-int/2addr v8, v9

    goto :goto_7

    .line 360
    :cond_8
    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    :goto_6
    mul-int v6, v6, v12

    add-int/2addr v8, v6

    .line 364
    :goto_7
    const/4 v6, 0x0

    .line 365
    .local v6, "dimensionBaseline":I
    const/4 v11, 0x1

    if-ne v1, v11, :cond_d

    .line 366
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 367
    .restart local v16    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move-object/from16 v22, v11

    move-object/from16 v11, v16

    check-cast v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 368
    .local v11, "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move/from16 v23, v10

    const/4 v10, 0x1

    if-ne v12, v10, :cond_a

    .line 369
    .end local v10    # "startOffset":I
    .local v23, "startOffset":I
    iget-object v10, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move/from16 v24, v15

    add-int v15, v7, v3

    .line 369
    .end local v15    # "postTemp":I
    .local v24, "postTemp":I
    invoke-static {v10, v1, v2, v15}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_9

    .line 371
    .end local v24    # "postTemp":I
    .restart local v15    # "postTemp":I
    :cond_a
    move/from16 v24, v15

    .line 371
    .end local v15    # "postTemp":I
    .restart local v24    # "postTemp":I
    iget-object v10, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    mul-int v15, v9, v12

    add-int/2addr v15, v3

    invoke-static {v10, v1, v2, v15}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 373
    .end local v11    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v16    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :goto_9
    nop

    .line 366
    move-object/from16 v11, v22

    move/from16 v10, v23

    move/from16 v15, v24

    goto :goto_8

    .line 374
    .end local v23    # "startOffset":I
    .end local v24    # "postTemp":I
    .restart local v10    # "startOffset":I
    .restart local v15    # "postTemp":I
    :cond_b
    move/from16 v23, v10

    move/from16 v24, v15

    .line 374
    .end local v10    # "startOffset":I
    .end local v15    # "postTemp":I
    .restart local v23    # "startOffset":I
    .restart local v24    # "postTemp":I
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_e

    if-nez v4, :cond_e

    .line 375
    const/4 v10, 0x1

    if-ne v12, v10, :cond_c

    .line 376
    add-int/2addr v6, v7

    goto :goto_a

    .line 378
    :cond_c
    sub-int/2addr v6, v9

    goto :goto_a

    .line 383
    .end local v23    # "startOffset":I
    .end local v24    # "postTemp":I
    .restart local v10    # "startOffset":I
    .restart local v15    # "postTemp":I
    :cond_d
    move/from16 v23, v10

    move/from16 v24, v15

    .line 383
    .end local v10    # "startOffset":I
    .end local v15    # "postTemp":I
    .restart local v23    # "startOffset":I
    .restart local v24    # "postTemp":I
    :cond_e
    :goto_a
    move v10, v14

    .line 384
    .local v10, "distanceBeforeWidget":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v14, v11

    .line 385
    add-int v11, v13, v10

    .line 386
    .local v11, "leftTop":I
    add-int v15, v11, v24

    .line 387
    .local v15, "end":I
    move/from16 v25, v3

    const/4 v3, -0x1

    .line 387
    .end local v3    # "downDepth":I
    .local v25, "downDepth":I
    if-ne v12, v3, :cond_f

    .line 388
    move v3, v15

    .line 389
    .local v3, "aux":I
    move v15, v11

    .line 390
    move v11, v3

    .line 392
    .end local v3    # "aux":I
    :cond_f
    if-eqz v2, :cond_10

    .line 393
    invoke-static {v0, v1, v11}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 394
    invoke-virtual {v0, v11, v15, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    goto :goto_b

    .line 396
    :cond_10
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v3, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 397
    invoke-virtual {v0, v11, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setRelativePositioning(II)V

    .line 400
    :goto_b
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_11

    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_11

    .line 402
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 405
    :cond_11
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v23

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v20

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_12

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 408
    .local v2, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v23

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_12

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v20

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_12

    .line 410
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v3, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 413
    .end local v2    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_12
    return v14
.end method

.method private static getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .locals 8
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 505
    mul-int/lit8 v0, p1, 0x2

    .line 506
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    .line 507
    .local v1, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 508
    .local v2, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, "length":I
    const/4 v4, 0x0

    .line 512
    .local v4, "widgetDimension":I
    const/4 v5, 0x0

    .line 513
    .local v5, "bias":F
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v6, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v3

    .line 514
    if-nez p1, :cond_0

    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_0

    :cond_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_0
    move v5, v6

    .line 516
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v4

    .line 517
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 518
    .end local v3    # "length":I
    .local v6, "length":I
    sub-int/2addr v6, v4

    .line 519
    int-to-float v3, v6

    mul-float v3, v3, v5

    float-to-int v3, v3

    .line 520
    .end local v6    # "length":I
    .restart local v3    # "length":I
    return v3

    .line 522
    .end local v3    # "length":I
    .end local v4    # "widgetDimension":I
    .end local v5    # "bias":F
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V
    .locals 1
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "group"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 261
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 262
    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 263
    return-void
.end method

.method private static resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I
    .locals 3
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 532
    const/4 v0, -0x1

    .line 533
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_1

    .line 534
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v1, v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 539
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_2

    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    .line 541
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 542
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v1, v1, v2

    float-to-int v0, v1

    goto :goto_1

    .line 544
    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 546
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 548
    :cond_3
    :goto_2
    return v0
.end method

.method private static setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 2
    .param p0, "originAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 417
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 418
    .local v0, "originNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v1, p0, :cond_0

    .line 420
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 422
    :cond_0
    return-void
.end method

.method public static setPosition(Ljava/util/List;II)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "containerLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;II)V"
        }
    .end annotation

    .line 444
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 445
    .local v0, "groupsSize":I
    const/4 v1, 0x0

    .line 445
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 446
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 447
    .local v2, "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSet(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 449
    .local v4, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v5, :cond_0

    .line 450
    invoke-static {v4, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 452
    .end local v4    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    goto :goto_1

    .line 445
    .end local v2    # "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 3
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 431
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private static traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z
    .locals 8
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "upperGroup"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    .param p3, "hasWrapContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .line 128
    .local p2, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 132
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 133
    .local v2, "layoutWidget":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v3, :cond_20

    .line 135
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 136
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 139
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1

    .line 145
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 146
    if-eqz p3, :cond_1

    .line 147
    return v1

    .line 151
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    .line 153
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 154
    .local v3, "wrap":Z
    :goto_0
    if-eqz p3, :cond_3

    .line 155
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 156
    return v1

    .line 157
    :cond_3
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 158
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 159
    :cond_4
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 163
    .end local v3    # "wrap":Z
    :cond_5
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_9

    .line 165
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 166
    .restart local v3    # "wrap":Z
    :goto_1
    if-eqz p3, :cond_7

    .line 167
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 168
    return v1

    .line 169
    :cond_7
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 170
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 171
    :cond_8
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 174
    .end local v3    # "wrap":Z
    :cond_9
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_a

    .line 175
    const/4 v3, 0x1

    goto :goto_2

    .line 174
    :cond_a
    nop

    .line 175
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    :goto_3
    xor-int/2addr v3, v4

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    .line 178
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    goto :goto_4

    .line 179
    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_d

    .line 180
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_e

    .line 181
    :cond_d
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 182
    if-eqz p3, :cond_e

    .line 183
    return v1

    .line 187
    :cond_e
    :goto_4
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_12

    :cond_f
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_12

    :cond_10
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_12

    :cond_11
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_13

    :cond_12
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_13

    .line 193
    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_13

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v3, :cond_13

    .line 194
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_13
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_14

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17

    :cond_14
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17

    :cond_15
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17

    :cond_16
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_18

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_18

    :cond_17
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_18

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_18

    .line 205
    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_18

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v3, :cond_18

    .line 206
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_18
    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v3, :cond_1b

    .line 227
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 228
    if-eqz p3, :cond_19

    .line 229
    return v1

    .line 231
    :cond_19
    move-object v3, p0

    check-cast v3, Landroid/support/constraint/solver/widgets/Helper;

    .line 232
    .local v3, "hWidget":Landroid/support/constraint/solver/widgets/Helper;
    const/4 v4, 0x0

    .line 232
    .local v4, "widgetsCount":I
    :goto_5
    iget v5, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgetsCount:I

    if-ge v4, v5, :cond_1b

    .line 233
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 234
    return v1

    .line 232
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 239
    .end local v3    # "hWidget":Landroid/support/constraint/solver/widgets/Helper;
    .end local v4    # "widgetsCount":I
    :cond_1b
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    .line 240
    .local v3, "anchorsSize":I
    const/4 v4, 0x0

    .line 240
    .local v4, "i":I
    :goto_6
    if-ge v4, v3, :cond_1f

    .line 241
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    .line 242
    .local v5, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1e

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eq v6, v7, :cond_1e

    .line 243
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_1c

    .line 244
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 245
    if-eqz p3, :cond_1d

    .line 246
    return v1

    .line 249
    :cond_1c
    invoke-static {v5}, Landroid/support/constraint/solver/widgets/Analyzer;->setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 251
    :cond_1d
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v6, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 252
    return v1

    .line 240
    .end local v5    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 256
    .end local v4    # "i":I
    :cond_1f
    return v0

    .line 211
    .end local v3    # "anchorsSize":I
    :cond_20
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-eq v3, p1, :cond_22

    .line 212
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-nez v3, :cond_21

    .line 216
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 218
    :cond_21
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 220
    .local v3, "auxWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-object p1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 221
    .end local v3    # "auxWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_7

    .line 223
    :cond_22
    return v0
.end method

.method private static updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V
    .locals 10
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "containerLength"    # I

    .line 467
    mul-int/lit8 v0, p1, 0x2

    .line 468
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    .line 469
    .local v1, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 470
    .local v2, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 471
    .local v3, "hasBias":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 472
    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v4, v5

    .line 473
    .local v4, "start":I
    invoke-static {p0, p1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 474
    return-void

    .line 481
    .end local v4    # "start":I
    :cond_1
    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2

    .line 482
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    move-result v5

    .line 483
    .local v5, "length":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v6, v6

    .line 484
    .local v6, "start":I
    add-int v7, v6, v5

    .line 485
    .local v7, "end":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 486
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    int-to-float v9, v5

    iput v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 487
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iput v4, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    .line 488
    invoke-virtual {p0, v6, v7, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 489
    return-void

    .line 491
    .end local v5    # "length":I
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRelativePositioning(I)I

    move-result v4

    sub-int v4, p2, v4

    .line 492
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v5

    sub-int v5, v4, v5

    .line 493
    .local v5, "start":I
    invoke-virtual {p0, v5, v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 494
    invoke-static {p0, p1, v5}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 495
    return-void
.end method
