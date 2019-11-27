.class public Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

.field private mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field final mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 2
    .param p1, "owner"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 76
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 77
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 78
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 87
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 88
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 89
    return-void
.end method

.method private isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .locals 7
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .line 588
    .local p2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    return v1

    .line 591
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 594
    return v2

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    .local v0, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .line 597
    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 597
    .local v4, "targetAnchorsSize":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 598
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 599
    .local v5, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5, p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 600
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 601
    return v2

    .line 597
    .end local v5    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    .end local v3    # "i":I
    .end local v4    # "targetAnchorsSize":I
    :cond_3
    return v1
.end method


# virtual methods
.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z
    .locals 7
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I

    .line 251
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z
    .locals 7
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "creator"    # I

    .line 241
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .locals 3
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "goneMargin"    # I
    .param p4, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I
    .param p6, "forceConnection"    # Z

    .line 210
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 211
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 212
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 214
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 215
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 216
    return v0

    .line 218
    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    return v1

    .line 221
    :cond_1
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 222
    if-lez p2, :cond_2

    .line 223
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_0

    .line 225
    :cond_2
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 227
    :goto_0
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 228
    iput-object p4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 229
    iput p5, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 230
    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z
    .locals 7
    .param p1, "toAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p4, "creator"    # I

    .line 194
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public getConnectionCreator()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getMargin()I
    .locals 3

    .line 125
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 129
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 130
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    .line 132
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .line 613
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 624
    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 621
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 618
    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 615
    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 631
    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPriorityLevel()I
    .locals 3

    .line 457
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 468
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 466
    :pswitch_0
    return v1

    .line 459
    :pswitch_1
    return v1

    .line 458
    :pswitch_2
    return v1

    .line 460
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 464
    :pswitch_4
    return v2

    .line 463
    :pswitch_5
    return v2

    .line 462
    :pswitch_6
    return v2

    .line 461
    :pswitch_7
    return v2

    .line 465
    :pswitch_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .locals 3

    .line 435
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 444
    :pswitch_0
    return v2

    .line 441
    :pswitch_1
    return v1

    .line 438
    :pswitch_2
    return v2

    .line 442
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 440
    :pswitch_4
    return v2

    .line 439
    :pswitch_5
    return v2

    .line 437
    :pswitch_6
    return v1

    .line 436
    :pswitch_7
    return v1

    .line 443
    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSolverVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 5
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 566
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 567
    .local v0, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 568
    return v2

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 571
    .local v1, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x1

    if-ne v1, p1, :cond_1

    .line 572
    return v3

    .line 574
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 575
    return v3

    .line 577
    :cond_2
    return v2
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .locals 1
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 553
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v0

    return v0
.end method

.method public isSideAnchor()Z
    .locals 2

    .line 316
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 321
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 327
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .locals 4
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 340
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 341
    .local v0, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    return v2

    .line 344
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 362
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 360
    :pswitch_0
    return v3

    .line 357
    :pswitch_1
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    nop

    :cond_2
    :goto_0
    return v2

    .line 351
    :pswitch_2
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    nop

    :cond_4
    :goto_1
    return v2

    .line 346
    :pswitch_3
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .locals 5
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 479
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 480
    return v2

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 483
    return v3

    .line 485
    :cond_1
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 522
    :pswitch_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 525
    return v2

    .line 524
    :pswitch_1
    return v3

    .line 523
    :pswitch_2
    return v3

    .line 501
    :pswitch_3
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 504
    return v2

    .line 503
    :pswitch_4
    return v3

    .line 502
    :pswitch_5
    return v3

    .line 515
    :pswitch_6
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_2

    .line 518
    return v2

    .line 517
    :cond_2
    return v3

    .line 516
    :cond_3
    return v3

    .line 508
    :pswitch_7
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_4

    .line 511
    return v2

    .line 510
    :cond_4
    return v3

    .line 509
    :cond_5
    return v3

    .line 494
    :pswitch_8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_6

    .line 497
    return v2

    .line 496
    :cond_6
    return v3

    .line 495
    :cond_7
    return v3

    .line 487
    :pswitch_9
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    if-eq v0, v1, :cond_8

    .line 490
    return v2

    .line 489
    :cond_8
    return v3

    .line 488
    :cond_9
    return v3

    .line 531
    :pswitch_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .locals 5
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 268
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 269
    return v0

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 272
    .local v1, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 273
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    :cond_1
    return v0

    .line 277
    :cond_2
    return v3

    .line 279
    :cond_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 305
    :pswitch_0
    return v0

    .line 295
    :pswitch_1
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_5

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    .line 296
    .local v2, "isCompatible":Z
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_8

    .line 297
    if-nez v2, :cond_7

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v2, v0

    .line 299
    :cond_8
    return v2

    .line 287
    .end local v2    # "isCompatible":Z
    :pswitch_2
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_a

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v2, 0x1

    .line 288
    .restart local v2    # "isCompatible":Z
    :goto_5
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_d

    .line 289
    if-nez v2, :cond_c

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_b

    goto :goto_6

    :cond_b
    goto :goto_7

    :cond_c
    :goto_6
    const/4 v0, 0x1

    :goto_7
    move v2, v0

    .line 291
    :cond_d
    return v2

    .line 282
    .end local v2    # "isCompatible":Z
    :pswitch_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_e

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_e

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    nop

    :cond_e
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .locals 2

    .line 401
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 414
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 412
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 406
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 178
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 179
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 180
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 181
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->reset()V

    .line 182
    return-void
.end method

.method public resetSolverVariable(Landroid/support/constraint/solver/Cache;)V
    .locals 3
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 101
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 106
    :goto_0
    return-void
.end method

.method public setConnectionCreator(I)V
    .locals 0
    .param p1, "creator"    # I

    .line 169
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .locals 0
    .param p1, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 157
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 158
    return-void
.end method

.method public setGoneMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 390
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 393
    :cond_0
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 380
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 383
    :cond_0
    return-void
.end method

.method public setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 1
    .param p1, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 370
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 373
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
