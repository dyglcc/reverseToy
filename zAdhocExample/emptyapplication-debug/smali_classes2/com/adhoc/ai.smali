.class public Lcom/adhoc/ai;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/adhoc/ai;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit v1

    return-object p0

    :cond_b
    :try_start_b
    const-string v0, "client_id"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p0}, Lcom/adhoc/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_1e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/adhoc/ai;->a()V

    invoke-static {p0}, Lcom/adhoc/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_32
    const-string p0, ""
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    goto :goto_9

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()V
    .registers 2

    const-string v0, "adhoc_abtest_flags"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiments"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adhoc_abtest_flags_auto_visual"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source_flags"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/i;->e()V

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/g;->f()V

    const/16 v0, 0x4e20

    new-instance v1, Lcom/adhoc/ai$1;

    invoke-direct {v1}, Lcom/adhoc/ai$1;-><init>()V

    invoke-static {v0, v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->asyncGetFlag(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "ADHOC_SHARED_PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;D)Z
    .registers 8

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;J)Z
    .registers 4

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :cond_a
    return p1
.end method

.method public static b(Ljava/lang/String;D)D
    .registers 8

    :try_start_0
    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-wide p1

    :cond_12
    :goto_12
    return-wide p1

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_a
    return p1
.end method

.method public static b(Ljava/lang/String;J)J
    .registers 4

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_a
    return-wide p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 3

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/adhoc/ai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
