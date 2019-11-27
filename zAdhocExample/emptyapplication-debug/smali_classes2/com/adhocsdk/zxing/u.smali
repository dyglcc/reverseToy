.class public final Lcom/adhocsdk/zxing/u;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhocsdk/zxing/u$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

.field private final c:Lcom/adhocsdk/zxing/x;

.field private final d:Lcom/adhocsdk/zxing/s;

.field private e:Lcom/adhocsdk/zxing/u$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/zxing/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/adhocsdk/zxing/s;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adhocsdk/zxing/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/u;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    new-instance v0, Lcom/adhocsdk/zxing/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/adhocsdk/zxing/x;-><init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/x;->start()V

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->b:Lcom/adhocsdk/zxing/u$a;

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    iput-object p4, p0, Lcom/adhocsdk/zxing/u;->d:Lcom/adhocsdk/zxing/s;

    invoke-virtual {p4}, Lcom/adhocsdk/zxing/s;->c()V

    invoke-direct {p0}, Lcom/adhocsdk/zxing/u;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    sget-object v1, Lcom/adhocsdk/zxing/u$a;->b:Lcom/adhocsdk/zxing/u$a;

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->a:Lcom/adhocsdk/zxing/u$a;

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->d:Lcom/adhocsdk/zxing/s;

    iget-object v1, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/x;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/s;->a(Landroid/os/Handler;I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->c:Lcom/adhocsdk/zxing/u$a;

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->d:Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/s;->d()V

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/x;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_18
    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/adhocsdk/zxing/x;->join(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_2a

    :goto_1f
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/u;->removeMessages(I)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/u;->removeMessages(I)V

    return-void

    :catch_2a
    move-exception v0

    goto :goto_1f
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/adhocsdk/zxing/u;->b()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_21

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->b:Lcom/adhocsdk/zxing/u$a;

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    iget-object v1, p0, Lcom/adhocsdk/zxing/u;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adhocsdk/zxing/m;

    invoke-virtual {v1, v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->handleDecode(Lcom/adhocsdk/zxing/m;)V

    goto :goto_9

    :cond_21
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_39

    sget-object v0, Lcom/adhocsdk/zxing/u$a;->a:Lcom/adhocsdk/zxing/u$a;

    iput-object v0, p0, Lcom/adhocsdk/zxing/u;->e:Lcom/adhocsdk/zxing/u$a;

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->d:Lcom/adhocsdk/zxing/s;

    iget-object v1, p0, Lcom/adhocsdk/zxing/u;->c:Lcom/adhocsdk/zxing/x;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/x;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/s;->a(Landroid/os/Handler;I)V

    goto :goto_9

    :cond_39
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/adhocsdk/zxing/u;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/adhocsdk/zxing/u;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->finish()V

    goto :goto_9
.end method
