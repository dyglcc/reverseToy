.class Landroid/arch/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/ComputableLiveData;

    .line 86
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$2;, "Landroid/arch/lifecycle/ComputableLiveData$2;"
    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 92
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$2;, "Landroid/arch/lifecycle/ComputableLiveData$2;"
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "computed":Z
    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v4}, Landroid/arch/lifecycle/ComputableLiveData;->access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const/4 v0, 0x1

    .line 100
    iget-object v4, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-virtual {v4}, Landroid/arch/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 102
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$300(Landroid/arch/lifecycle/ComputableLiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    .line 117
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :cond_4
    return-void
.end method
