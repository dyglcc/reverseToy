.class Landroid/support/v4/content/ModernAsyncTask$2;
.super Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/content/ModernAsyncTask;

    .line 133
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$2;, "Landroid/support/v4/content/ModernAsyncTask$2;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$2;, "Landroid/support/v4/content/ModernAsyncTask$2;"
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 142
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    nop

    .line 149
    return-object v0

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v3, v3, Landroid/support/v4/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
