.class final Landroid/arch/core/executor/ArchTaskExecutor$1;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/executor/ArchTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 45
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
