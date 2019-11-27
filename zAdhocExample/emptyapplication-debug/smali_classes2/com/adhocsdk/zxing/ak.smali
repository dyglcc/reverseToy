.class public final Lcom/adhocsdk/zxing/ak;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/ak;->a:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, Lcom/adhocsdk/zxing/ak;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/adhocsdk/zxing/ak;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, Lcom/adhocsdk/zxing/ak;->b:Z

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static a([BLjava/util/Map;)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/e;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_f

    sget-object v2, Lcom/adhocsdk/zxing/e;->e:Lcom/adhocsdk/zxing/e;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_e
    return-object v2

    :cond_f
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    const/4 v13, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v6, 0x3

    if-le v2, v6, :cond_8c

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v6, -0x11

    if-ne v2, v6, :cond_8c

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/16 v6, -0x45

    if-ne v2, v6, :cond_8c

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v6, -0x41

    if-ne v2, v6, :cond_8c

    const/4 v2, 0x1

    :goto_40
    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_43
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_122

    if-nez v13, :cond_4f

    if-nez v10, :cond_4f

    if-eqz v11, :cond_122

    :cond_4f
    aget-byte v6, p0, v18

    and-int/lit16 v0, v6, 0xff

    move/from16 v20, v0

    if-eqz v11, :cond_60

    if-lez v17, :cond_93

    move/from16 v0, v20

    and-int/lit16 v6, v0, 0x80

    if-nez v6, :cond_8e

    const/4 v11, 0x0

    :cond_60
    :goto_60
    if-eqz v13, :cond_70

    const/16 v6, 0x7f

    move/from16 v0, v20

    if-le v0, v6, :cond_c0

    const/16 v6, 0xa0

    move/from16 v0, v20

    if-ge v0, v6, :cond_c0

    const/4 v6, 0x0

    move v13, v6

    :cond_70
    :goto_70
    if-eqz v10, :cond_179

    if-lez v9, :cond_e0

    const/16 v6, 0x40

    move/from16 v0, v20

    if-lt v0, v6, :cond_86

    const/16 v6, 0x7f

    move/from16 v0, v20

    if-eq v0, v6, :cond_86

    const/16 v6, 0xfc

    move/from16 v0, v20

    if-le v0, v6, :cond_dc

    :cond_86
    const/4 v10, 0x0

    move v6, v4

    :goto_88
    add-int/lit8 v18, v18, 0x1

    move v4, v6

    goto :goto_43

    :cond_8c
    const/4 v2, 0x0

    goto :goto_40

    :cond_8e
    add-int/lit8 v6, v17, -0x1

    move/from16 v17, v6

    goto :goto_60

    :cond_93
    move/from16 v0, v20

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_60

    and-int/lit8 v6, v20, 0x40

    if-nez v6, :cond_9f

    const/4 v11, 0x0

    goto :goto_60

    :cond_9f
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v6, v20, 0x20

    if-nez v6, :cond_aa

    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    goto :goto_60

    :cond_aa
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v6, v20, 0x10

    if-nez v6, :cond_b4

    add-int/lit8 v6, v15, 0x1

    move v15, v6

    goto :goto_60

    :cond_b4
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v6, v20, 0x8

    if-nez v6, :cond_be

    add-int/lit8 v6, v14, 0x1

    move v14, v6

    goto :goto_60

    :cond_be
    const/4 v11, 0x0

    goto :goto_60

    :cond_c0
    const/16 v6, 0x9f

    move/from16 v0, v20

    if-le v0, v6, :cond_70

    const/16 v6, 0xc0

    move/from16 v0, v20

    if-lt v0, v6, :cond_d8

    const/16 v6, 0xd7

    move/from16 v0, v20

    if-eq v0, v6, :cond_d8

    const/16 v6, 0xf7

    move/from16 v0, v20

    if-ne v0, v6, :cond_70

    :cond_d8
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_70

    :cond_dc
    add-int/lit8 v9, v9, -0x1

    move v6, v4

    goto :goto_88

    :cond_e0
    const/16 v6, 0x80

    move/from16 v0, v20

    if-eq v0, v6, :cond_f2

    const/16 v6, 0xa0

    move/from16 v0, v20

    if-eq v0, v6, :cond_f2

    const/16 v6, 0xef

    move/from16 v0, v20

    if-le v0, v6, :cond_f5

    :cond_f2
    const/4 v10, 0x0

    move v6, v4

    goto :goto_88

    :cond_f5
    const/16 v6, 0xa0

    move/from16 v0, v20

    if-le v0, v6, :cond_10c

    const/16 v6, 0xe0

    move/from16 v0, v20

    if-ge v0, v6, :cond_10c

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    add-int/lit8 v4, v7, 0x1

    if-le v4, v5, :cond_17c

    move v5, v4

    move v7, v4

    goto/16 :goto_88

    :cond_10c
    const/16 v6, 0x7f

    move/from16 v0, v20

    if-le v0, v6, :cond_11d

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_179

    move v3, v4

    move v6, v4

    goto/16 :goto_88

    :cond_11d
    const/4 v7, 0x0

    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_88

    :cond_122
    if-eqz v11, :cond_177

    if-lez v17, :cond_177

    const/4 v4, 0x0

    :goto_127
    if-eqz v10, :cond_12c

    if-lez v9, :cond_12c

    const/4 v10, 0x0

    :cond_12c
    if-eqz v4, :cond_139

    if-nez v2, :cond_135

    add-int v2, v16, v15

    add-int/2addr v2, v14

    if-lez v2, :cond_139

    :cond_135
    const-string v2, "UTF8"

    goto/16 :goto_e

    :cond_139
    if-eqz v10, :cond_149

    sget-boolean v2, Lcom/adhocsdk/zxing/ak;->b:Z

    if-nez v2, :cond_145

    const/4 v2, 0x3

    if-ge v5, v2, :cond_145

    const/4 v2, 0x3

    if-lt v3, v2, :cond_149

    :cond_145
    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_149
    if-eqz v13, :cond_161

    if-eqz v10, :cond_161

    const/4 v2, 0x2

    if-ne v5, v2, :cond_153

    const/4 v2, 0x2

    if-eq v8, v2, :cond_159

    :cond_153
    mul-int/lit8 v2, v12, 0xa

    move/from16 v0, v19

    if-lt v2, v0, :cond_15d

    :cond_159
    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_15d
    const-string v2, "ISO8859_1"

    goto/16 :goto_e

    :cond_161
    if-eqz v13, :cond_167

    const-string v2, "ISO8859_1"

    goto/16 :goto_e

    :cond_167
    if-eqz v10, :cond_16d

    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_16d
    if-eqz v4, :cond_173

    const-string v2, "UTF8"

    goto/16 :goto_e

    :cond_173
    sget-object v2, Lcom/adhocsdk/zxing/ak;->a:Ljava/lang/String;

    goto/16 :goto_e

    :cond_177
    move v4, v11

    goto :goto_127

    :cond_179
    move v6, v4

    goto/16 :goto_88

    :cond_17c
    move v7, v4

    goto/16 :goto_88
.end method
