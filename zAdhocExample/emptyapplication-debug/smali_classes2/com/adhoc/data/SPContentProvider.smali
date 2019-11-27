.class public Lcom/adhoc/data/SPContentProvider;
.super Landroid/content/ContentProvider;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_17a

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_1a8

    :goto_c
    return-object v0

    :sswitch_d
    const-string v2, "get_clientID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_17
    const-string v2, "save_clientID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_21
    const-string v2, "put_string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_2b
    const-string v2, "get_string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_9

    :sswitch_35
    const-string v2, "put_boolean"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x4

    goto :goto_9

    :sswitch_3f
    const-string v2, "get_boolean"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x5

    goto :goto_9

    :sswitch_49
    const-string v2, "put_int"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x6

    goto :goto_9

    :sswitch_53
    const-string v2, "get_int"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x7

    goto :goto_9

    :sswitch_5d
    const-string v2, "put_long"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x8

    goto :goto_9

    :sswitch_68
    const-string v2, "get_long"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x9

    goto :goto_9

    :sswitch_73
    const-string v2, "get_acc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0xa

    goto :goto_9

    :pswitch_7e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    iget-object v2, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_8b
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adhoc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :pswitch_9e
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :pswitch_af
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_value"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_cb
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/adhoc/ai;->b(Ljava/lang/String;Z)Z

    goto/16 :goto_c

    :pswitch_dc
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_value"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adhoc/ai;->a(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_c

    :pswitch_f8
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/adhoc/ai;->a(Ljava/lang/String;I)Z

    goto/16 :goto_c

    :pswitch_109
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_value"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adhoc/ai;->b(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_125
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/adhoc/ai;->a(Ljava/lang/String;J)Z

    goto/16 :goto_c

    :pswitch_136
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_value"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adhoc/ai;->b(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_c

    :pswitch_152
    monitor-enter p0

    :try_start_153
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/adhoc/ai;->b(Ljava/lang/String;D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adhoc/ai;->a(Ljava/lang/String;D)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    monitor-exit p0

    goto/16 :goto_c

    :catchall_176
    move-exception v0

    monitor-exit p0
    :try_end_178
    .catchall {:try_start_153 .. :try_end_178} :catchall_176

    throw v0

    nop

    :sswitch_data_17a
    .sparse-switch
        -0x76f3b908 -> :sswitch_35
        -0x3c7a4711 -> :sswitch_d
        -0xd0fa541 -> :sswitch_49
        -0x47563e8 -> :sswitch_73
        -0x475447a -> :sswitch_53
        0x86aec3f -> :sswitch_3f
        0x21b5eb41 -> :sswitch_21
        0x46da011a -> :sswitch_2b
        0x4d1a02a8 -> :sswitch_17
        0x6b1c5dac -> :sswitch_5d
        0x75ce15c5 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_8b
        :pswitch_9e
        :pswitch_af
        :pswitch_cb
        :pswitch_dc
        :pswitch_f8
        :pswitch_109
        :pswitch_125
        :pswitch_136
        :pswitch_152
    .end packed-switch
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    invoke-virtual {p0}, Lcom/adhoc/data/SPContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/ai;->a(Landroid/content/Context;)V

    const-string v0, "client_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adhoc/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    const-string v0, "client_id"

    iget-object v1, p0, Lcom/adhoc/data/SPContentProvider;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adhoc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
