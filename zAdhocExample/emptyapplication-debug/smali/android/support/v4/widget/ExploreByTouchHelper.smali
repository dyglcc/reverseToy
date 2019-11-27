.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter<",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 347
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 123
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    .line 150
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 153
    :cond_1
    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 998
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 999
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 1000
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1001
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1003
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 3

    .line 481
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 637
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 641
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 677
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 678
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 681
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 684
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 685
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 686
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 689
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 692
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 693
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 700
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 702
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .line 653
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 654
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 655
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 791
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 794
    .local v0, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 795
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 796
    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 797
    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 798
    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 799
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 805
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 806
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 811
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v2

    .line 817
    .local v2, "actions":I
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_2

    .line 818
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_2
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_3

    .line 822
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v3, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 831
    iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_4

    .line 832
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 833
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    .line 835
    :cond_4
    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 836
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 840
    :goto_0
    iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v3, p1, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 841
    .local v3, "isFocused":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 842
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_2

    .line 843
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 844
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 846
    :cond_7
    :goto_2
    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 848
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 852
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 853
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 854
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 857
    iget v5, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 858
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    .line 860
    .local v5, "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget v7, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 861
    .local v7, "virtualDescendantId":I
    :goto_3
    if-eq v7, v6, :cond_8

    .line 864
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5, v8, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 865
    sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 868
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 869
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 862
    iget v7, v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_3

    .line 871
    .end local v7    # "virtualDescendantId":I
    :cond_8
    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 874
    .end local v5    # "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_9
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v4

    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v7, v7, v1

    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 875
    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 874
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_a
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 879
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v6, v4

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v1

    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 880
    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 879
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 882
    .local v4, "intersects":Z
    if-eqz v4, :cond_b

    .line 883
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 885
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 886
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 891
    .end local v4    # "intersects":Z
    :cond_b
    return-object v0
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 734
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 735
    .local v0, "info":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v1, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 741
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    .line 742
    .local v2, "realNodeCount":I
    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 743
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Views cannot have both real and virtual children"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    :cond_0
    const/4 v3, 0x0

    .line 746
    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 746
    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 747
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 750
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_1
    return-object v0
.end method

.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 430
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 431
    .local v1, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v2, 0x0

    .line 431
    .local v2, "virtualViewId":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 432
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 433
    .local v3, "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 431
    .end local v3    # "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "virtualViewId":I
    :cond_0
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 328
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 329
    .local v0, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "host"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 451
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 453
    .local v1, "h":I
    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/16 v2, 0x21

    if-eq p1, v2, :cond_2

    const/16 v2, 0x42

    const/4 v4, -0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0x82

    if-eq p1, v2, :cond_0

    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_0
    invoke-virtual {p2, v3, v4, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p2, v4, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p2, v3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    nop

    .line 471
    :goto_0
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .line 932
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 937
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    return v0

    .line 942
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 943
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 944
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 945
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 948
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 949
    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 946
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    :goto_1
    return v0

    .line 952
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    nop

    :cond_5
    return v0

    .line 933
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    :cond_6
    :goto_2
    return v0
.end method

.method private static keyToDirection(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 309
    packed-switch p0, :pswitch_data_0

    .line 317
    :pswitch_0
    const/16 v0, 0x82

    return v0

    .line 315
    :pswitch_1
    const/16 v0, 0x42

    return v0

    .line 311
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 313
    :pswitch_3
    const/16 v0, 0x21

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 12
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 372
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v10

    .line 374
    .local v10, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    iget v11, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 375
    .local v11, "focusedNodeId":I
    const/high16 v0, -0x80000000

    if-ne v11, v0, :cond_0

    const/4 v1, 0x0

    .line 376
    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v10, v11}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0

    .line 379
    .local v3, "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_1
    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    const/16 v1, 0x82

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 383
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 384
    .local v5, "isLayoutRtl":Z
    :goto_2
    sget-object v1, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    const/4 v6, 0x0

    move-object v0, v10

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 387
    .local v0, "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_4

    .line 392
    .end local v0    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5    # "isLayoutRtl":Z
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 393
    .local v1, "selectedRect":Landroid/graphics/Rect;
    iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, v0, :cond_3

    .line 395
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    goto :goto_3

    .line 396
    :cond_3
    if-eqz p2, :cond_4

    .line 398
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 404
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 406
    :goto_3
    sget-object v5, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v4, v10

    move-object v7, v3

    move-object v8, v1

    move v9, p1

    invoke-static/range {v4 .. v9}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 408
    .restart local v0    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 410
    .end local v1    # "selectedRect":Landroid/graphics/Rect;
    :goto_4
    nop

    .line 416
    if-nez v0, :cond_5

    .line 417
    const/high16 v1, -0x80000000

    .line 417
    .local v1, "nextFocusedNodeId":I
    goto :goto_5

    .line 419
    .end local v1    # "nextFocusedNodeId":I
    :cond_5
    invoke-virtual {v10, v0}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 420
    .local v1, "index":I
    invoke-virtual {v10, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    .line 423
    .local v1, "nextFocusedNodeId":I
    :goto_5
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 908
    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 918
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 916
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 914
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 912
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 910
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 904
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 968
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    .line 974
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 975
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 979
    :cond_1
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 982
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 983
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 985
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_2
    return v1

    .line 969
    :cond_3
    :goto_0
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 612
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 613
    return-void

    .line 616
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 617
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 621
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 622
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 624
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1046
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1048
    return v1

    .line 1051
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1053
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1054
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 199
    return v1

    .line 193
    :pswitch_0
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq v0, v4, :cond_1

    .line 194
    invoke-direct {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 195
    return v3

    .line 197
    :cond_1
    return v1

    .line 189
    :cond_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 190
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 191
    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    .line 183
    .end local v0    # "virtualViewId":I
    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 219
    .local v1, "action":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 221
    .local v3, "keyCode":I
    const/16 v4, 0x3d

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 221
    .end local v3    # "keyCode":I
    goto :goto_1

    .line 226
    .restart local v3    # "keyCode":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    invoke-static {v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v4

    .line 228
    .local v4, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/2addr v6, v2

    .line 229
    .local v6, "count":I
    const/4 v2, 0x0

    .line 229
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 230
    invoke-direct {p0, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    .end local v4    # "direction":I
    .end local v6    # "count":I
    :cond_0
    goto :goto_1

    .line 240
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 242
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 243
    const/4 v0, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    const/4 v2, 0x2

    invoke-direct {p0, v2, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    invoke-direct {p0, v2, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 257
    .end local v3    # "keyCode":I
    :cond_4
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 157
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    invoke-virtual {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 2

    .line 526
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 527
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 544
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .line 566
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 568
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 570
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 572
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 573
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2, v1}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 576
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 719
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 720
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 275
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 276
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 282
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 660
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 755
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 758
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 759
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1128
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1116
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1206
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .param p2    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .line 601
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 895
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 899
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 897
    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1016
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    return v1

    .line 1021
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    .line 1023
    return v1

    .line 1026
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 1027
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1030
    :cond_2
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1032
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1033
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1035
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 505
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 510
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    .line 511
    return v0

    .line 514
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 515
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2

    .line 506
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return v0
.end method
