.class final Lcom/adhocsdk/zxing/x;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/x;->a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/x;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/adhocsdk/zxing/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/x;->b:Ljava/util/Map;

    if-eqz p2, :cond_1e

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_1e
    const-class v0, Lcom/adhocsdk/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    sget-object v0, Lcom/adhocsdk/zxing/v;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/adhocsdk/zxing/v;->b:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/adhocsdk/zxing/v;->d:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/adhocsdk/zxing/v;->e:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/adhocsdk/zxing/v;->f:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/adhocsdk/zxing/v;->g:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_42
    iget-object v0, p0, Lcom/adhocsdk/zxing/x;->b:Ljava/util/Map;

    sget-object v1, Lcom/adhocsdk/zxing/e;->c:Lcom/adhocsdk/zxing/e;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_52

    iget-object v0, p0, Lcom/adhocsdk/zxing/x;->b:Ljava/util/Map;

    sget-object v1, Lcom/adhocsdk/zxing/e;->e:Lcom/adhocsdk/zxing/e;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    const-string v0, "DecodeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adhocsdk/zxing/x;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/adhocsdk/zxing/x;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8

    :goto_5
    iget-object v0, p0, Lcom/adhocsdk/zxing/x;->d:Landroid/os/Handler;

    return-object v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public run()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/adhocsdk/zxing/w;

    iget-object v1, p0, Lcom/adhocsdk/zxing/x;->a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    iget-object v2, p0, Lcom/adhocsdk/zxing/x;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/w;-><init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/x;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/adhocsdk/zxing/x;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
