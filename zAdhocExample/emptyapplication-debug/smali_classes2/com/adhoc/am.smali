.class public Lcom/adhoc/am;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "compareVersion error:illegal params."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v3

    array-length v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v1

    move v2, v1

    :goto_21
    if-ge v2, v5, :cond_40

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_40

    aget-object v0, v3, v2

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    :cond_40
    if-eqz v0, :cond_43

    :goto_42
    return v0

    :cond_43
    array-length v0, v3

    array-length v1, v4

    sub-int/2addr v0, v1

    goto :goto_42
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/adhoc/am;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v1, "Utils"

    const-string v4, "bitmap null"

    invoke-static {v1, v4}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v1, v4, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view \u83b7\u53d6\u56fe\u7247\u6d88\u8017\u65f6\u95f4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    shr-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "k count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;
    .registers 6

    const/16 v1, 0x46

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    shr-int/lit8 v3, v3, 0xa

    const/16 v4, 0x5a

    if-le v3, v4, :cond_25

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v1, v1, -0xa

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_d

    :cond_25
    const-string v1, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u7247\u5904\u7406\u4e4b\u540e\u5927\u5c0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    shr-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u7247\u5904\u7406"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u6b21"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_6

    const-string v0, ""

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/adhoc/am;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_13

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_5

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_5

    :catch_13
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_6

    :try_start_3
    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v0, v1

    goto :goto_5

    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_1a

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2c} :catch_2d

    goto :goto_5

    :catch_2d
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    :cond_31
    move-object v0, v1

    goto :goto_5
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/adhoc/am;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_f

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, " \u6ca1\u6709 tester "

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    :catch_f
    move-exception v1

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const-string v0, "crashed"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_f
    return v1

    :cond_10
    :try_start_10
    invoke-static {v0, p0}, Lcom/adhoc/am;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_36

    move-result v0

    :goto_14
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crashedState -------- compare = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_3c

    const-string v0, "crashed"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_14

    :cond_3c
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static b()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_5

    :cond_22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v0, v5, :cond_26

    move v0, v1

    goto :goto_5

    :cond_42
    move v0, v2

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v1, Lcom/adhoc/am;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
