.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;,
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 706
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 663
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 697
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 722
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 730
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 4063
    return-void
.end method

.method private addAddedFragments(Landroid/support/v4/util/ArraySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2637
    .local p1, "added":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2638
    return-void

    .line 2641
    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2642
    .local v0, "state":I
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2643
    .local v1, "numAdded":I
    const/4 v2, 0x0

    .line 2643
    .local v2, "i":I
    :goto_0
    move v8, v2

    .line 2643
    .end local v2    # "i":I
    .local v8, "i":I
    if-ge v8, v1, :cond_2

    .line 2644
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2645
    .local v9, "fragment":Landroid/support/v4/app/Fragment;
    iget v2, v9, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2646
    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2648
    iget-object v2, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    .line 2649
    invoke-virtual {p1, v9}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2643
    .end local v9    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v2, v8, 0x1

    .line 2643
    .end local v8    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 2653
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private animateRemoveFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newState"    # I

    .line 1630
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1631
    .local v0, "viewToAnimate":Landroid/view/View;
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1632
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1633
    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1634
    iget-object v2, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 1635
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;

    iget-object v3, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v2, v3, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1637
    .local v2, "animation":Landroid/view/animation/Animation;
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1638
    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    .line 1639
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v4, p0, v3, v1, p1}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1659
    invoke-static {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1660
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    .end local v2    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    goto :goto_0

    .line 1662
    :cond_0
    iget-object v2, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1663
    .local v2, "animator":Landroid/animation/Animator;
    iget-object v3, p2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1664
    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v3, p0, v1, v0, p1}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1678
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, p2}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1679
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1681
    .end local v2    # "animator":Landroid/animation/Animator;
    :goto_0
    return-void
.end method

.method private burpActive()V
    .locals 3

    .line 3190
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3191
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3191
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3192
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3193
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3191
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3197
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .line 2079
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2084
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2087
    :cond_1
    return-void
.end method

.method private cleanupExec()V
    .locals 1

    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2259
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2260
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2261
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 2
    .param p1, "nextState"    # I

    .line 3268
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3269
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3272
    nop

    .line 3273
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3274
    return-void

    .line 3271
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 12

    .line 2671
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2672
    .local v0, "numFragments":I
    :goto_0
    nop

    .line 2672
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 2673
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2674
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    .line 2675
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2677
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v9

    .line 2678
    .local v9, "stateAfterAnimating":I
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v10

    .line 2679
    .local v10, "animatingAway":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 2680
    .local v11, "animation":Landroid/view/animation/Animation;
    if-eqz v11, :cond_1

    .line 2681
    invoke-virtual {v11}, Landroid/view/animation/Animation;->cancel()V

    .line 2684
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 2686
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2687
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2688
    .end local v9    # "stateAfterAnimating":I
    .end local v10    # "animatingAway":Landroid/view/View;
    .end local v11    # "animation":Landroid/view/animation/Animation;
    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2689
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2672
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2693
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2
    .param p1, "allowStateLoss"    # Z

    .line 2206
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 2207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 2211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment host has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2214
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_2
    if-nez p1, :cond_3

    .line 2219
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2222
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2226
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2228
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2230
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2231
    nop

    .line 2232
    return-void

    .line 2230
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v1
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2614
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .line 2614
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2615
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 2616
    .local v1, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2617
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2618
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2621
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2622
    .local v3, "moveToState":Z
    :goto_1
    invoke-virtual {v1, v3}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2623
    .end local v3    # "moveToState":Z
    goto :goto_2

    .line 2624
    :cond_1
    invoke-virtual {v1, v3}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2625
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    .line 2614
    .end local v1    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2628
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 17
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2386
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 2386
    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v11, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2387
    .local v11, "allowReordering":Z
    const/4 v0, 0x0

    .line 2388
    .local v0, "addToBackStack":Z
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2391
    :cond_0
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2393
    :goto_0
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v2, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2395
    .local v1, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    move v13, v0

    move-object v12, v1

    move v0, v9

    .line 2395
    .end local v1    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .local v0, "recordNum":I
    .local v12, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .local v13, "addToBackStack":Z
    :goto_1
    const/4 v14, 0x1

    if-ge v0, v10, :cond_4

    .line 2396
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 2397
    .local v1, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2398
    .local v2, "isPop":Z
    if-nez v2, :cond_1

    .line 2399
    iget-object v3, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12}, Landroid/support/v4/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 2403
    .end local v12    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .local v3, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    :goto_2
    move-object v12, v3

    goto :goto_3

    .line 2401
    .end local v3    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .restart local v12    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    :cond_1
    iget-object v3, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12}, Landroid/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto :goto_2

    .line 2403
    :goto_3
    if-nez v13, :cond_3

    iget-boolean v3, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v14, 0x0

    nop

    :cond_3
    :goto_4
    move v13, v14

    .line 2395
    .end local v1    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2405
    .end local v0    # "recordNum":I
    :cond_4
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2407
    if-nez v11, :cond_5

    .line 2408
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2411
    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2413
    move v15, v10

    .line 2414
    .local v15, "postponeIndex":I
    if-eqz v11, :cond_6

    .line 2415
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 2416
    .local v5, "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V

    .line 2417
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v16, v5

    .line 2417
    .end local v5    # "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    .local v16, "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I

    move-result v0

    .line 2419
    .end local v15    # "postponeIndex":I
    .local v0, "postponeIndex":I
    move-object/from16 v1, v16

    invoke-direct {v6, v1}, Landroid/support/v4/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V

    .line 2422
    .end local v16    # "addedFragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    move v15, v0

    .line 2422
    .end local v0    # "postponeIndex":I
    .restart local v15    # "postponeIndex":I
    :cond_6
    if-eq v15, v9, :cond_7

    if-eqz v11, :cond_7

    .line 2424
    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v15

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2426
    iget v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v6, v0, v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2429
    :cond_7
    move v0, v9

    .line 2429
    .local v0, "recordNum":I
    :goto_5
    if-ge v0, v10, :cond_9

    .line 2430
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 2431
    .restart local v1    # "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2432
    .restart local v2    # "isPop":Z
    if-eqz v2, :cond_8

    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_8

    .line 2433
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v3}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2434
    const/4 v3, -0x1

    iput v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 2436
    :cond_8
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2429
    .end local v1    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2438
    .end local v0    # "recordNum":I
    :cond_9
    if-eqz v13, :cond_a

    .line 2439
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2441
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2292
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2293
    .local v0, "numPostponed":I
    :goto_0
    move v2, v0

    const/4 v0, 0x0

    .line 2293
    .local v0, "i":I
    .local v2, "numPostponed":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 2294
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2295
    .local v3, "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_1

    iget-boolean v5, v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_1

    .line 2296
    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2297
    .local v5, "index":I
    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2298
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2299
    goto :goto_2

    .line 2302
    .end local v5    # "index":I
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2304
    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2305
    add-int/lit8 v0, v0, -0x1

    .line 2306
    add-int/lit8 v2, v2, -0x1

    .line 2308
    if-eqz p1, :cond_3

    iget-boolean v5, v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 2309
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .line 2309
    .local v6, "index":I
    if-eq v5, v4, :cond_3

    .line 2310
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2312
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2314
    .end local v6    # "index":I
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2293
    .end local v3    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2318
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 7
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 2586
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2587
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2589
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2593
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2594
    .local v3, "fragmentIndex":I
    add-int/lit8 v4, v3, -0x1

    .line 2594
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2595
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 2596
    .local v5, "underFragment":Landroid/support/v4/app/Fragment;
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_1

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2598
    return-object v5

    .line 2594
    .end local v5    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2601
    .end local v4    # "i":I
    :cond_2
    return-object v2

    .line 2590
    .end local v3    # "fragmentIndex":I
    :cond_3
    :goto_1
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .line 2659
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2660
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2661
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2664
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2707
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2708
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2709
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2713
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2714
    .local v1, "numActions":I
    nop

    .line 2714
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2715
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2714
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2717
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2718
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2719
    .end local v1    # "numActions":I
    monitor-exit p0

    .line 2720
    return v0

    .line 2710
    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    .line 2719
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 4
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .line 1298
    const/4 v0, 0x0

    .line 1300
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 1301
    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1302
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_0
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1309
    :goto_0
    goto :goto_1

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "FragmentManager"

    const-string v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1308
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 1305
    :catch_1
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "FragmentManager"

    const-string v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 1310
    :goto_1
    return-object v0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 1152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1153
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1154
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .line 1138
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    .local v0, "set":Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v2, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    .local v4, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v2
.end method

.method private makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2451
    .local p1, "fragments":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v0

    .line 2452
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .line 2452
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2453
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2454
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2455
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2456
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2457
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2452
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2460
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 7
    .param p0, "anim"    # Landroid/animation/Animator;

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 755
    return v0

    .line 757
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 758
    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 759
    .local v1, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 760
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .line 760
    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 761
    const-string v5, "alpha"

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 762
    return v2

    .line 760
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 765
    .end local v1    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 766
    move-object v1, p0

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 767
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .line 767
    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 768
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 769
    return v2

    .line 767
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_5
    :goto_2
    return v0
.end method

.method static modifiesAlpha(Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 5
    .param p0, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 738
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 739
    return v1

    .line 740
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 742
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 742
    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 743
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_1

    .line 744
    return v1

    .line 742
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 747
    .end local v3    # "i":I
    :cond_2
    return v2

    .line 749
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v0

    return v0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 867
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 870
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 873
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 874
    .local v1, "childManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    return v0

    .line 880
    .end local v1    # "childManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    .line 881
    .local v1, "executePop":Z
    if-eqz v1, :cond_1

    .line 882
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 884
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 887
    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 891
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 892
    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I
    .locals 8
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2477
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    move v0, p4

    .line 2478
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .line 2478
    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_5

    .line 2479
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 2480
    .local v2, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2481
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroid/support/v4/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 2482
    invoke-virtual {v2, p1, v4, p4}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2483
    .local v4, "isPostponed":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 2484
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2485
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2487
    :cond_1
    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/support/v4/app/BackStackRecord;Z)V

    .line 2489
    .local v6, "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2490
    invoke-virtual {v2, v6}, Landroid/support/v4/app/BackStackRecord;->setOnStartPostponedListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2493
    if-eqz v3, :cond_2

    .line 2494
    invoke-virtual {v2}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2496
    :cond_2
    invoke-virtual {v2, v5}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2500
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 2501
    if-eq v1, v0, :cond_3

    .line 2502
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2503
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2507
    :cond_3
    invoke-direct {p0, p5}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V

    .line 2478
    .end local v2    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2510
    .end local v1    # "i":I
    :cond_5
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2336
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2340
    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 2345
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2347
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2348
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2349
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .line 2349
    .local v2, "recordNum":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 2350
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2351
    .local v3, "canReorder":Z
    if-nez v3, :cond_4

    .line 2353
    if-eq v1, v2, :cond_2

    .line 2354
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2358
    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 2359
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2360
    :goto_1
    if-ge v4, v0, :cond_3

    .line 2361
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2362
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_3

    .line 2363
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2366
    :cond_3
    invoke-direct {p0, p1, p2, v2, v4}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2367
    move v1, v4

    .line 2368
    add-int/lit8 v2, v4, -0x1

    .line 2349
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2371
    .end local v2    # "recordNum":I
    :cond_5
    if-eq v1, v0, :cond_6

    .line 2372
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2374
    :cond_6
    return-void

    .line 2341
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2337
    :cond_8
    :goto_3
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 2
    .param p0, "transit"    # I

    .line 3655
    const/4 v0, 0x0

    .line 3656
    .local v0, "rev":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 3661
    :cond_0
    const/16 v0, 0x1001

    .line 3662
    goto :goto_0

    .line 3664
    :cond_1
    const/16 v0, 0x1003

    goto :goto_0

    .line 3658
    :cond_2
    const/16 v0, 0x2002

    .line 3659
    nop

    .line 3667
    :goto_0
    return v0
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 1276
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1279
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1287
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1292
    .end local v0    # "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :cond_2
    :goto_0
    return-void

    .line 1277
    :cond_3
    :goto_1
    return-void
.end method

.method private static setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 4
    .param p0, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2814
    if-nez p0, :cond_0

    .line 2815
    return-void

    .line 2817
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2818
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_1

    .line 2819
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2820
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 2821
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 2823
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2824
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_2

    .line 2825
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2826
    .local v3, "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 2827
    .end local v3    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    goto :goto_1

    .line 2829
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 777
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    .line 782
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 778
    :cond_2
    :goto_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 787
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 791
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 793
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const-string v5, "  "

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v1, v3}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v2

    .line 795
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 799
    :cond_0
    :try_start_1
    const-string v2, "  "

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    goto :goto_1

    .line 800
    :catch_1
    move-exception v2

    .line 801
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 2
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 3679
    const/4 v0, -0x1

    .line 3680
    .local v0, "animAttr":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_3

    .line 3685
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    move v0, v1

    .line 3686
    goto :goto_3

    .line 3688
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    :goto_1
    move v0, v1

    goto :goto_3

    .line 3682
    :cond_4
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    move v0, v1

    .line 3683
    nop

    .line 3691
    :goto_3
    return v0
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    .line 2739
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2742
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .line 1912
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1914
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1915
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1918
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1919
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1922
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1923
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1924
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1926
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1927
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1929
    :cond_3
    if-eqz p2, :cond_4

    .line 1930
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1920
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1933
    :cond_4
    :goto_0
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 907
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 2144
    monitor-enter p0

    .line 2145
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2155
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2156
    .local v0, "index":I
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2158
    monitor-exit p0

    return v0

    .line 2146
    .end local v0    # "index":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2149
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2150
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    monitor-exit p0

    return v0

    .line 2160
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    .line 3201
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3202
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3203
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 3204
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 3205
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 2001
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 2003
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 2004
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 2005
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2008
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2010
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 2013
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 2014
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    .line 2011
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2018
    :cond_3
    :goto_0
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .line 809
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V
    .locals 9
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2531
    if-eqz p2, :cond_0

    .line 2532
    invoke-virtual {p1, p4}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    .line 2534
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    .line 2536
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2537
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 2538
    .local v8, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    if-eqz p3, :cond_1

    .line 2541
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2543
    :cond_1
    if-eqz p4, :cond_2

    .line 2544
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2547
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_6

    .line 2548
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2549
    .local v1, "numActive":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2549
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 2552
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 2553
    .local v4, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_5

    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v5, :cond_5

    iget v5, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2554
    invoke-virtual {p1, v5}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2555
    iget v5, v4, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 2556
    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v7, v4, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2558
    :cond_3
    if-eqz p4, :cond_4

    .line 2559
    iput v6, v4, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    goto :goto_2

    .line 2561
    :cond_4
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2562
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 2549
    .end local v4    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2567
    .end local v1    # "numActive":I
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method completeShowHideFragment(Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1714
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1715
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1716
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1715
    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1717
    .local v0, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1718
    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1719
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1720
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1721
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1723
    :cond_0
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1724
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1725
    .local v4, "animatingView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1728
    iget-object v5, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v6, p0, v3, v4, p1}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_0

    .line 1740
    :cond_1
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1743
    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1745
    :cond_2
    if-eqz v0, :cond_3

    .line 1746
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1747
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1748
    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->start()V

    .line 1750
    :cond_3
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1753
    .local v3, "visibility":I
    :goto_1
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1755
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 1759
    .end local v0    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .end local v3    # "visibility":I
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6

    .line 1760
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1762
    :cond_6
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1763
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1764
    return-void
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1983
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1986
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    .line 1988
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1990
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1991
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1993
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1995
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    goto :goto_0

    .line 1991
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1998
    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .line 3227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3228
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3230
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3295
    const/4 v0, 0x0

    .line 3295
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3296
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3297
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3298
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3295
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3301
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3377
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3378
    return v1

    .line 3380
    :cond_0
    const/4 v0, 0x0

    .line 3380
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3381
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3382
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 3383
    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3384
    return v2

    .line 3380
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3388
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public dispatchCreate()V
    .locals 1

    .line 3221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3222
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3224
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3313
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3314
    return v1

    .line 3316
    :cond_0
    const/4 v0, 0x0

    .line 3317
    .local v0, "show":Z
    const/4 v2, 0x0

    .line 3318
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    move-object v3, v2

    move v2, v0

    const/4 v0, 0x0

    .line 3318
    .local v0, "i":I
    .local v2, "show":Z
    .local v3, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3319
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3320
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_2

    .line 3321
    invoke-virtual {v4, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3322
    const/4 v2, 0x1

    .line 3323
    if-nez v3, :cond_1

    .line 3324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 3326
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3318
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3331
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3332
    nop

    .line 3332
    .local v1, "i":I
    :goto_1
    move v0, v1

    .line 3332
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 3333
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3334
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3335
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 3332
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 3332
    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 3340
    .end local v1    # "i":I
    :cond_6
    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3342
    return v2
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 3258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3259
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3262
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 3263
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 3264
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .line 3254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3255
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .line 3304
    const/4 v0, 0x0

    .line 3304
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3305
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3306
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3307
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 3304
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3310
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .line 3277
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3277
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3278
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3279
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3280
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3277
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3283
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3503
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3504
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3505
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3506
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3507
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3510
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3511
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3512
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3514
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3515
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3455
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3456
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3457
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3458
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3459
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3462
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3463
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3464
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 3466
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3467
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3487
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3488
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3489
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3490
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3491
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3494
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3495
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3496
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3498
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3499
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3625
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3626
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3627
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3628
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3629
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 3632
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3633
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3634
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3636
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3637
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3640
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3641
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3642
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3643
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3644
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 3647
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3648
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3649
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3651
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3652
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3564
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3565
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3566
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3567
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3568
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 3571
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3572
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3573
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3575
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3576
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3439
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3440
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3441
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3442
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3443
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3446
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3447
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3448
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 3450
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3451
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3471
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3472
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3473
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3474
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3475
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3478
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3479
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3480
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3482
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3483
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3549
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3550
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3551
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3552
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3553
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 3556
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3557
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3558
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3560
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3561
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onlyRecursive"    # Z

    .line 3595
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3597
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3598
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3599
    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3602
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3603
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3604
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3606
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3607
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3534
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3536
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3537
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3538
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 3541
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3542
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3543
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3545
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3546
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3579
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3581
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3582
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3583
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 3586
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3587
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3588
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3590
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3591
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "onlyRecursive"    # Z

    .line 3519
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3520
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3521
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3522
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3523
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3526
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3527
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p4, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3528
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3530
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3531
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onlyRecursive"    # Z

    .line 3610
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3611
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3612
    .local v0, "parentManager":Landroid/support/v4/app/FragmentManager;
    instance-of v1, v0, Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 3613
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3614
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 3617
    .end local v0    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3618
    .local v1, "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_2

    .line 3619
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3621
    .end local v1    # "holder":Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_2
    goto :goto_0

    .line 3622
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3362
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3363
    return v1

    .line 3365
    :cond_0
    const/4 v0, 0x0

    .line 3365
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3366
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3367
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 3368
    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3369
    return v2

    .line 3365
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3373
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3392
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3393
    return-void

    .line 3395
    :cond_0
    const/4 v0, 0x0

    .line 3395
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3396
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3397
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3398
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3395
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3401
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .line 3245
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3246
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .line 3286
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3286
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3287
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3288
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3289
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3286
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3292
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3346
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3347
    return v1

    .line 3349
    :cond_0
    const/4 v0, 0x0

    .line 3350
    .local v0, "show":Z
    nop

    .line 3350
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3351
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3352
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 3353
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3354
    const/4 v0, 0x1

    .line 3350
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3358
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public dispatchResume()V
    .locals 1

    .line 3239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3240
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3241
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3242
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 3233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3234
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3235
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3236
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .line 3249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3250
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3251
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 1

    .line 2724
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    .line 2725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2726
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2728
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1025
    .local v1, "N":I
    if-lez v1, :cond_1

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const/4 v3, 0x0

    .line 1029
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1030
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1031
    .local v4, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1033
    if-eqz v4, :cond_0

    .line 1034
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1029
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1041
    .restart local v1    # "N":I
    if-lez v1, :cond_2

    .line 1042
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const/4 v3, 0x0

    .line 1043
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1044
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1045
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1053
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1054
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1055
    if-lez v1, :cond_3

    .line 1056
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const/4 v3, 0x0

    .line 1057
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 1058
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1059
    .restart local v4    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1065
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1066
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1067
    if-lez v1, :cond_4

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v3, 0x0

    .line 1069
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 1070
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord;

    .line 1071
    .local v4, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1069
    .end local v4    # "bs":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1078
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 1079
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1080
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 1081
    if-lez v1, :cond_5

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack Indices:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const/4 v3, 0x0

    .line 1083
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_5

    .line 1084
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord;

    .line 1085
    .restart local v4    # "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    .end local v4    # "bs":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1091
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mAvailBackStackIndices: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 1098
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1099
    if-lez v1, :cond_7

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    nop

    .line 1101
    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_7

    .line 1102
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;

    .line 1103
    .local v3, "r":Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    .end local v3    # "r":Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1109
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_8

    .line 1113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1117
    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_9

    .line 1120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNoTransactionsBecause="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    :cond_a
    return-void

    .line 1095
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2105
    if-nez p2, :cond_0

    .line 2106
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2108
    :cond_0
    monitor-enter p0

    .line 2109
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2116
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2119
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2121
    monitor-exit p0

    .line 2122
    return-void

    .line 2110
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 2112
    monitor-exit p0

    return-void

    .line 2114
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ensureInflatedFragmentView(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1688
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    .line 1689
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1691
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1693
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1694
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1696
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1698
    :cond_1
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1701
    :cond_2
    :goto_0
    return-void
.end method

.method public execPendingActions()Z
    .locals 4

    .line 2267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2269
    const/4 v1, 0x0

    .line 2270
    .local v1, "didSomething":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2271
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2273
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2276
    nop

    .line 2277
    const/4 v1, 0x1

    goto :goto_0

    .line 2275
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2280
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2281
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 2283
    return v1
.end method

.method public execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2235
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 2237
    :cond_0
    return-void

    .line 2239
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2243
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2246
    goto :goto_0

    .line 2245
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2249
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2250
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 2251
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 814
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 815
    .local v0, "updates":Z
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 816
    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2024
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2024
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2025
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2026
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 2027
    return-object v1

    .line 2024
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2030
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 2032
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2032
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2033
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2034
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 2035
    return-object v1

    .line 2032
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2039
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2045
    if-eqz p1, :cond_1

    .line 2047
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2047
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2048
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2049
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2050
    return-object v1

    .line 2047
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2054
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2056
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2056
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2057
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2058
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2059
    return-object v1

    .line 2056
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2063
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .line 2067
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2068
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2068
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2069
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2070
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 2071
    return-object v1

    .line 2068
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2075
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 2189
    monitor-enter p0

    .line 2190
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2194
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    monitor-exit p0

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 978
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 979
    const/4 v0, 0x0

    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 962
    const/4 v0, 0x0

    return-object v0

    .line 964
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 965
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x0

    .line 966
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 967
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .line 902
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 897
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 932
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 933
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .line 934
    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 937
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1

    .line 938
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 941
    :cond_1
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 949
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .line 3796
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3416
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1957
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1962
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1964
    :cond_1
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1000
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1314
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 2094
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

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

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 8
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .line 1160
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    .line 1161
    .local v0, "nextAnim":I
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1162
    .local v1, "animation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1163
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v2

    .line 1166
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 1167
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_1

    .line 1168
    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object v3

    .line 1171
    :cond_1
    if-eqz v0, :cond_6

    .line 1172
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "dir":Ljava/lang/String;
    const-string v4, "anim"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1174
    .local v4, "isAnim":Z
    const/4 v5, 0x0

    .line 1175
    .local v5, "successfulLoad":Z
    if-eqz v4, :cond_3

    .line 1178
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object v1, v6

    .line 1179
    if-eqz v1, :cond_2

    .line 1180
    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1183
    :cond_2
    const/4 v5, 0x1

    .line 1188
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1184
    :catch_1
    move-exception v6

    .line 1185
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    throw v6

    .line 1190
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_0
    if-nez v5, :cond_6

    .line 1193
    :try_start_1
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    move-object v2, v6

    .line 1194
    if-eqz v2, :cond_4

    .line 1195
    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 1207
    :cond_4
    goto :goto_1

    .line 1197
    :catch_2
    move-exception v6

    .line 1198
    .local v6, "e":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_5

    .line 1200
    throw v6

    .line 1203
    :cond_5
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_6

    .line 1205
    new-instance v7, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v7, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v7

    .line 1211
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "isAnim":Z
    .end local v5    # "successfulLoad":Z
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_1
    const/4 v3, 0x0

    if-nez p2, :cond_7

    .line 1212
    return-object v3

    .line 1215
    :cond_7
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v4

    .line 1216
    .local v4, "styleIndex":I
    if-gez v4, :cond_8

    .line 1217
    return-object v3

    .line 1220
    :cond_8
    const v5, 0x3f79999a    # 0.975f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch v4, :pswitch_data_0

    .line 1236
    if-nez p4, :cond_9

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1237
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_2

    .line 1232
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1230
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1228
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x3f89999a    # 1.075f

    invoke-static {v3, v7, v5, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1226
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v7, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1224
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v5, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1222
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x3f900000    # 1.125f

    invoke-static {v3, v5, v7, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1239
    :cond_9
    :goto_2
    if-nez p4, :cond_a

    .line 1240
    return-object v3

    .line 1253
    :cond_a
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1886
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1887
    return-void

    .line 1890
    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1891
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1892
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1894
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1895
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_2
    return-void
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1899
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1900
    return-void

    .line 1903
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1908
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    .line 1909
    return-void
.end method

.method moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
    .locals 10
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1773
    if-nez p1, :cond_0

    .line 1774
    return-void

    .line 1776
    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1777
    .local v0, "nextState":I
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1778
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1779
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1781
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1784
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1786
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1788
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1789
    .local v1, "underFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    .line 1790
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1792
    .local v4, "underView":Landroid/view/View;
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1793
    .local v5, "container":Landroid/view/ViewGroup;
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 1794
    .local v6, "underIndex":I
    iget-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1795
    .local v7, "viewIndex":I
    if-ge v7, v6, :cond_3

    .line 1796
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1797
    iget-object v8, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1800
    .end local v4    # "underView":Landroid/view/View;
    .end local v5    # "container":Landroid/view/ViewGroup;
    .end local v6    # "underIndex":I
    .end local v7    # "viewIndex":I
    :cond_3
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 1802
    iget v4, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 1803
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v6, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1805
    :cond_4
    iput v5, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1806
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1808
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v2

    .line 1809
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1808
    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v2

    .line 1810
    .local v2, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v2, :cond_6

    .line 1811
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1812
    iget-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 1813
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1815
    :cond_5
    iget-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1816
    iget-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 1821
    .end local v1    # "underFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_6
    :goto_1
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_7

    .line 1822
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/support/v4/app/Fragment;)V

    .line 1824
    :cond_7
    return-void
.end method

.method moveToState(IZ)V
    .locals 6
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1836
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1837
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1840
    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, v0, :cond_1

    .line 1841
    return-void

    .line 1844
    :cond_1
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1846
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 1849
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1850
    .local v0, "numAdded":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1850
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1851
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1852
    .local v3, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 1850
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1857
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1858
    .local v2, "numActive":I
    const/4 v3, 0x0

    .line 1858
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 1859
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1860
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_4

    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_3

    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-nez v5, :cond_4

    .line 1861
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 1858
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1865
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1867
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 1868
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1869
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1872
    .end local v0    # "numAdded":I
    .end local v2    # "numActive":I
    :cond_6
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1684
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1685
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 15
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1321
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    move/from16 v1, p2

    goto :goto_1

    .line 1321
    :cond_1
    :goto_0
    move/from16 v1, p2

    if-le v1, v9, :cond_2

    .line 1322
    const/4 v1, 0x1

    .line 1324
    .end local p2    # "newState":I
    .local v1, "newState":I
    :cond_2
    :goto_1
    iget-boolean v2, v8, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_4

    iget v2, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v1, v2, :cond_4

    .line 1325
    iget v2, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1327
    const/4 v1, 0x1

    goto :goto_2

    .line 1330
    :cond_3
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1335
    :cond_4
    :goto_2
    iget-boolean v2, v8, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v2, :cond_5

    iget v2, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v10, :cond_5

    if-le v1, v11, :cond_5

    .line 1336
    const/4 v1, 0x2

    .line 1338
    .end local v1    # "newState":I
    .local v12, "newState":I
    :cond_5
    move v12, v1

    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v1, v12, :cond_22

    .line 1342
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_6

    .line 1343
    return-void

    .line 1345
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1350
    :cond_7
    invoke-virtual {v8, v13}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v8, v13}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1354
    :cond_8
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 1356
    :pswitch_0
    if-lez v12, :cond_13

    .line 1357
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_9
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 1359
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v2, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1360
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1359
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1363
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1365
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_a

    .line 1366
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1369
    :cond_a
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 1370
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1371
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_3

    .line 1373
    :cond_b
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1376
    :goto_3
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_c

    .line 1377
    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1378
    if-le v12, v11, :cond_c

    .line 1379
    const/4 v12, 0x2

    .line 1384
    :cond_c
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1385
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1386
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_d

    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto :goto_4

    :cond_d
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1387
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v1

    :goto_4
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1391
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_f

    .line 1392
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eq v1, v2, :cond_e

    .line 1393
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declared target fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that does not belong to this FragmentManager!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_e
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v1, v9, :cond_f

    .line 1398
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1402
    :cond_f
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1403
    iput-boolean v14, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1404
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_10

    .line 1406
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not call through to super.onAttach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :cond_10
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_11

    .line 1410
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_5

    .line 1412
    :cond_11
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 1414
    :goto_5
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1416
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_12

    .line 1417
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1418
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1419
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_6

    .line 1421
    :cond_12
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1422
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1424
    :goto_6
    iput-boolean v14, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1431
    :cond_13
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/support/v4/app/Fragment;)V

    .line 1433
    if-le v12, v9, :cond_1d

    .line 1434
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_14

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_14
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v1, :cond_1b

    .line 1436
    const/4 v1, 0x0

    .line 1437
    .local v1, "container":Landroid/view/ViewGroup;
    iget v2, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_16

    .line 1438
    iget v2, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 1439
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1444
    :cond_15
    iget-object v2, v7, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iget v3, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    .line 1445
    if-nez v1, :cond_16

    iget-boolean v2, v8, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v2, :cond_16

    .line 1448
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    .local v2, "resName":Ljava/lang/String;
    goto :goto_7

    .line 1449
    .end local v2    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1450
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "unknown"

    .line 1452
    .local v2, "resName":Ljava/lang/String;
    :goto_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1454
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v7, v3}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1459
    .end local v2    # "resName":Ljava/lang/String;
    :cond_16
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1460
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v1, v3}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1462
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 1463
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1464
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1465
    if-eqz v1, :cond_17

    .line 1466
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_17
    iget-boolean v2, v8, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_18

    .line 1469
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_18
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v3}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1472
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v2, v3, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1476
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    const/4 v9, 0x0

    :goto_8
    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_9

    .line 1479
    :cond_1a
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1483
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_1b
    :goto_9
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1484
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1485
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 1486
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1488
    :cond_1c
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1492
    :cond_1d
    :pswitch_2
    if-le v12, v11, :cond_1f

    .line 1493
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1495
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 1499
    :cond_1f
    :pswitch_3
    if-le v12, v10, :cond_21

    .line 1500
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_20

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1502
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 1503
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1504
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1613
    :cond_21
    :goto_a
    move/from16 v2, p3

    move/from16 v4, p4

    goto/16 :goto_11

    .line 1507
    :cond_22
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v1, v12, :cond_21

    .line 1508
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_a

    .line 1510
    :pswitch_4
    const/4 v1, 0x4

    if-ge v12, v1, :cond_24

    .line 1511
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1513
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 1517
    :cond_24
    :pswitch_5
    if-ge v12, v10, :cond_26

    .line 1518
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1520
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 1524
    :cond_26
    :pswitch_6
    if-ge v12, v11, :cond_2c

    .line 1525
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_27
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_28

    .line 1529
    iget-object v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_28

    .line 1530
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1533
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1534
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 1535
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2b

    .line 1537
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1538
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1539
    const/4 v1, 0x0

    .line 1540
    .local v1, "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    iget v2, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    if-lez v2, :cond_29

    iget-boolean v2, v7, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_29

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1541
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_29

    iget v2, v8, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_29

    .line 1543
    move/from16 v2, p3

    move/from16 v4, p4

    invoke-virtual {v7, v8, v2, v14, v4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v1

    goto :goto_b

    .line 1546
    :cond_29
    move/from16 v2, p3

    move/from16 v4, p4

    :goto_b
    iput v3, v8, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1547
    if-eqz v1, :cond_2a

    .line 1548
    invoke-direct {v7, v8, v1, v12}, Landroid/support/v4/app/FragmentManagerImpl;->animateRemoveFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1550
    :cond_2a
    iget-object v3, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1550
    .end local v1    # "anim":Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    goto :goto_c

    .line 1552
    :cond_2b
    move/from16 v2, p3

    move/from16 v4, p4

    :goto_c
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1553
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1556
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 1557
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mViewLifecycleOwnerLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1, v13}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1558
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1559
    iput-boolean v14, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    goto :goto_d

    .line 1563
    :cond_2c
    :pswitch_7
    move/from16 v2, p3

    move/from16 v4, p4

    :goto_d
    if-ge v12, v9, :cond_34

    .line 1564
    iget-boolean v1, v7, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v1, :cond_2e

    .line 1571
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1572
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    .line 1573
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v8, v13}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1574
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1575
    .end local v1    # "v":Landroid/view/View;
    goto :goto_e

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 1577
    .local v1, "animator":Landroid/animation/Animator;
    invoke-virtual {v8, v13}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1578
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1581
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_2e
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2f

    goto :goto_10

    .line 1589
    :cond_2f
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_30

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom CREATED: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_30
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_31

    .line 1591
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1592
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_f

    .line 1594
    :cond_31
    iput v14, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1597
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 1598
    invoke-virtual {v7, v8, v14}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 1599
    if-nez p5, :cond_34

    .line 1600
    iget-boolean v3, v8, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v3, :cond_32

    .line 1601
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto :goto_11

    .line 1603
    :cond_32
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1604
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1605
    iput-object v13, v8, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto :goto_11

    .line 1586
    :cond_33
    :goto_10
    invoke-virtual {v8, v12}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1587
    const/4 v12, 0x1

    .line 1613
    :cond_34
    :goto_11
    iget v3, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v3, v12, :cond_35

    .line 1614
    const-string v3, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToState: Fragment state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " not updated inline; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "expected state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iput v12, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1618
    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    .line 3208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 3209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3210
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStopped:Z

    .line 3211
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3212
    .local v1, "addedCount":I
    nop

    .line 3212
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3213
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3214
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 3215
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->noteStateNotSaved()V

    .line 3212
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3218
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 3696
    move-object/from16 v8, p4

    const-string v0, "fragment"

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3697
    return-object v1

    .line 3700
    :cond_0
    const-string v0, "class"

    invoke-interface {v8, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "fname":Ljava/lang/String;
    sget-object v2, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 3702
    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3703
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3705
    .end local v0    # "fname":Ljava/lang/String;
    .local v11, "fname":Ljava/lang/String;
    :cond_1
    move-object v11, v0

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 3706
    .local v12, "id":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3707
    .local v13, "tag":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 3709
    iget-object v4, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3712
    return-object v1

    .line 3715
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    :cond_3
    move v14, v2

    .line 3716
    .local v14, "containerId":I
    if-ne v14, v0, :cond_4

    if-ne v12, v0, :cond_4

    if-nez v13, :cond_4

    .line 3717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3724
    :cond_4
    if-eq v12, v0, :cond_5

    invoke-virtual {v6, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    .line 3725
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    if-nez v2, :cond_6

    if-eqz v13, :cond_6

    .line 3726
    invoke-virtual {v6, v13}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3728
    :cond_6
    if-nez v2, :cond_7

    if-eq v14, v0, :cond_7

    .line 3729
    invoke-virtual {v6, v14}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3732
    :cond_7
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3733
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3732
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_8
    if-nez v2, :cond_a

    .line 3736
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0, v7, v11, v1}, Landroid/support/v4/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3737
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 3738
    if-eqz v12, :cond_9

    move v1, v12

    goto :goto_1

    :cond_9
    move v1, v14

    :goto_1
    iput v1, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 3739
    iput v14, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 3740
    iput-object v13, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 3741
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3742
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3743
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3744
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v8, v2}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3745
    invoke-virtual {v6, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 3771
    move-object v5, v0

    goto :goto_2

    .line 3747
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    iget-boolean v0, v2, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_b

    .line 3750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3751
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3752
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3757
    :cond_b
    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3758
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3762
    iget-boolean v0, v2, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_c

    .line 3763
    iget-object v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v8, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3771
    :cond_c
    move-object v5, v2

    .line 3771
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .local v5, "fragment":Landroid/support/v4/app/Fragment;
    :goto_2
    iget v0, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v3, :cond_d

    iget-boolean v0, v5, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    .line 3772
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v7, v5

    move v5, v15

    .line 3772
    .end local v5    # "fragment":Landroid/support/v4/app/Fragment;
    .local v7, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_3

    .line 3774
    .end local v7    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v5    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_d
    move-object v7, v5

    .line 3774
    .end local v5    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v7    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 3777
    :goto_3
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 3778
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3781
    :cond_e
    if-eqz v12, :cond_f

    .line 3782
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 3784
    :cond_f
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3785
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3787
    :cond_10
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 3792
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1257
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1258
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1261
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1264
    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1266
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 821
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 822
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 843
    if-gez p1, :cond_0

    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 847
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 832
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 833
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 826
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 827
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 851
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 852
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 853
    if-gez p1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 837
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 838
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2748
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2749
    return v1

    .line 2751
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2752
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2753
    .local v2, "last":I
    if-gez v2, :cond_1

    .line 2754
    return v1

    .line 2756
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    .end local v2    # "last":I
    goto/16 :goto_4

    .line 2759
    :cond_2
    const/4 v2, -0x1

    .line 2760
    .local v2, "index":I
    if-nez p3, :cond_3

    if-ltz p4, :cond_a

    .line 2763
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .line 2764
    .end local v2    # "index":I
    .local v3, "index":I
    move v2, v3

    .line 2764
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_0
    if-ltz v2, :cond_6

    .line 2765
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 2766
    .local v3, "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_4

    invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2767
    goto :goto_1

    .line 2769
    :cond_4
    if-ltz p4, :cond_5

    iget v4, v3, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_5

    .line 2770
    goto :goto_1

    .line 2772
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 2773
    .end local v3    # "bss":Landroid/support/v4/app/BackStackRecord;
    goto :goto_0

    .line 2774
    :cond_6
    :goto_1
    if-gez v2, :cond_7

    .line 2775
    return v1

    .line 2777
    :cond_7
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    .line 2778
    add-int/lit8 v2, v2, -0x1

    .line 2780
    :goto_2
    if-ltz v2, :cond_a

    .line 2781
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 2782
    .restart local v3    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_8

    invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-ltz p4, :cond_a

    iget v4, v3, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_a

    .line 2784
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 2785
    goto :goto_2

    .line 2791
    .end local v3    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_b

    .line 2792
    return v1

    .line 2794
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2794
    .local v1, "i":I
    :goto_3
    if-le v1, v2, :cond_c

    .line 2795
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2799
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_c
    :goto_4
    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 922
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 926
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 2
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3422
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;-><init>(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1936
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1938
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1939
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1940
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1941
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1943
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1945
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1946
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1948
    :cond_3
    return-void

    .line 1941
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 915
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 918
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .line 2731
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2732
    const/4 v0, 0x0

    .line 2732
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2733
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2736
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 16
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    move-object/from16 v1, p0

    .line 3054
    if-nez p1, :cond_0

    return-void

    .line 3055
    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Landroid/support/v4/app/FragmentManagerState;

    .line 3056
    .local v2, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v3, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-nez v3, :cond_1

    return-void

    .line 3058
    :cond_1
    const/4 v3, 0x0

    .line 3059
    .local v3, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v4, 0x0

    .line 3063
    .local v4, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ViewModelStore;>;"
    const/4 v5, 0x0

    if-eqz p2, :cond_7

    .line 3064
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v7

    .line 3065
    .local v7, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v3

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v4

    .line 3067
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 3068
    .local v8, "count":I
    :goto_0
    const/4 v9, 0x0

    .line 3068
    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_7

    .line 3069
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 3070
    .local v10, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreAllState: re-attaching retained "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_3
    const/4 v11, 0x0

    .line 3072
    .local v11, "index":I
    :goto_2
    iget-object v12, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v12, v12

    if-ge v11, v12, :cond_4

    iget-object v12, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v12, v12, v11

    iget v12, v12, Landroid/support/v4/app/FragmentState;->mIndex:I

    iget v13, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eq v12, v13, :cond_4

    .line 3073
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3075
    :cond_4
    iget-object v12, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v12, v12

    if-ne v11, v12, :cond_5

    .line 3076
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find active fragment with index "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v12}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3079
    :cond_5
    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v6, v6, v11

    .line 3080
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3081
    iput-object v5, v10, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3082
    const/4 v12, 0x0

    iput v12, v10, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 3083
    iput-boolean v12, v10, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3084
    iput-boolean v12, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3085
    iput-object v5, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3086
    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v12, :cond_6

    .line 3087
    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v13, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3088
    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v13, "android:view_state"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    iput-object v12, v10, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3090
    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v12, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3068
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v10    # "f":Landroid/support/v4/app/Fragment;
    .end local v11    # "index":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 3097
    .end local v7    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_7
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v7, v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3098
    const/4 v6, 0x0

    .line 3098
    .local v6, "i":I
    :goto_3
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v7, v7

    if-ge v6, v7, :cond_c

    .line 3099
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v7, v7, v6

    .line 3100
    .local v7, "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v7, :cond_b

    .line 3101
    const/4 v8, 0x0

    .line 3102
    .local v8, "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_8

    .line 3103
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 3105
    .end local v8    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    .local v14, "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_8
    move-object v14, v8

    const/4 v8, 0x0

    .line 3106
    .local v8, "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 3107
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Landroid/arch/lifecycle/ViewModelStore;

    .line 3109
    .end local v8    # "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    .local v15, "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    :cond_9
    move-object v15, v8

    iget-object v9, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v10, v1, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iget-object v11, v1, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    move-object v8, v7

    move-object v12, v14

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;Landroid/arch/lifecycle/ViewModelStore;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 3111
    .local v8, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreAllState: active #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_a
    iget-object v9, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v10, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3116
    iput-object v5, v7, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 3098
    .end local v7    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v8    # "f":Landroid/support/v4/app/Fragment;
    .end local v14    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    .end local v15    # "viewModelStore":Landroid/arch/lifecycle/ViewModelStore;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3121
    .end local v6    # "i":I
    :cond_c
    if-eqz p2, :cond_f

    .line 3122
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v6

    .line 3123
    .local v6, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v6, :cond_d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    .line 3124
    .local v7, "count":I
    :goto_4
    const/4 v8, 0x0

    .line 3124
    .local v8, "i":I
    :goto_5
    if-ge v8, v7, :cond_f

    .line 3125
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 3126
    .local v9, "f":Landroid/support/v4/app/Fragment;
    iget v10, v9, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v10, :cond_e

    .line 3127
    iget-object v10, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v11, v9, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 3128
    iget-object v10, v9, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v10, :cond_e

    .line 3129
    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Re-attaching retained fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " target no longer exists: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    .end local v9    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3137
    .end local v6    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_f
    iget-object v6, v1, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3138
    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v6, :cond_13

    .line 3139
    const/4 v6, 0x0

    .line 3139
    .local v6, "i":I
    :goto_6
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v7, v7

    if-ge v6, v7, :cond_13

    .line 3140
    iget-object v7, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 3141
    .local v7, "f":Landroid/support/v4/app/Fragment;
    if-nez v7, :cond_10

    .line 3142
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No instantiated fragment for index #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3145
    :cond_10
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 3146
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_11

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: added #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :cond_11
    iget-object v8, v1, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3148
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Already added!"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3150
    :cond_12
    iget-object v8, v1, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v8

    .line 3151
    :try_start_0
    iget-object v9, v1, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    monitor-exit v8

    .line 3139
    .end local v7    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3152
    .restart local v7    # "f":Landroid/support/v4/app/Fragment;
    :catchall_0
    move-exception v0

    move-object v5, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3157
    .end local v6    # "i":I
    .end local v7    # "f":Landroid/support/v4/app/Fragment;
    :cond_13
    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v6, :cond_16

    .line 3158
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3159
    const/4 v5, 0x0

    .line 3159
    .local v5, "i":I
    :goto_7
    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v6, v6

    if-ge v5, v6, :cond_17

    .line 3160
    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v6

    .line 3161
    .local v6, "bse":Landroid/support/v4/app/BackStackRecord;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_14

    .line 3162
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    new-instance v7, Landroid/support/v4/util/LogWriter;

    const-string v8, "FragmentManager"

    invoke-direct {v7, v8}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3165
    .local v7, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3166
    .local v8, "pw":Ljava/io/PrintWriter;
    const-string v9, "  "

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3167
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 3167
    .end local v7    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    goto :goto_8

    .line 3169
    :cond_14
    const/4 v10, 0x0

    :goto_8
    iget-object v7, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    iget v7, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v7, :cond_15

    .line 3171
    iget v7, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v1, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 3159
    .end local v6    # "bse":Landroid/support/v4/app/BackStackRecord;
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 3175
    .end local v5    # "i":I
    :cond_16
    iput-object v5, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3178
    :cond_17
    iget v5, v2, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v5, :cond_18

    .line 3179
    iget-object v5, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v6, v2, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iput-object v5, v1, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3181
    :cond_18
    iget v5, v2, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v5, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 3182
    return-void
.end method

.method retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 1

    .line 2803
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerImpl;->setRetaining(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 2804
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 11

    .line 2941
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2942
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2943
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2945
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2948
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 2953
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2954
    .local v1, "N":I
    new-array v2, v1, [Landroid/support/v4/app/FragmentState;

    .line 2955
    .local v2, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v3, 0x0

    .line 2956
    .local v3, "haveFragments":Z
    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    .line 2956
    .local v3, "i":I
    .local v5, "haveFragments":Z
    :goto_0
    if-ge v3, v1, :cond_7

    .line 2957
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 2958
    .local v6, "f":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_6

    .line 2959
    iget v7, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v7, :cond_1

    .line 2960
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2965
    :cond_1
    const/4 v5, 0x1

    .line 2967
    new-instance v7, Landroid/support/v4/app/FragmentState;

    invoke-direct {v7, v6}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 2968
    .local v7, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v7, v2, v3

    .line 2970
    iget v8, v6, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_4

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_4

    .line 2971
    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2973
    iget-object v8, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_5

    .line 2974
    iget-object v8, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v8, :cond_2

    .line 2975
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2979
    :cond_2
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_3

    .line 2980
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2982
    :cond_3
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 2984
    iget v8, v6, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_5

    .line 2985
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v6, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2992
    :cond_4
    iget-object v8, v6, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2995
    :cond_5
    :goto_1
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    .end local v6    # "f":Landroid/support/v4/app/Fragment;
    .end local v7    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3000
    .end local v3    # "i":I
    :cond_7
    if-nez v5, :cond_9

    .line 3001
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    const-string v4, "saveAllState: no fragments!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_8
    return-object v0

    .line 3005
    :cond_9
    const/4 v0, 0x0

    .line 3006
    .local v0, "added":[I
    const/4 v3, 0x0

    .line 3009
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3010
    if-lez v1, :cond_c

    .line 3011
    new-array v0, v1, [I

    .line 3012
    const/4 v6, 0x0

    .line 3012
    .local v6, "i":I
    :goto_2
    if-ge v6, v1, :cond_c

    .line 3013
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v7, v0, v6

    .line 3014
    aget v7, v0, v6

    if-gez v7, :cond_a

    .line 3015
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3016
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3015
    invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3019
    :cond_a
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 3020
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3021
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3020
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3027
    .end local v6    # "i":I
    :cond_c
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    .line 3028
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3029
    if-lez v1, :cond_e

    .line 3030
    new-array v3, v1, [Landroid/support/v4/app/BackStackState;

    .line 3031
    nop

    .line 3031
    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_e

    .line 3032
    new-instance v6, Landroid/support/v4/app/BackStackState;

    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v6, v7}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v6, v3, v4

    .line 3033
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3034
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3033
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3039
    .end local v4    # "i":I
    :cond_e
    new-instance v4, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v4}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 3040
    .local v4, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v2, v4, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 3041
    iput-object v0, v4, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 3042
    iput-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 3043
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_f

    .line 3044
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v6, v4, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3046
    :cond_f
    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v6, v4, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3047
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    .line 3048
    return-object v4

    .line 2949
    .end local v0    # "added":[I
    .end local v1    # "N":I
    .end local v2    # "active":[Landroid/support/v4/app/FragmentState;
    .end local v3    # "backStack":[Landroid/support/v4/app/BackStackState;
    .end local v4    # "fms":Landroid/support/v4/app/FragmentManagerState;
    .end local v5    # "haveFragments":Z
    :cond_10
    :goto_4
    return-object v0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 2905
    const/4 v0, 0x0

    .line 2907
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2908
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2910
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2911
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2912
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2913
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2914
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2917
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2918
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 2920
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2921
    if-nez v0, :cond_3

    .line 2922
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2924
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2927
    :cond_4
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2928
    if-nez v0, :cond_5

    .line 2929
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2932
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2935
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 987
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 991
    :cond_0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 992
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 993
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    nop

    :cond_1
    return-object v1

    .line 995
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 2889
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2890
    return-void

    .line 2892
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2893
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 2895
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2897
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2898
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2899
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2900
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2902
    :cond_2
    return-void
.end method

.method saveNonConfig()V
    .locals 10

    .line 2832
    const/4 v0, 0x0

    .line 2833
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2834
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v2, 0x0

    .line 2835
    .local v2, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 2836
    const/4 v3, 0x0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    .line 2836
    .local v0, "i":I
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .local v5, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    :goto_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 2837
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 2838
    .local v6, "f":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_7

    .line 2839
    iget-boolean v7, v6, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_2

    .line 2840
    if-nez v1, :cond_0

    .line 2841
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 2843
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 2845
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_2
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v7, :cond_3

    .line 2849
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2850
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2850
    .local v7, "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    goto :goto_2

    .line 2854
    .end local v7    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_3
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2857
    .restart local v7    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :goto_2
    if-nez v2, :cond_4

    if-eqz v7, :cond_4

    .line 2858
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v8

    .line 2859
    const/4 v8, 0x0

    .line 2859
    .local v8, "j":I
    :goto_3
    if-ge v8, v0, :cond_4

    .line 2860
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2864
    .end local v8    # "j":I
    :cond_4
    if-eqz v2, :cond_5

    .line 2865
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    :cond_5
    if-nez v5, :cond_6

    iget-object v8, v6, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    if-eqz v8, :cond_6

    .line 2868
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v8

    .line 2869
    const/4 v8, 0x0

    .line 2869
    .restart local v8    # "j":I
    :goto_4
    if-ge v8, v0, :cond_6

    .line 2870
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2874
    .end local v8    # "j":I
    :cond_6
    if-eqz v5, :cond_7

    .line 2875
    iget-object v8, v6, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    .end local v6    # "f":Landroid/support/v4/app/Fragment;
    .end local v7    # "child":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2880
    .end local v0    # "i":I
    :cond_8
    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    .line 2880
    .end local v5    # "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .local v2, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/arch/lifecycle/ViewModelStore;>;"
    :cond_9
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    .line 2881
    iput-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    goto :goto_5

    .line 2883
    :cond_a
    new-instance v3, Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v3, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2886
    :goto_5
    return-void
.end method

.method scheduleCommit()V
    .locals 4

    .line 2132
    monitor-enter p0

    .line 2133
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2134
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2135
    .local v0, "postponeReady":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 2136
    .local v1, "pendingReady":Z
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2137
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2140
    .end local v0    # "postponeReady":Z
    .end local v1    # "pendingReady":Z
    :cond_3
    monitor-exit p0

    .line 2141
    return-void

    .line 2140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 2164
    monitor-enter p0

    .line 2165
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2168
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2169
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 2170
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2173
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 2174
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2178
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2182
    :cond_5
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    .end local v0    # "N":I
    :goto_1
    monitor-exit p0

    .line 2186
    return-void

    .line 2185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 3405
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 3406
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3410
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3411
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1973
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1975
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1978
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1980
    :cond_1
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    .line 1875
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1877
    :cond_0
    const/4 v0, 0x0

    .line 1877
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1878
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1879
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 1880
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1877
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1883
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1006
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1014
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3427
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3428
    const/4 v1, 0x0

    .line 3428
    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 3428
    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3429
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    if-ne v3, p1, :cond_0

    .line 3430
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3431
    goto :goto_1

    .line 3428
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3434
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3435
    return-void

    .line 3434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
