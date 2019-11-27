.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/content/ModernAsyncTask;

    .line 153
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask$3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 157
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask$3;"
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    .line 166
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 162
    :catch_2
    move-exception v0

    .line 163
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while executing doInBackground()"

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 160
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 171
    return-void
.end method
