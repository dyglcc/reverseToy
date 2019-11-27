.class public Lcom/adhoc/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/h$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/h$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhoc/h;
    .registers 1

    invoke-static {}, Lcom/adhoc/h$a;->a()Lcom/adhoc/h;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_31

    move-result v1

    if-nez v1, :cond_29

    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_2b
    .catchall {:try_start_10 .. :try_end_29} :catchall_31

    :cond_29
    :goto_29
    monitor-exit p0

    return-object v0

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    const/4 v0, 0x0

    goto :goto_29

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/adhoc/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_50

    move-result-object v1

    if-nez v1, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_162
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_d3
    .catchall {:try_start_f .. :try_end_14} :catchall_106

    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1b
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_14 .. :try_end_1b} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1b} :catch_169
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_150
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_142
    .catchall {:try_start_14 .. :try_end_1b} :catchall_134

    move-result-object v2

    :goto_1c
    :try_start_1c
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_23} :catch_16f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_156
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_147
    .catchall {:try_start_1c .. :try_end_23} :catchall_139

    :try_start_23
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_174
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_15b
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_14b
    .catchall {:try_start_23 .. :try_end_28} :catchall_13d

    :goto_28
    :try_start_28
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_15f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_31} :catch_14e
    .catchall {:try_start_28 .. :try_end_31} :catchall_140

    goto :goto_28

    :catch_32
    move-exception v1

    :goto_33
    :try_start_33
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_140

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_82
    .catchall {:try_start_38 .. :try_end_3b} :catchall_50

    :cond_3b
    :goto_3b
    if-eqz v6, :cond_40

    :try_start_3d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_87
    .catchall {:try_start_3d .. :try_end_40} :catchall_50

    :cond_40
    :goto_40
    if-eqz v4, :cond_45

    :try_start_42
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_8c
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    :cond_45
    :goto_45
    if-eqz v5, :cond_d

    :try_start_47
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_50

    goto :goto_d

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_d

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_53
    move-exception v1

    move-object v2, v3

    goto :goto_1c

    :cond_56
    :try_start_56
    invoke-virtual {p0, p2}, Lcom/adhoc/h;->a(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_32
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_15f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_14e
    .catchall {:try_start_56 .. :try_end_59} :catchall_140

    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_73
    .catchall {:try_start_5b .. :try_end_5e} :catchall_50

    :cond_5e
    :goto_5e
    if-eqz v6, :cond_63

    :try_start_60
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_78
    .catchall {:try_start_60 .. :try_end_63} :catchall_50

    :cond_63
    :goto_63
    if-eqz v4, :cond_68

    :try_start_65
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_7d
    .catchall {:try_start_65 .. :try_end_68} :catchall_50

    :cond_68
    :goto_68
    if-eqz v5, :cond_d

    :try_start_6a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e
    .catchall {:try_start_6a .. :try_end_6d} :catchall_50

    goto :goto_d

    :catch_6e
    move-exception v1

    :try_start_6f
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_d

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    :catch_78
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_63

    :catch_7d
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_68

    :catch_82
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catch_87
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_40

    :catch_8c
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_50

    goto :goto_45

    :catch_91
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_96
    :try_start_96
    const-string v1, "Fails to read file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_140

    if-eqz v2, :cond_ad

    :try_start_aa
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_c4
    .catchall {:try_start_aa .. :try_end_ad} :catchall_50

    :cond_ad
    :goto_ad
    if-eqz v6, :cond_b2

    :try_start_af
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_c9
    .catchall {:try_start_af .. :try_end_b2} :catchall_50

    :cond_b2
    :goto_b2
    if-eqz v4, :cond_b7

    :try_start_b4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_ce
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_50

    :cond_b7
    :goto_b7
    if-eqz v5, :cond_d

    :try_start_b9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_50

    goto/16 :goto_d

    :catch_be
    move-exception v1

    :try_start_bf
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto/16 :goto_d

    :catch_c4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ad

    :catch_c9
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_b2

    :catch_ce
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_d2
    .catchall {:try_start_bf .. :try_end_d2} :catchall_50

    goto :goto_b7

    :catch_d3
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_d8
    :try_start_d8
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_140

    if-eqz v2, :cond_e0

    :try_start_dd
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_f7
    .catchall {:try_start_dd .. :try_end_e0} :catchall_50

    :cond_e0
    :goto_e0
    if-eqz v6, :cond_e5

    :try_start_e2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_fc
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_50

    :cond_e5
    :goto_e5
    if-eqz v4, :cond_ea

    :try_start_e7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_101
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_50

    :cond_ea
    :goto_ea
    if-eqz v5, :cond_d

    :try_start_ec
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f1
    .catchall {:try_start_ec .. :try_end_ef} :catchall_50

    goto/16 :goto_d

    :catch_f1
    move-exception v1

    :try_start_f2
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto/16 :goto_d

    :catch_f7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e0

    :catch_fc
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_e5

    :catch_101
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_105
    .catchall {:try_start_f2 .. :try_end_105} :catchall_50

    goto :goto_ea

    :catchall_106
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_10b
    if-eqz v2, :cond_110

    :try_start_10d
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_120
    .catchall {:try_start_10d .. :try_end_110} :catchall_50

    :cond_110
    :goto_110
    if-eqz v6, :cond_115

    :try_start_112
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_125
    .catchall {:try_start_112 .. :try_end_115} :catchall_50

    :cond_115
    :goto_115
    if-eqz v4, :cond_11a

    :try_start_117
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_12a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_50

    :cond_11a
    :goto_11a
    if-eqz v5, :cond_11f

    :try_start_11c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_12f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_50

    :cond_11f
    :goto_11f
    :try_start_11f
    throw v0

    :catch_120
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_110

    :catch_125
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_115

    :catch_12a
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_11a

    :catch_12f
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_133
    .catchall {:try_start_11f .. :try_end_133} :catchall_50

    goto :goto_11f

    :catchall_134
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto :goto_10b

    :catchall_139
    move-exception v0

    move-object v4, v3

    move-object v6, v3

    goto :goto_10b

    :catchall_13d
    move-exception v0

    move-object v6, v3

    goto :goto_10b

    :catchall_140
    move-exception v0

    goto :goto_10b

    :catch_142
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto :goto_d8

    :catch_147
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto :goto_d8

    :catch_14b
    move-exception v1

    move-object v6, v3

    goto :goto_d8

    :catch_14e
    move-exception v1

    goto :goto_d8

    :catch_150
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_96

    :catch_156
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_96

    :catch_15b
    move-exception v1

    move-object v6, v3

    goto/16 :goto_96

    :catch_15f
    move-exception v1

    goto/16 :goto_96

    :catch_162
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    goto/16 :goto_33

    :catch_169
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_33

    :catch_16f
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_33

    :catch_174
    move-exception v1

    move-object v6, v3

    goto/16 :goto_33
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_95

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_95

    :try_start_1e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_13d
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_bb
    .catchall {:try_start_1e .. :try_end_23} :catchall_ec

    :try_start_23
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_2a
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_23 .. :try_end_2a} :catch_73
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_144
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2a} :catch_12f
    .catchall {:try_start_23 .. :try_end_2a} :catchall_120

    move-result-object v2

    :goto_2b
    :try_start_2b
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_14a
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_32} :catch_134
    .catchall {:try_start_2b .. :try_end_32} :catchall_125

    :try_start_32
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_14f
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_138
    .catchall {:try_start_32 .. :try_end_37} :catchall_129

    :goto_37
    :try_start_37
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_45} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_45} :catch_13b
    .catchall {:try_start_37 .. :try_end_45} :catchall_12c

    goto :goto_37

    :catch_46
    move-exception v1

    :goto_47
    :try_start_47
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_12c

    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_a7
    .catchall {:try_start_4c .. :try_end_4f} :catchall_95

    :cond_4f
    :goto_4f
    if-eqz v5, :cond_54

    :try_start_51
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_ac
    .catchall {:try_start_51 .. :try_end_54} :catchall_95

    :cond_54
    :goto_54
    if-eqz v4, :cond_59

    :try_start_56
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_b1
    .catchall {:try_start_56 .. :try_end_59} :catchall_95

    :cond_59
    :goto_59
    if-eqz v3, :cond_5e

    :try_start_5b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_b6
    .catchall {:try_start_5b .. :try_end_5e} :catchall_95

    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_95

    move-result v1

    if-nez v1, :cond_6

    :try_start_68
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_11a
    .catchall {:try_start_68 .. :try_end_71} :catchall_95

    move-object v0, v1

    goto :goto_6

    :catch_73
    move-exception v1

    move-object v2, v0

    goto :goto_2b

    :cond_76
    if-eqz p2, :cond_7b

    :try_start_78
    invoke-virtual {p0, p1}, Lcom/adhoc/h;->a(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_13b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_12c

    :cond_7b
    if-eqz v2, :cond_80

    :try_start_7d
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_98
    .catchall {:try_start_7d .. :try_end_80} :catchall_95

    :cond_80
    :goto_80
    if-eqz v5, :cond_85

    :try_start_82
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_9d
    .catchall {:try_start_82 .. :try_end_85} :catchall_95

    :cond_85
    :goto_85
    if-eqz v4, :cond_8a

    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_a2
    .catchall {:try_start_87 .. :try_end_8a} :catchall_95

    :cond_8a
    :goto_8a
    if-eqz v3, :cond_5e

    :try_start_8c
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_90
    .catchall {:try_start_8c .. :try_end_8f} :catchall_95

    goto :goto_5e

    :catch_90
    move-exception v1

    :try_start_91
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_5e

    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_98
    move-exception v1

    :try_start_99
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_80

    :catch_9d
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_85

    :catch_a2
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8a

    :catch_a7
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_4f

    :catch_ac
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_54

    :catch_b1
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_59

    :catch_b6
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_ba
    .catchall {:try_start_99 .. :try_end_ba} :catchall_95

    goto :goto_5e

    :catch_bb
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    :goto_c0
    :try_start_c0
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_12c

    if-eqz v2, :cond_c8

    :try_start_c5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c8} :catch_dd
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_95

    :cond_c8
    :goto_c8
    if-eqz v5, :cond_cd

    :try_start_ca
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_e2
    .catchall {:try_start_ca .. :try_end_cd} :catchall_95

    :cond_cd
    :goto_cd
    if-eqz v4, :cond_d2

    :try_start_cf
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d2} :catch_e7
    .catchall {:try_start_cf .. :try_end_d2} :catchall_95

    :cond_d2
    :goto_d2
    if-eqz v3, :cond_5e

    :try_start_d4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d8
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_95

    goto :goto_5e

    :catch_d8
    move-exception v1

    :try_start_d9
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_5e

    :catch_dd
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_c8

    :catch_e2
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_cd

    :catch_e7
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_eb
    .catchall {:try_start_d9 .. :try_end_eb} :catchall_95

    goto :goto_d2

    :catchall_ec
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    :goto_f1
    if-eqz v2, :cond_f6

    :try_start_f3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f6} :catch_106
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_95

    :cond_f6
    :goto_f6
    if-eqz v5, :cond_fb

    :try_start_f8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_fb} :catch_10b
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_95

    :cond_fb
    :goto_fb
    if-eqz v4, :cond_100

    :try_start_fd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_100} :catch_110
    .catchall {:try_start_fd .. :try_end_100} :catchall_95

    :cond_100
    :goto_100
    if-eqz v3, :cond_105

    :try_start_102
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_105} :catch_115
    .catchall {:try_start_102 .. :try_end_105} :catchall_95

    :cond_105
    :goto_105
    :try_start_105
    throw v1

    :catch_106
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_f6

    :catch_10b
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_fb

    :catch_110
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_100

    :catch_115
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_105

    :catch_11a
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_11e
    .catchall {:try_start_105 .. :try_end_11e} :catchall_95

    goto/16 :goto_6

    :catchall_120
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v5, v0

    goto :goto_f1

    :catchall_125
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    goto :goto_f1

    :catchall_129
    move-exception v1

    move-object v5, v0

    goto :goto_f1

    :catchall_12c
    move-exception v0

    move-object v1, v0

    goto :goto_f1

    :catch_12f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v5, v0

    goto :goto_c0

    :catch_134
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    goto :goto_c0

    :catch_138
    move-exception v1

    move-object v5, v0

    goto :goto_c0

    :catch_13b
    move-exception v1

    goto :goto_c0

    :catch_13d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_47

    :catch_144
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v5, v0

    goto/16 :goto_47

    :catch_14a
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    goto/16 :goto_47

    :catch_14f
    move-exception v1

    move-object v5, v0

    goto/16 :goto_47
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/adhoc/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7d

    move-result-object v6

    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_8f
    .catchall {:try_start_7 .. :try_end_11} :catchall_c1

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_fd
    .catchall {:try_start_11 .. :try_end_18} :catchall_ef

    move-result-object v1

    :try_start_19
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1e} :catch_102
    .catchall {:try_start_19 .. :try_end_1e} :catchall_f4

    :try_start_1e
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_106
    .catchall {:try_start_1e .. :try_end_23} :catchall_f8

    :try_start_23
    invoke-virtual {v5, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "FileHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeCacheLines -------- fileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write file data :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adhoc/al;->a(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_62} :catch_109
    .catchall {:try_start_23 .. :try_end_62} :catchall_fb

    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_78
    .catchall {:try_start_64 .. :try_end_67} :catchall_7d

    :cond_67
    :goto_67
    if-eqz v5, :cond_6c

    :try_start_69
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_80
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7d

    :cond_6c
    :goto_6c
    if-eqz v4, :cond_71

    :try_start_6e
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_85
    .catchall {:try_start_6e .. :try_end_71} :catchall_7d

    :cond_71
    :goto_71
    if-eqz v3, :cond_76

    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_8a
    .catchall {:try_start_73 .. :try_end_76} :catchall_7d

    :cond_76
    :goto_76
    monitor-exit p0

    return v0

    :catch_78
    move-exception v1

    :try_start_79
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_67

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_80
    move-exception v1

    :try_start_81
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_6c

    :catch_85
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_8a
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_7d

    goto :goto_76

    :catch_8f
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_94
    :try_start_94
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_fb

    const/4 v0, 0x0

    if-eqz v1, :cond_9d

    :try_start_9a
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2
    .catchall {:try_start_9a .. :try_end_9d} :catchall_7d

    :cond_9d
    :goto_9d
    if-eqz v5, :cond_a2

    :try_start_9f
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_b7
    .catchall {:try_start_9f .. :try_end_a2} :catchall_7d

    :cond_a2
    :goto_a2
    if-eqz v4, :cond_a7

    :try_start_a4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a7} :catch_bc
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_7d

    :cond_a7
    :goto_a7
    if-eqz v3, :cond_76

    :try_start_a9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_7d

    goto :goto_76

    :catch_ad
    move-exception v1

    :try_start_ae
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_76

    :catch_b2
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_9d

    :catch_b7
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_a2

    :catch_bc
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_7d

    goto :goto_a7

    :catchall_c1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_c6
    if-eqz v1, :cond_cb

    :try_start_c8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_db
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_7d

    :cond_cb
    :goto_cb
    if-eqz v5, :cond_d0

    :try_start_cd
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d0} :catch_e0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_7d

    :cond_d0
    :goto_d0
    if-eqz v4, :cond_d5

    :try_start_d2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_d5} :catch_e5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_7d

    :cond_d5
    :goto_d5
    if-eqz v3, :cond_da

    :try_start_d7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_da} :catch_ea
    .catchall {:try_start_d7 .. :try_end_da} :catchall_7d

    :cond_da
    :goto_da
    :try_start_da
    throw v0

    :catch_db
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_cb

    :catch_e0
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_d0

    :catch_e5
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_d5

    :catch_ea
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_ee
    .catchall {:try_start_da .. :try_end_ee} :catchall_7d

    goto :goto_da

    :catchall_ef
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_c6

    :catchall_f4
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_c6

    :catchall_f8
    move-exception v0

    move-object v5, v2

    goto :goto_c6

    :catchall_fb
    move-exception v0

    goto :goto_c6

    :catch_fd
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_94

    :catch_102
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_94

    :catch_106
    move-exception v0

    move-object v5, v2

    goto :goto_94

    :catch_109
    move-exception v0

    goto :goto_94
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/adhoc/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2e

    move-result-object v0

    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_36
    .catchall {:try_start_8 .. :try_end_d} :catchall_52

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_6f
    .catchall {:try_start_d .. :try_end_14} :catchall_6a

    move-result-object v1

    :try_start_15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_72
    .catchall {:try_start_15 .. :try_end_1c} :catchall_6d

    const/4 v0, 0x1

    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_29
    .catchall {:try_start_1f .. :try_end_22} :catchall_2e

    :cond_22
    :goto_22
    if-eqz v3, :cond_27

    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_31
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    :cond_27
    :goto_27
    monitor-exit p0

    return v0

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_22

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_31
    move-exception v1

    :try_start_32
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2e

    goto :goto_27

    :catch_36
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_39
    :try_start_39
    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_6d

    const/4 v0, 0x0

    if-eqz v1, :cond_42

    :try_start_3f
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_4d
    .catchall {:try_start_3f .. :try_end_42} :catchall_2e

    :cond_42
    :goto_42
    if-eqz v3, :cond_27

    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_2e

    goto :goto_27

    :catch_48
    move-exception v1

    :try_start_49
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_4d
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_2e

    goto :goto_42

    :catchall_52
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_60
    .catchall {:try_start_57 .. :try_end_5a} :catchall_2e

    :cond_5a
    :goto_5a
    if-eqz v3, :cond_5f

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_65
    .catchall {:try_start_5c .. :try_end_5f} :catchall_2e

    :cond_5f
    :goto_5f
    :try_start_5f
    throw v0

    :catch_60
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_5a

    :catch_65
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_2e

    goto :goto_5f

    :catchall_6a
    move-exception v0

    move-object v1, v2

    goto :goto_55

    :catchall_6d
    move-exception v0

    goto :goto_55

    :catch_6f
    move-exception v0

    move-object v1, v2

    goto :goto_39

    :catch_72
    move-exception v0

    goto :goto_39
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/adhoc/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_47

    move-result-object v1

    :try_start_7
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_59
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_8a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_bb
    .catchall {:try_start_7 .. :try_end_c} :catchall_ee

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_13
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_c .. :try_end_13} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_14a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_138
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_12a
    .catchall {:try_start_c .. :try_end_13} :catchall_11c

    move-result-object v2

    :goto_14
    :try_start_14
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1b} :catch_150
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_13e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_12f
    .catchall {:try_start_14 .. :try_end_1b} :catchall_121

    :try_start_1b
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_155
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_143
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_133
    .catchall {:try_start_1b .. :try_end_20} :catchall_125

    :goto_20
    :try_start_20
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_23} :catch_159
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_147
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_136
    .catchall {:try_start_20 .. :try_end_23} :catchall_128

    move-result-object v1

    if-eqz v1, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :catch_29
    move-exception v1

    move-object v2, v3

    goto :goto_14

    :cond_2c
    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_42
    .catchall {:try_start_2e .. :try_end_31} :catchall_47

    :cond_31
    :goto_31
    if-eqz v6, :cond_36

    :try_start_33
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_4a
    .catchall {:try_start_33 .. :try_end_36} :catchall_47

    :cond_36
    :goto_36
    if-eqz v4, :cond_3b

    :try_start_38
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_4f
    .catchall {:try_start_38 .. :try_end_3b} :catchall_47

    :cond_3b
    :goto_3b
    if-eqz v5, :cond_40

    :try_start_3d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_54
    .catchall {:try_start_3d .. :try_end_40} :catchall_47

    :cond_40
    :goto_40
    monitor-exit p0

    return v0

    :catch_42
    move-exception v1

    :try_start_43
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_31

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4a
    move-exception v1

    :try_start_4b
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_4f
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_3b

    :catch_54
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_47

    goto :goto_40

    :catch_59
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_5e
    :try_start_5e
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_128

    if-eqz v2, :cond_66

    :try_start_63
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_7b
    .catchall {:try_start_63 .. :try_end_66} :catchall_47

    :cond_66
    :goto_66
    if-eqz v6, :cond_6b

    :try_start_68
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_80
    .catchall {:try_start_68 .. :try_end_6b} :catchall_47

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_70

    :try_start_6d
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_85
    .catchall {:try_start_6d .. :try_end_70} :catchall_47

    :cond_70
    :goto_70
    if-eqz v5, :cond_40

    :try_start_72
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_76
    .catchall {:try_start_72 .. :try_end_75} :catchall_47

    goto :goto_40

    :catch_76
    move-exception v1

    :try_start_77
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_7b
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_66

    :catch_80
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_6b

    :catch_85
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_77 .. :try_end_89} :catchall_47

    goto :goto_70

    :catch_8a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_8f
    :try_start_8f
    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_128

    if-eqz v2, :cond_97

    :try_start_94
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_ac
    .catchall {:try_start_94 .. :try_end_97} :catchall_47

    :cond_97
    :goto_97
    if-eqz v6, :cond_9c

    :try_start_99
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_b1
    .catchall {:try_start_99 .. :try_end_9c} :catchall_47

    :cond_9c
    :goto_9c
    if-eqz v4, :cond_a1

    :try_start_9e
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_b6
    .catchall {:try_start_9e .. :try_end_a1} :catchall_47

    :cond_a1
    :goto_a1
    if-eqz v5, :cond_40

    :try_start_a3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_47

    goto :goto_40

    :catch_a7
    move-exception v1

    :try_start_a8
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_ac
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_97

    :catch_b1
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_9c

    :catch_b6
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_47

    goto :goto_a1

    :catch_bb
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_c0
    :try_start_c0
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_128

    if-eqz v2, :cond_c8

    :try_start_c5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c8} :catch_df
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_47

    :cond_c8
    :goto_c8
    if-eqz v6, :cond_cd

    :try_start_ca
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_e4
    .catchall {:try_start_ca .. :try_end_cd} :catchall_47

    :cond_cd
    :goto_cd
    if-eqz v4, :cond_d2

    :try_start_cf
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d2} :catch_e9
    .catchall {:try_start_cf .. :try_end_d2} :catchall_47

    :cond_d2
    :goto_d2
    if-eqz v5, :cond_40

    :try_start_d4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d9
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_47

    goto/16 :goto_40

    :catch_d9
    move-exception v1

    :try_start_da
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_40

    :catch_df
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_c8

    :catch_e4
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_cd

    :catch_e9
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_ed
    .catchall {:try_start_da .. :try_end_ed} :catchall_47

    goto :goto_d2

    :catchall_ee
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_f3
    if-eqz v2, :cond_f8

    :try_start_f5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f8} :catch_108
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_47

    :cond_f8
    :goto_f8
    if-eqz v6, :cond_fd

    :try_start_fa
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fd} :catch_10d
    .catchall {:try_start_fa .. :try_end_fd} :catchall_47

    :cond_fd
    :goto_fd
    if-eqz v4, :cond_102

    :try_start_ff
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_102} :catch_112
    .catchall {:try_start_ff .. :try_end_102} :catchall_47

    :cond_102
    :goto_102
    if-eqz v5, :cond_107

    :try_start_104
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_107} :catch_117
    .catchall {:try_start_104 .. :try_end_107} :catchall_47

    :cond_107
    :goto_107
    :try_start_107
    throw v0

    :catch_108
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_f8

    :catch_10d
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_fd

    :catch_112
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_102

    :catch_117
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_107 .. :try_end_11b} :catchall_47

    goto :goto_107

    :catchall_11c
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto :goto_f3

    :catchall_121
    move-exception v0

    move-object v4, v3

    move-object v6, v3

    goto :goto_f3

    :catchall_125
    move-exception v0

    move-object v6, v3

    goto :goto_f3

    :catchall_128
    move-exception v0

    goto :goto_f3

    :catch_12a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto :goto_c0

    :catch_12f
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto :goto_c0

    :catch_133
    move-exception v1

    move-object v6, v3

    goto :goto_c0

    :catch_136
    move-exception v1

    goto :goto_c0

    :catch_138
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_8f

    :catch_13e
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_8f

    :catch_143
    move-exception v1

    move-object v6, v3

    goto/16 :goto_8f

    :catch_147
    move-exception v1

    goto/16 :goto_8f

    :catch_14a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_5e

    :catch_150
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_5e

    :catch_155
    move-exception v1

    move-object v6, v3

    goto/16 :goto_5e

    :catch_159
    move-exception v1

    goto/16 :goto_5e
.end method
