.class final Lcom/adhocsdk/zxing/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhocsdk/zxing/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Z

.field private final d:Landroid/hardware/Camera;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/adhocsdk/zxing/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/q;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/adhocsdk/zxing/q;->b:Ljava/util/Collection;

    sget-object v0, Lcom/adhocsdk/zxing/q;->b:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/adhocsdk/zxing/q;->b:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adhocsdk/zxing/q;->d:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adhocsdk/zxing/q;->b:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adhocsdk/zxing/q;->c:Z

    sget-object v1, Lcom/adhocsdk/zxing/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current focus mode \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'; use auto focus? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/adhocsdk/zxing/q;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/q;->a()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/q;->e:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;

    if-nez v0, :cond_19

    new-instance v0, Lcom/adhocsdk/zxing/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adhocsdk/zxing/q$a;-><init>(Lcom/adhocsdk/zxing/q;Lcom/adhocsdk/zxing/q$1;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_24

    :try_start_f
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/q$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;
    :try_end_19
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_19} :catch_1b
    .catchall {:try_start_f .. :try_end_19} :catchall_24

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    sget-object v1, Lcom/adhocsdk/zxing/q;->a:Ljava/lang/String;

    const-string v2, "Could not request auto focus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_19

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/q;->c:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/q;->g:Landroid/os/AsyncTask;

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/q;->e:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/q;->f:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_26

    if-nez v0, :cond_18

    :try_start_10
    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/q;->f:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_18} :catch_1a
    .catchall {:try_start_10 .. :try_end_18} :catchall_26

    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    sget-object v1, Lcom/adhocsdk/zxing/q;->a:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/adhocsdk/zxing/q;->c()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    goto :goto_18

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/adhocsdk/zxing/q;->e:Z

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/q;->c:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/adhocsdk/zxing/q;->d()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    :try_start_b
    iget-object v0, p0, Lcom/adhocsdk/zxing/q;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_12
    .catchall {:try_start_b .. :try_end_10} :catchall_1b

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    sget-object v1, Lcom/adhocsdk/zxing/q;->a:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_10

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/adhocsdk/zxing/q;->f:Z

    invoke-direct {p0}, Lcom/adhocsdk/zxing/q;->c()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
