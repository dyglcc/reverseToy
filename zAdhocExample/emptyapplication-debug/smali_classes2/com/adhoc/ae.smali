.class public Lcom/adhoc/ae;
.super Ljava/lang/Object;


# direct methods
.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.adhoc.editor.testernew.AdhocFloatWindowManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/adhoc/ae;->a()Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_3c

    move-result-object v1

    const/4 v2, 0x1

    :try_start_d
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_21} :catch_23
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_21} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_21} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_21} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_37

    move-result-object v0

    goto :goto_7

    :catch_23
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_28
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_2d
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_32
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_37
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_3c
    move-exception v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 7

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/adhoc/ae;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "add"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1e} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1e} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_33

    goto :goto_2

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static b(Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 7

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/adhoc/ae;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "remove"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1e} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1e} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_33

    goto :goto_2

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
