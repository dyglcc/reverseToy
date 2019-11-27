.class public Lcom/adhoc/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/adhoc/d;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhoc/d;->d:Z

    return-void
.end method

.method public static a()Lcom/adhoc/d;
    .registers 1

    sget-object v0, Lcom/adhoc/d;->a:Lcom/adhoc/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/adhoc/d;

    invoke-direct {v0}, Lcom/adhoc/d;-><init>()V

    sput-object v0, Lcom/adhoc/d;->a:Lcom/adhoc/d;

    :cond_b
    sget-object v0, Lcom/adhoc/d;->a:Lcom/adhoc/d;

    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_1e
    if-eqz v1, :cond_28

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1e

    :cond_28
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_32
    const-string v1, "crash-adhoc.log"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/crash/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_69

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_69
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_77
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v1, "CrashHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCrashInfo2File: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_b7} :catch_ba

    :cond_b7
    const/4 v0, 0x1

    goto/16 :goto_7

    :catch_ba
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "CrashHandler"

    const-string v1, "run -------- "

    invoke-static {v0, v1}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/adhoc/d;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/adhoc/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcom/adhoc/d;

    if-nez v0, :cond_18

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_18
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adhoc/d;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "com.adhoc."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_34
    .catchall {:try_start_1 .. :try_end_6} :catchall_4b

    :try_start_6
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_63
    .catchall {:try_start_6 .. :try_end_b} :catchall_5e

    :try_start_b
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_12

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adhoc/d;->a(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_23} :catch_66
    .catchall {:try_start_b .. :try_end_23} :catchall_61

    move-result v0

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return v0

    :catch_2f
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2e

    :catch_34
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_37
    :try_start_37
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_61

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_3f
    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_46

    :cond_44
    :goto_44
    const/4 v0, 0x0

    goto :goto_2e

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_44

    :catchall_4b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4e
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_53
    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    throw v0

    :catch_59
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_58

    :catchall_5e
    move-exception v0

    move-object v3, v2

    goto :goto_4e

    :catchall_61
    move-exception v0

    goto :goto_4e

    :catch_63
    move-exception v0

    move-object v3, v2

    goto :goto_37

    :catch_66
    move-exception v0

    goto :goto_37
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/adhoc/d;->d:Z

    if-eqz v0, :cond_e

    const-string v0, "Event-crash"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;)Z

    :cond_e
    iget-object v0, p0, Lcom/adhoc/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2f

    invoke-static {p2}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/adhoc/d;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "saved crash version 5.1.3"

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/adhoc/d;->b(Ljava/lang/Throwable;)Z

    const-string v0, "crashed"

    const-string v1, "5.1.3"

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, p0, Lcom/adhoc/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method
