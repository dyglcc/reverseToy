.class public Lcom/adhoc/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/j$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/j$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhoc/j;
    .registers 1

    invoke-static {}, Lcom/adhoc/j$a;->a()Lcom/adhoc/j;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/adhoc/adhocsdk/ExperimentFlags;
    .registers 5

    invoke-static {}, Lcom/adhoc/i;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adhoc/j;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhoc/j;->c:Z

    if-eqz v1, :cond_1c

    iput-object v1, p0, Lcom/adhoc/j;->a:Lorg/json/JSONObject;

    new-instance v0, Lcom/adhoc/adhocsdk/ExperimentFlags;

    invoke-direct {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "EXPERIMENT_OK"

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->setFlagState(Ljava/lang/String;)V

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/adhoc/adhocsdk/ExperimentFlags;->getNullExperimentflag()Lcom/adhoc/adhocsdk/ExperimentFlags;

    move-result-object v0

    goto :goto_1b
.end method


# virtual methods
.method public b()Lcom/adhoc/adhocsdk/ExperimentFlags;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/adhoc/j;->d()V

    iget-object v0, p0, Lcom/adhoc/j;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adhoc/j;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    iget-boolean v0, p0, Lcom/adhoc/j;->c:Z

    if-eqz v0, :cond_1d

    :cond_18
    invoke-direct {p0}, Lcom/adhoc/j;->f()Lcom/adhoc/adhocsdk/ExperimentFlags;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/adhoc/adhocsdk/ExperimentFlags;

    iget-object v1, p0, Lcom/adhoc/j;->a:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "EXPERIMENT_OK"

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->setFlagState(Ljava/lang/String;)V

    const-string v1, "from memory cache"

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_1c

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/adhoc/adhocsdk/ExperimentFlags;->getNullExperimentflag()Lcom/adhoc/adhocsdk/ExperimentFlags;

    move-result-object v0

    goto :goto_1c
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/adhoc/j;->d()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/adhoc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/adhoc/f;->a()V

    goto :goto_9
.end method

.method public d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/adhoc/f;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/adhoc/i;->a()V

    monitor-exit p0

    :cond_b
    :goto_b
    return-void

    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    invoke-static {}, Lcom/adhoc/f;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/adhoc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/adhoc/f;->a()V

    goto :goto_b

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhoc/j;->c:Z

    return-void
.end method
