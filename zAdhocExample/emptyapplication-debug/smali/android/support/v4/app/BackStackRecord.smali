.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SET_PRIMARY_NAV:I = 0x8

.field static final OP_SHOW:I = 0x5

.field static final OP_UNSET_PRIMARY_NAV:I = 0x9

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManagerImpl;

    .line 332
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 333
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 334
    return-void
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 5
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "opcmd"    # I

    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 397
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 398
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 405
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v2, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 407
    if-eqz p3, :cond_2

    .line 408
    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change tag of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_1
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 416
    :cond_2
    if-eqz p1, :cond_5

    .line 417
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_3
    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_4

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_4

    .line 422
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change container ID of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_4
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 429
    :cond_5
    new-instance v2, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v2, p4, p2}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v2}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 430
    return-void

    .line 400
    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be a public static class to be  properly recreated from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z
    .locals 2
    .param p0, "op"    # Landroid/support/v4/app/BackStackRecord$Op;

    .line 1009
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1010
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    .line 1011
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 385
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 386
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 392
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 380
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 372
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 373
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 374
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 375
    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 513
    invoke-static {}, Landroid/support/v4/app/FragmentTransition;->supportsTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 516
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A shared element with the target name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A shared element with the source name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 544
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 549
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 478
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 480
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .line 597
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 603
    .local v0, "numOps":I
    const/4 v1, 0x0

    .line 603
    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 604
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 605
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    .line 606
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 607
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v2    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "opNum":I
    :cond_3
    return-void
.end method

.method public commit()I
    .locals 1

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 4
    .param p1, "allowStateLoss"    # Z

    .line 669
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 674
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 677
    .end local v0    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 678
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0

    .line 681
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 683
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 684
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public commitNow()V
    .locals 2

    .line 647
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 648
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 649
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .line 653
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 654
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 655
    return-void
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 471
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 473
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .line 560
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 565
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 252
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .line 255
    if-eqz p3, :cond_8

    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_2

    .line 266
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_4

    .line 272
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 278
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    :cond_6
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 284
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 291
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 295
    .local v1, "numOps":I
    const/4 v2, 0x0

    .line 295
    .local v2, "opNum":I
    :goto_0
    if-ge v2, v1, :cond_d

    .line 296
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord$Op;

    .line 298
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 308
    :pswitch_0
    const-string v4, "UNSET_PRIMARY_NAV"

    goto :goto_1

    .line 307
    :pswitch_1
    const-string v4, "SET_PRIMARY_NAV"

    goto :goto_1

    .line 306
    :pswitch_2
    const-string v4, "ATTACH"

    goto :goto_1

    .line 305
    :pswitch_3
    const-string v4, "DETACH"

    goto :goto_1

    .line 304
    :pswitch_4
    const-string v4, "SHOW"

    goto :goto_1

    .line 303
    :pswitch_5
    const-string v4, "HIDE"

    goto :goto_1

    .line 302
    :pswitch_6
    const-string v4, "REMOVE"

    goto :goto_1

    .line 301
    :pswitch_7
    const-string v4, "REPLACE"

    goto :goto_1

    .line 300
    :pswitch_8
    const-string v4, "ADD"

    goto :goto_1

    .line 299
    :pswitch_9
    const-string v4, "NULL"

    .line 309
    .local v4, "cmdStr":Ljava/lang/String;
    :goto_1
    nop

    .line 311
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    if-eqz p3, :cond_c

    .line 315
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 316
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_a
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 322
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .end local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v4    # "cmdStr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 330
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "numOps":I
    .end local v2    # "opNum":I
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method executeOps()V
    .locals 8

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 756
    .local v0, "numOps":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 756
    .local v2, "opNum":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 757
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord$Op;

    .line 758
    .local v4, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 759
    .local v5, "f":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_0

    .line 760
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    .line 762
    :cond_0
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    if-eq v6, v3, :cond_1

    packed-switch v6, :pswitch_data_0

    .line 794
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    :pswitch_0
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 792
    goto :goto_1

    .line 788
    :pswitch_1
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 789
    goto :goto_1

    .line 784
    :pswitch_2
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 785
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;)V

    .line 786
    goto :goto_1

    .line 780
    :pswitch_3
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 781
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;)V

    .line 782
    goto :goto_1

    .line 776
    :pswitch_4
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 777
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 778
    goto :goto_1

    .line 772
    :pswitch_5
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 773
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;)V

    .line 774
    goto :goto_1

    .line 768
    :pswitch_6
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 769
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 770
    goto :goto_1

    .line 764
    :cond_1
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 765
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v5, v1}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 766
    nop

    .line 796
    :goto_1
    iget-boolean v6, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v6, :cond_2

    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    if-eq v6, v3, :cond_2

    if-eqz v5, :cond_2

    .line 797
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 756
    .end local v4    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v5    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 800
    .end local v2    # "opNum":I
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_4

    .line 802
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 804
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method executePopOps(Z)V
    .locals 6
    .param p1, "moveToState"    # Z

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 814
    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_3

    .line 815
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 816
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 817
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 818
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    .line 821
    :cond_0
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    if-eq v4, v1, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 853
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :pswitch_0
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 851
    goto :goto_1

    .line 847
    :pswitch_1
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 848
    goto :goto_1

    .line 843
    :pswitch_2
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 844
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;)V

    .line 845
    goto :goto_1

    .line 839
    :pswitch_3
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 840
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;)V

    .line 841
    goto :goto_1

    .line 835
    :pswitch_4
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 836
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;)V

    .line 837
    goto :goto_1

    .line 831
    :pswitch_5
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 832
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 833
    goto :goto_1

    .line 827
    :pswitch_6
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 828
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 829
    goto :goto_1

    .line 823
    :cond_1
    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 824
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 825
    nop

    .line 855
    :goto_1
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_2

    iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    if-eqz v3, :cond_2

    .line 856
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V

    .line 814
    .end local v2    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 859
    .end local v0    # "opNum":I
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 860
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 862
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 11
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 888
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    .line 888
    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 889
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;

    .line 890
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    const/16 v3, 0x9

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 890
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :pswitch_0
    goto/16 :goto_4

    .line 945
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :pswitch_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v5, v3, p2}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 946
    add-int/lit8 v0, v0, 0x1

    .line 948
    iget-object p2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 948
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    goto/16 :goto_4

    .line 897
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 898
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-ne v2, p2, :cond_5

    .line 899
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/BackStackRecord$Op;

    iget-object v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v3, v6}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    .line 901
    const/4 p2, 0x0

    goto :goto_4

    .line 906
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 907
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 908
    .local v5, "containerId":I
    const/4 v6, 0x0

    .line 909
    .local v6, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 909
    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 910
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 911
    .local v8, "old":Landroid/support/v4/app/Fragment;
    iget v9, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v9, v5, :cond_2

    .line 912
    if-ne v8, v2, :cond_0

    .line 913
    const/4 v6, 0x1

    goto :goto_2

    .line 917
    :cond_0
    if-ne v8, p2, :cond_1

    .line 918
    iget-object v9, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v10, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v10, v3, v8}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    .line 920
    const/4 p2, 0x0

    .line 922
    :cond_1
    new-instance v9, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v8}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 923
    .local v9, "removeOp":Landroid/support/v4/app/BackStackRecord$Op;
    iget v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v10, v9, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 924
    iget v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v10, v9, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 925
    iget v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v10, v9, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 926
    iget v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v10, v9, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 927
    iget-object v10, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 928
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 929
    add-int/2addr v0, v4

    .line 909
    .end local v8    # "old":Landroid/support/v4/app/Fragment;
    .end local v9    # "removeOp":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 933
    .end local v7    # "i":I
    :cond_3
    if-eqz v6, :cond_4

    .line 934
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 935
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 937
    :cond_4
    iput v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 938
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "containerId":I
    .end local v6    # "alreadyAdded":Z
    :goto_3
    goto :goto_4

    .line 893
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    nop

    .line 888
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_5
    :goto_4
    add-int/2addr v0, v4

    goto/16 :goto_0

    .line 953
    .end local v0    # "opNum":I
    :cond_6
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
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

    .line 698
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 707
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 363
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 348
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 354
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 343
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 338
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1017
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .line 1021
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .line 1025
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 457
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 459
    return-object p0
.end method

.method interactsWith(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    .local v0, "numOps":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 712
    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 713
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord$Op;

    .line 714
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 715
    .local v4, "fragContainer":I
    :goto_1
    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_1

    .line 716
    const/4 v1, 0x1

    return v1

    .line 712
    .end local v3    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v4    # "fragContainer":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v2    # "opNum":I
    :cond_2
    return v1
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 723
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    .line 724
    return v0

    .line 726
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, "numOps":I
    const/4 v2, -0x1

    .line 728
    .local v2, "lastContainer":I
    move v3, v2

    const/4 v2, 0x0

    .line 728
    .local v2, "opNum":I
    .local v3, "lastContainer":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 729
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord$Op;

    .line 730
    .local v4, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 731
    .local v5, "container":I
    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v3, :cond_5

    .line 732
    move v3, v5

    .line 733
    move v6, p2

    .line 733
    .local v6, "i":I
    :goto_2
    if-ge v6, p3, :cond_5

    .line 734
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/BackStackRecord;

    .line 735
    .local v7, "record":Landroid/support/v4/app/BackStackRecord;
    iget-object v8, v7, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 736
    .local v8, "numThoseOps":I
    const/4 v9, 0x0

    .line 736
    .local v9, "thoseOpIndex":I
    :goto_3
    if-ge v9, v8, :cond_4

    .line 737
    iget-object v10, v7, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/BackStackRecord$Op;

    .line 738
    .local v10, "thatOp":Landroid/support/v4/app/BackStackRecord$Op;
    iget-object v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_2

    iget-object v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v11, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    .line 740
    .local v11, "thatContainer":I
    :goto_4
    if-ne v11, v5, :cond_3

    .line 741
    const/4 v0, 0x1

    return v0

    .line 736
    .end local v10    # "thatOp":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v11    # "thatContainer":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 733
    .end local v7    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v8    # "numThoseOps":I
    .end local v9    # "thoseOpIndex":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 728
    .end local v4    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v5    # "container":I
    .end local v6    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v2    # "opNum":I
    :cond_6
    return v0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1030
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .locals 4

    .line 990
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 990
    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 991
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 992
    .local v2, "op":Landroid/support/v4/app/BackStackRecord$Op;
    invoke-static {v2}, Landroid/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const/4 v0, 0x1

    return v0

    .line 990
    .end local v2    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "opNum":I
    :cond_1
    return v0
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 450
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 452
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 445
    return-object p0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "runnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    return-object p0
.end method

.method public runOnCommitRunnables()V
    .locals 3

    .line 627
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 628
    const/4 v0, 0x0

    .line 628
    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 628
    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 629
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 633
    :cond_1
    return-void
.end method

.method public setAllowOptimization(Z)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "allowOptimization"    # Z

    .line 665
    invoke-virtual {p0, p1}, Landroid/support/v4/app/BackStackRecord;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .line 584
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 586
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 592
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 593
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .line 570
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 572
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 577
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 578
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 579
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .line 498
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 499
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 500
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 501
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 502
    return-object p0
.end method

.method setOnStartPostponedListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    .line 1000
    const/4 v0, 0x0

    .line 1000
    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;

    .line 1002
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    invoke-static {v1}, Landroid/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 1000
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "opNum":I
    :cond_1
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 485
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 487
    return-object p0
.end method

.method public setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "reorderingAllowed"    # Z

    .line 659
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 660
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .line 507
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 508
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .line 538
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 539
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 464
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/BackStackRecord$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 466
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 239
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 967
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    .line 967
    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 968
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;

    .line 969
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 969
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    goto :goto_1

    .line 979
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :pswitch_0
    iget-object p2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 980
    goto :goto_1

    .line 982
    :pswitch_1
    const/4 p2, 0x0

    .line 982
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    goto :goto_1

    .line 976
    .restart local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_0
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    goto :goto_1

    .line 972
    :cond_1
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    nop

    .line 967
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .end local v0    # "opNum":I
    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
