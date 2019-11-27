.class public Lcom/adhoc/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field private static c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adhoc/p;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 8

    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_9

    invoke-static {p0, p1, p2}, Lcom/adhoc/ai;->b(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_8
    :goto_8
    return-wide p1

    :cond_9
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 p1, 0x0

    goto :goto_8

    :cond_12
    :try_start_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_value"

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/adhoc/p;->c:Landroid/net/Uri;

    const-string v3, "get_long"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_47} :catch_49

    move-result-wide p1

    goto :goto_8

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v1, Lcom/adhoc/p;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_e

    const-string v0, "client_id"

    invoke-static {v0, p0}, Lcom/adhoc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_39

    :cond_c
    :goto_c
    monitor-exit v1

    return-object p0

    :cond_e
    :try_start_e
    const-string v0, "SPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveClientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v2, Lcom/adhoc/p$3;

    invoke-direct {v2, p0}, Lcom/adhoc/p$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adhoc/q;->b(Ljava/lang/Runnable;)V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_39

    goto :goto_c

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    sput-boolean p1, Lcom/adhoc/p;->b:Z

    if-eqz p0, :cond_3a

    :try_start_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".adhoc_provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    const-class v1, Lcom/adhoc/p;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/adhoc/ai;->b(Ljava/lang/String;Z)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_23

    :cond_e
    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v2, Lcom/adhoc/p$1;

    invoke-direct {v2, p0, p1}, Lcom/adhoc/p$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lcom/adhoc/q;->b(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_23

    goto :goto_e

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    const-class v1, Lcom/adhoc/p;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/adhoc/ai;->a(Ljava/lang/String;J)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_23

    :cond_e
    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v2, Lcom/adhoc/p$4;

    invoke-direct {v2, p0, p1}, Lcom/adhoc/p$4;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lcom/adhoc/q;->b(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_23

    goto :goto_e

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/adhoc/p;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Lcom/adhoc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    :cond_a
    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v2, Lcom/adhoc/p$2;

    invoke-direct {v2, p0, p1}, Lcom/adhoc/p$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adhoc/q;->b(Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1f

    goto :goto_a

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SPHelper context is null ------------------- please init AdhocSDK"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 7

    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Lcom/adhoc/ai;->a(Ljava/lang/String;Z)Z

    move-result p1

    :cond_8
    :goto_8
    return p1

    :cond_9
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    goto :goto_8

    :cond_11
    :try_start_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_value"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/adhoc/p;->c:Landroid/net/Uri;

    const-string v3, "get_boolean"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_46} :catch_48

    move-result p1

    goto :goto_8

    :catch_48
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_d

    const-string v0, "client_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ""

    goto :goto_c

    :cond_16
    :try_start_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_47

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/adhoc/p;->c:Landroid/net/Uri;

    const-string v3, "get_clientID"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_41} :catch_43

    move-result-object v0

    goto :goto_c

    :catch_43
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    :cond_47
    const-string v0, ""

    goto :goto_c
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-boolean v0, Lcom/adhoc/p;->b:Z

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Lcom/adhoc/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    invoke-static {}, Lcom/adhoc/p;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, ""

    goto :goto_8

    :cond_12
    :try_start_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_value"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/adhoc/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/adhoc/p;->c:Landroid/net/Uri;

    const-string v3, "get_string"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_47} :catch_49

    move-result-object p1

    goto :goto_8

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static synthetic c()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/adhoc/p;->c:Landroid/net/Uri;

    return-object v0
.end method
