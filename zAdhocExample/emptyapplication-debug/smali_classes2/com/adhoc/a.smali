.class public Lcom/adhoc/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/adhoc/a;
    .registers 3

    const-class v0, Lcom/adhoc/a;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/adhoc/a$a;->a()Lcom/adhoc/a;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/adhoc/p;->b()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_f

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iput-object v0, p0, Lcom/adhoc/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/adhoc/a;->a:Ljava/lang/String;

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const-string v0, "executeGet client from sdcard error"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhoc/a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADHOC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_e

    :catch_31
    move-exception v0

    const-string v0, "ADHOC_123-456-abc-efg"

    goto :goto_e
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/adhoc/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/a;->a:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
