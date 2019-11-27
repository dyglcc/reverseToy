.class public final Lcom/adhocsdk/zxing/s;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/adhocsdk/zxing/r;

.field private final d:Lcom/adhocsdk/zxing/t;

.field private e:Landroid/hardware/Camera;

.field private f:Lcom/adhocsdk/zxing/q;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/zxing/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adhocsdk/zxing/s;->j:I

    iput-object p1, p0, Lcom/adhocsdk/zxing/s;->b:Landroid/content/Context;

    new-instance v0, Lcom/adhocsdk/zxing/r;

    invoke-direct {v0, p1}, Lcom/adhocsdk/zxing/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    new-instance v0, Lcom/adhocsdk/zxing/t;

    iget-object v1, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    invoke-direct {v0, v1}, Lcom/adhocsdk/zxing/t;-><init>(Lcom/adhocsdk/zxing/r;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->d:Lcom/adhocsdk/zxing/t;

    return-void
.end method

.method private a(I)Landroid/hardware/Camera;
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-nez v5, :cond_10

    sget-object v1, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    const-string v2, "No cameras!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    if-ltz p1, :cond_3b

    const/4 v1, 0x1

    move v4, v1

    :goto_14
    if-eqz v4, :cond_3d

    move v2, p1

    :goto_17
    if-ge v2, v5, :cond_51

    sget-object v1, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening camera #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    :goto_35
    if-eqz v1, :cond_f

    iput v2, p0, Lcom/adhocsdk/zxing/s;->j:I

    move-object v0, v1

    goto :goto_f

    :cond_3b
    move v4, v3

    goto :goto_14

    :cond_3d
    move v1, v3

    :goto_3e
    if-ge v1, v5, :cond_79

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_4e

    move v2, v1

    goto :goto_17

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_51
    if-eqz v4, :cond_6d

    sget-object v1, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested camera does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_35

    :cond_6d
    sget-object v1, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    const-string v4, "No camera facing 0; returning camera #0"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    goto :goto_35

    :cond_79
    move v2, v1

    goto :goto_17
.end method


# virtual methods
.method public declared-synchronized a(II)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/s;->h:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/r;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_11

    iget p1, v0, Landroid/graphics/Point;->x:I

    :cond_11
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_17

    iget p2, v0, Landroid/graphics/Point;->y:I

    :cond_17
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/adhocsdk/zxing/s;->g:Landroid/graphics/Rect;

    sget-object v0, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated manual framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adhocsdk/zxing/s;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4d

    :goto_46
    monitor-exit p0

    return-void

    :cond_48
    :try_start_48
    iput p1, p0, Lcom/adhocsdk/zxing/s;->k:I

    iput p2, p0, Lcom/adhocsdk/zxing/s;->l:I
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4d

    goto :goto_46

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/Handler;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/adhocsdk/zxing/s;->i:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/adhocsdk/zxing/s;->d:Lcom/adhocsdk/zxing/t;

    invoke-virtual {v1, p1, p2}, Lcom/adhocsdk/zxing/t;->a(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/adhocsdk/zxing/s;->d:Lcom/adhocsdk/zxing/t;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/adhocsdk/zxing/s;->j:I

    invoke-direct {p0, v0}, Lcom/adhocsdk/zxing/s;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Camera.open() failed to return object from driver"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :try_start_18
    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    :cond_1a
    move-object v1, v0

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/s;->h:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/s;->h:Z

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    iget v2, p0, Lcom/adhocsdk/zxing/s;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/r;->a(Landroid/hardware/Camera;I)V

    iget v0, p0, Lcom/adhocsdk/zxing/s;->k:I

    if-lez v0, :cond_3e

    iget v0, p0, Lcom/adhocsdk/zxing/s;->l:I

    if-lez v0, :cond_3e

    iget v0, p0, Lcom/adhocsdk/zxing/s;->k:I

    iget v2, p0, Lcom/adhocsdk/zxing/s;->l:I

    invoke-virtual {p0, v0, v2}, Lcom/adhocsdk/zxing/s;->a(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adhocsdk/zxing/s;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/adhocsdk/zxing/s;->l:I

    :cond_3e
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_15

    move-result-object v0

    if-nez v0, :cond_50

    const/4 v0, 0x0

    :goto_45
    :try_start_45
    iget-object v2, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/adhocsdk/zxing/r;->a(Landroid/hardware/Camera;Z)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_4b} :catch_55
    .catchall {:try_start_45 .. :try_end_4b} :catchall_15

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_15

    monitor-exit p0

    return-void

    :cond_50
    :try_start_50
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :catch_55
    move-exception v2

    sget-object v2, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to saved camera params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4b

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_50 .. :try_end_7e} :catchall_15

    :try_start_7e
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/r;->a(Landroid/hardware/Camera;Z)V
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_87} :catch_88
    .catchall {:try_start_7e .. :try_end_87} :catchall_15

    goto :goto_4b

    :catch_88
    move-exception v0

    :try_start_89
    sget-object v0, Lcom/adhocsdk/zxing/s;->a:Ljava/lang/String;

    const-string v2, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_15

    goto :goto_4b
.end method

.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->g:Landroid/graphics/Rect;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/adhocsdk/zxing/s;->i:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adhocsdk/zxing/s;->i:Z

    new-instance v1, Lcom/adhocsdk/zxing/q;

    iget-object v2, p0, Lcom/adhocsdk/zxing/s;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/adhocsdk/zxing/q;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/adhocsdk/zxing/s;->f:Lcom/adhocsdk/zxing/q;
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

.method public declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->f:Lcom/adhocsdk/zxing/q;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->f:Lcom/adhocsdk/zxing/q;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/q;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/s;->f:Lcom/adhocsdk/zxing/q;

    :cond_d
    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/s;->i:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->d:Lcom/adhocsdk/zxing/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adhocsdk/zxing/t;->a(Landroid/os/Handler;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/s;->i:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/s;->c:Lcom/adhocsdk/zxing/r;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/r;->a()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
