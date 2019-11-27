.class public Lcom/adhoc/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adhoc/f;->a:Z

    sput-boolean v0, Lcom/adhoc/f;->b:Z

    sput-wide v4, Lcom/adhoc/f;->c:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/adhoc/f;->d:J

    const-string v0, "get_flag_gap_time_"

    sget-wide v2, Lcom/adhoc/f;->d:J

    invoke-static {v0, v2, v3}, Lcom/adhoc/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/f;->d:J

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ExperimentUpdate init end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "get_experiment_update_timestamp"

    invoke-static {v0, v4, v5}, Lcom/adhoc/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/f;->c:J

    return-void
.end method

.method public static a()V
    .registers 3

    sget-boolean v0, Lcom/adhoc/f;->b:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adhoc/am;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_23
    const-string v0, "sub process get flag"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adhoc/f;->b:Z

    sget-object v0, Lcom/adhoc/b$a;->c:Ljava/lang/String;

    const-string v1, "{app_id}"

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/t;->c()Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v1

    new-instance v2, Lcom/adhoc/f$1;

    invoke-direct {v2}, Lcom/adhoc/f$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/adhoc/s;->a(Lcom/adhoc/t;Lcom/adhoc/r;)Z

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 8

    sput-wide p1, Lcom/adhoc/f;->d:J

    const-string v0, "get_flag_gap_time_"

    sget-wide v2, Lcom/adhoc/f;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/adhoc/f;->a:Z

    return-void
.end method

.method static b()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/adhoc/f;->c:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/adhoc/f;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lcom/adhoc/f;->b:Z

    return p0
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adhoc/f;->a(Z)V

    return-void
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/adhoc/f;->a:Z

    return v0
.end method

.method static e()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/adhoc/am;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "is_get_new_flag"

    invoke-static {v1, v0}, Lcom/adhoc/p;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {}, Lcom/adhoc/i;->d()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_30
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic f()V
    .registers 0

    invoke-static {}, Lcom/adhoc/f;->g()V

    return-void
.end method

.method private static g()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/adhoc/f;->c:J

    const-string v0, "get_experiment_update_timestamp"

    sget-wide v2, Lcom/adhoc/f;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
