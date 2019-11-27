.class public Lcom/adhoc/s;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/adhoc/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/s;->a:Lcom/adhoc/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhoc/s;
    .registers 2

    sget-object v0, Lcom/adhoc/s;->a:Lcom/adhoc/s;

    if-nez v0, :cond_13

    const-class v1, Lcom/adhoc/s;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/adhoc/s;->a:Lcom/adhoc/s;

    if-nez v0, :cond_12

    new-instance v0, Lcom/adhoc/s;

    invoke-direct {v0}, Lcom/adhoc/s;-><init>()V

    sput-object v0, Lcom/adhoc/s;->a:Lcom/adhoc/s;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/adhoc/s;->a:Lcom/adhoc/s;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Lcom/adhoc/u;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adhoc/u;->f()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/adhoc/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    invoke-virtual {v1}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/adhoc/t;)Lcom/adhoc/u;
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/am;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/ak;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/adhoc/x;->a(Lcom/adhoc/t;)Lcom/adhoc/y;

    move-result-object v1

    :try_start_18
    invoke-interface {v1}, Lcom/adhoc/y;->a()Lcom/adhoc/u;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_35

    move-result-object v0

    goto :goto_b

    :catch_1d
    move-exception v1

    invoke-virtual {p1}, Lcom/adhoc/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    const-string v1, "AdhocHttpClient"

    const-string v3, "execute --------IO exception\nurl = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_35
    move-exception v1

    invoke-virtual {p1}, Lcom/adhoc/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    const-string v1, "AdhocHttpClient"

    const-string v3, "execute --------IO exception\nurl = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Lcom/adhoc/t;Lcom/adhoc/r;)Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/am;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adhoc/ak;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/adhoc/x;->a(Lcom/adhoc/t;)Lcom/adhoc/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/adhoc/y;->a(Lcom/adhoc/r;)V

    const/4 v0, 0x1

    goto :goto_9
.end method
