.class final Lcom/adhocsdk/zxing/w;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

.field private final c:Lcom/adhocsdk/zxing/h;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/zxing/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/w;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/w;->d:Z

    new-instance v0, Lcom/adhocsdk/zxing/h;

    invoke-direct {v0}, Lcom/adhocsdk/zxing/h;-><init>()V

    iput-object v0, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    iget-object v0, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    invoke-virtual {v0, p2}, Lcom/adhocsdk/zxing/h;->a(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/adhocsdk/zxing/w;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    return-void
.end method

.method private a([BII)V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/w;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getCameraManager()Lcom/adhocsdk/zxing/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/s;->e()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v1, v2}, Lcom/adhocsdk/zxing/w;->b([BII)[B

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/adhocsdk/zxing/w;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v0, Lcom/adhocsdk/zxing/j;

    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/adhocsdk/zxing/j;-><init>([BIIIIIIZ)V

    if-eqz v0, :cond_a4

    new-instance v1, Lcom/adhocsdk/zxing/c;

    new-instance v2, Lcom/adhocsdk/zxing/ai;

    invoke-direct {v2, v0}, Lcom/adhocsdk/zxing/ai;-><init>(Lcom/adhocsdk/zxing/g;)V

    invoke-direct {v1, v2}, Lcom/adhocsdk/zxing/c;-><init>(Lcom/adhocsdk/zxing/b;)V

    :try_start_3f
    iget-object v0, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    invoke-virtual {v0, v1}, Lcom/adhocsdk/zxing/h;->a(Lcom/adhocsdk/zxing/c;)Lcom/adhocsdk/zxing/m;
    :try_end_44
    .catch Lcom/adhocsdk/zxing/l; {:try_start_3f .. :try_end_44} :catch_89
    .catchall {:try_start_3f .. :try_end_44} :catchall_91

    move-result-object v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/h;->a()V

    :goto_4a
    iget-object v1, p0, Lcom/adhocsdk/zxing/w;->b:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v1}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v0, :cond_98

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/adhocsdk/zxing/w;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found barcode in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_88

    const/16 v2, 0x3eb

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v0

    iget-object v0, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/h;->a()V

    move-object v0, v9

    goto :goto_4a

    :catchall_91
    move-exception v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/w;->c:Lcom/adhocsdk/zxing/h;

    invoke-virtual {v1}, Lcom/adhocsdk/zxing/h;->a()V

    throw v0

    :cond_98
    if-eqz v1, :cond_88

    const/16 v0, 0x3ea

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_88

    :cond_a4
    move-object v0, v9

    goto :goto_4a
.end method

.method private b([BII)[B
    .registers 11

    const/4 v1, 0x0

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v3, v1

    move v2, v1

    :goto_b
    if-ge v3, p2, :cond_21

    add-int/lit8 v0, p3, -0x1

    :goto_f
    if-ltz v0, :cond_1d

    mul-int v5, v0, p2

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_21
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_2c
    if-lez v3, :cond_54

    move v0, v1

    :goto_2f
    div-int/lit8 v5, p3, 0x2

    if-ge v0, v5, :cond_50

    mul-int v5, p2, p3

    mul-int v6, v0, p2

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, -0x1

    mul-int v5, p2, p3

    mul-int v6, v0, p2

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, -0x1

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_50
    add-int/lit8 v0, v3, -0x2

    move v3, v0

    goto :goto_2c

    :cond_54
    return-object v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/w;->d:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/adhocsdk/zxing/w;->a([BII)V

    goto :goto_6

    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/w;->d:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_6
.end method
