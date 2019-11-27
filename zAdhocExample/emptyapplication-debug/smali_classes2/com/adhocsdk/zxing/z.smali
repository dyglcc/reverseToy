.class public final Lcom/adhocsdk/zxing/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhocsdk/zxing/z$a;,
        Lcom/adhocsdk/zxing/z$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/z;->b:Landroid/app/Activity;

    new-instance v0, Lcom/adhocsdk/zxing/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adhocsdk/zxing/z$b;-><init>(Lcom/adhocsdk/zxing/z;Lcom/adhocsdk/zxing/z$1;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/z;->c:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/z;->d:Z

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/z;->a()V

    return-void
.end method

.method static synthetic a(Lcom/adhocsdk/zxing/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/z;->f()V

    return-void
.end method

.method static synthetic b(Lcom/adhocsdk/zxing/z;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/z;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/adhocsdk/zxing/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/z;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/z;->e:Landroid/os/AsyncTask;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/adhocsdk/zxing/z;->f()V

    new-instance v0, Lcom/adhocsdk/zxing/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adhocsdk/zxing/z$a;-><init>(Lcom/adhocsdk/zxing/z;Lcom/adhocsdk/zxing/z$1;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/z;->e:Landroid/os/AsyncTask;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    :try_start_c
    iget-object v0, p0, Lcom/adhocsdk/zxing/z;->e:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_16
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_16} :catch_18
    .catchall {:try_start_c .. :try_end_16} :catchall_21

    :goto_16
    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    :try_start_19
    sget-object v0, Lcom/adhocsdk/zxing/z;->a:Ljava/lang/String;

    const-string v1, "Couldn\'t schedule inactivity task; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_16

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/adhocsdk/zxing/z;->f()V

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/z;->d:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/adhocsdk/zxing/z;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adhocsdk/zxing/z;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/z;->d:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    sget-object v0, Lcom/adhocsdk/zxing/z;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/z;->d:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/adhocsdk/zxing/z;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/z;->a()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/adhocsdk/zxing/z;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adhocsdk/zxing/z;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/z;->d:Z
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    goto :goto_c

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 1

    invoke-direct {p0}, Lcom/adhocsdk/zxing/z;->f()V

    return-void
.end method
