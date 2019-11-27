.class public final Lcom/adhocsdk/zxing/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Landroid/media/MediaPlayer;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/adhocsdk/zxing/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/y;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/adhocsdk/zxing/y;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/y;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/y;->e:Z

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/y;->d:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/adhocsdk/zxing/y;->a(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/y;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_e
    iget-boolean v0, p0, Lcom/adhocsdk/zxing/y;->e:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/y;->c:Landroid/media/MediaPlayer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    monitor-enter p0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/adhocsdk/zxing/y;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    :goto_a
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/y;->close()V

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/y;->a()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_a

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
