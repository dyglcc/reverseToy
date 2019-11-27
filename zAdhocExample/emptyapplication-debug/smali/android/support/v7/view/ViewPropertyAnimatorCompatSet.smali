.class public Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 120
    new-instance v0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 94
    .local v1, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 95
    .end local v1    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 97
    return-void
.end method

.method onAnimationsEnded()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 87
    return-void
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "animator"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 53
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-object p0
.end method

.method public playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 2
    .param p1, "anim1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "anim2"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 61
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 63
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "duration"    # J

    .line 100
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 101
    iput-wide p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 103
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 107
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 114
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 117
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 7

    .line 68
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 70
    .local v1, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 71
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 73
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 76
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 79
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 80
    .end local v1    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 82
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 83
    return-void
.end method
