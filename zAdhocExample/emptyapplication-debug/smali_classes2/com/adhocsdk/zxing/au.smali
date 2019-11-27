.class final Lcom/adhocsdk/zxing/au;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/adhocsdk/zxing/au;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private static a(I)C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    sget-object v0, Lcom/adhocsdk/zxing/au;->a:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_a
    sget-object v0, Lcom/adhocsdk/zxing/au;->a:[C

    aget-char v0, v0, p0

    return v0
.end method

.method private static a(Lcom/adhocsdk/zxing/ab;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_d

    and-int/lit8 v0, v0, 0x7f

    :goto_c
    return v0

    :cond_d
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1d

    invoke-virtual {p0, v3}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v1

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_c

    :cond_1d
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2f

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v1

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    goto :goto_c

    :cond_2f
    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method static a([BLcom/adhocsdk/zxing/az;Lcom/adhocsdk/zxing/aw;Ljava/util/Map;)Lcom/adhocsdk/zxing/ad;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/adhocsdk/zxing/az;",
            "Lcom/adhocsdk/zxing/aw;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Lcom/adhocsdk/zxing/ad;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/16 v11, 0x10

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    new-instance v0, Lcom/adhocsdk/zxing/ab;

    invoke-direct {v0, p0}, Lcom/adhocsdk/zxing/ab;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v8, v2

    move-object v3, v6

    :goto_19
    :try_start_19
    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v2

    if-ge v2, v10, :cond_47

    sget-object v2, Lcom/adhocsdk/zxing/ay;->a:Lcom/adhocsdk/zxing/ay;

    move-object v7, v2

    :goto_22
    sget-object v2, Lcom/adhocsdk/zxing/ay;->a:Lcom/adhocsdk/zxing/ay;

    if-eq v7, v2, :cond_d6

    sget-object v2, Lcom/adhocsdk/zxing/ay;->h:Lcom/adhocsdk/zxing/ay;

    if-eq v7, v2, :cond_2e

    sget-object v2, Lcom/adhocsdk/zxing/ay;->i:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v2, :cond_52

    :cond_2e
    move v2, v9

    :goto_2f
    sget-object v5, Lcom/adhocsdk/zxing/ay;->a:Lcom/adhocsdk/zxing/ay;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_31} :catch_61

    if-ne v7, v5, :cond_d9

    new-instance v2, Lcom/adhocsdk/zxing/ad;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    move-object v4, v6

    :cond_40
    if-nez p2, :cond_d0

    move-object v0, v6

    :goto_43
    invoke-direct {v2, p0, v1, v4, v0}, Lcom/adhocsdk/zxing/ad;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_47
    const/4 v2, 0x4

    :try_start_48
    invoke-virtual {v0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/adhocsdk/zxing/ay;->a(I)Lcom/adhocsdk/zxing/ay;

    move-result-object v2

    move-object v7, v2

    goto :goto_22

    :cond_52
    sget-object v2, Lcom/adhocsdk/zxing/ay;->d:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v2, :cond_6e

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v2

    if-ge v2, v11, :cond_67

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_61} :catch_61

    :catch_61
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_67
    const/16 v2, 0x10

    :try_start_69
    invoke-virtual {v0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move v2, v8

    goto :goto_2f

    :cond_6e
    sget-object v2, Lcom/adhocsdk/zxing/ay;->f:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v2, :cond_83

    invoke-static {v0}, Lcom/adhocsdk/zxing/au;->a(Lcom/adhocsdk/zxing/ab;)I

    move-result v2

    invoke-static {v2}, Lcom/adhocsdk/zxing/ac;->a(I)Lcom/adhocsdk/zxing/ac;

    move-result-object v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_81
    move v2, v8

    goto :goto_2f

    :cond_83
    sget-object v2, Lcom/adhocsdk/zxing/ay;->j:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v2, :cond_9b

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v2

    invoke-virtual {v7, p1}, Lcom/adhocsdk/zxing/ay;->a(Lcom/adhocsdk/zxing/az;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v5

    if-ne v2, v9, :cond_99

    invoke-static {v0, v1, v5}, Lcom/adhocsdk/zxing/au;->a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V

    :cond_99
    move v2, v8

    goto :goto_2f

    :cond_9b
    invoke-virtual {v7, p1}, Lcom/adhocsdk/zxing/ay;->a(Lcom/adhocsdk/zxing/az;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v2

    sget-object v5, Lcom/adhocsdk/zxing/ay;->b:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v5, :cond_ac

    invoke-static {v0, v1, v2}, Lcom/adhocsdk/zxing/au;->c(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V

    move v2, v8

    goto :goto_2f

    :cond_ac
    sget-object v5, Lcom/adhocsdk/zxing/ay;->c:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v5, :cond_b6

    invoke-static {v0, v1, v2, v8}, Lcom/adhocsdk/zxing/au;->a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;IZ)V

    move v2, v8

    goto/16 :goto_2f

    :cond_b6
    sget-object v5, Lcom/adhocsdk/zxing/ay;->e:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v5, :cond_c1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/adhocsdk/zxing/au;->a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;ILcom/adhocsdk/zxing/ac;Ljava/util/Collection;Ljava/util/Map;)V

    move v2, v8

    goto/16 :goto_2f

    :cond_c1
    sget-object v5, Lcom/adhocsdk/zxing/ay;->g:Lcom/adhocsdk/zxing/ay;

    if-ne v7, v5, :cond_cb

    invoke-static {v0, v1, v2}, Lcom/adhocsdk/zxing/au;->b(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V

    move v2, v8

    goto/16 :goto_2f

    :cond_cb
    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_d0} :catch_61

    :cond_d0
    invoke-virtual {p2}, Lcom/adhocsdk/zxing/aw;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_43

    :cond_d6
    move v2, v8

    goto/16 :goto_2f

    :cond_d9
    move v8, v2

    goto/16 :goto_19
.end method

.method private static a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lez p2, :cond_43

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    div-int/lit8 v3, v0, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v0, v0, 0x60

    or-int/2addr v0, v3

    const/16 v3, 0x3bf

    if-ge v0, v3, :cond_3e

    const v3, 0xa1a1

    add-int/2addr v0, v3

    :goto_2a
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_13

    :cond_3e
    const v3, 0xa6a1

    add-int/2addr v0, v3

    goto :goto_2a

    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;ILcom/adhocsdk/zxing/ac;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adhocsdk/zxing/ab;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/adhocsdk/zxing/ac;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_d
    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_1e

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    if-nez p3, :cond_30

    invoke-static {v1, p5}, Lcom/adhocsdk/zxing/ak;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    :try_start_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35

    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_30
    invoke-virtual {p3}, Lcom/adhocsdk/zxing/ac;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :catch_35
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/16 v6, 0x25

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_a
    if-le p2, v3, :cond_30

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v1

    if-ge v1, v5, :cond_17

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual {p0, v5}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_a

    :cond_30
    if-ne p2, v3, :cond_48

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v1

    if-ge v1, v4, :cond_3d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-virtual {p0, v4}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_48
    if-eqz p3, :cond_74

    :goto_4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_74

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_6b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_6e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_6e
    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6b

    :cond_74
    return-void
.end method

.method private static b(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lez p2, :cond_3f

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    div-int/lit16 v3, v0, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, v3

    const/16 v3, 0x1f00

    if-ge v0, v3, :cond_3a

    const v3, 0x8140

    add-int/2addr v0, v3

    :goto_2a
    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_13

    :cond_3a
    const v3, 0xc140

    add-int/2addr v0, v3

    goto :goto_2a

    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v0

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0
.end method

.method private static c(Lcom/adhocsdk/zxing/ab;Ljava/lang/StringBuilder;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/f;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xa

    :goto_4
    const/4 v0, 0x3

    if-lt p2, v0, :cond_3f

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v0

    if-ge v0, v2, :cond_12

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_12
    invoke-virtual {p0, v2}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1f

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_1f
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_4

    :cond_3f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6d

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v0

    if-ge v0, v4, :cond_4d

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_4d
    invoke-virtual {p0, v4}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_5a

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_5a
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6c

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/ab;->a()I

    move-result v0

    if-ge v0, v3, :cond_7b

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_7b
    invoke-virtual {p0, v3}, Lcom/adhocsdk/zxing/ab;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_86

    invoke-static {}, Lcom/adhocsdk/zxing/f;->a()Lcom/adhocsdk/zxing/f;

    move-result-object v0

    throw v0

    :cond_86
    invoke-static {v0}, Lcom/adhocsdk/zxing/au;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6c
.end method
