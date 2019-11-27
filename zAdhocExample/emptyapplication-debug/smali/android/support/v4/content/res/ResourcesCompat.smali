.class public final Landroid/support/v4/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 316
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .param p2, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 295
    invoke-static {p2}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, -0x4

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 299
    return-void

    .line 301
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    .line 303
    return-void
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "isRequestFromLayoutInflator"    # Z

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 337
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {v8, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 338
    move-object v0, p0

    move-object v1, v8

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    .line 340
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    if-nez p4, :cond_0

    .line 341
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be retrieved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "isRequestFromLayoutInflator"    # Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 356
    iget-object v1, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    iget-object v1, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 362
    .local v15, "file":Ljava/lang/String;
    const-string v1, "res/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v16, 0x0

    const/4 v8, -0x3

    if-nez v1, :cond_2

    .line 364
    if-eqz v13, :cond_1

    .line 365
    invoke-virtual {v13, v8, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 368
    :cond_1
    return-object v16

    .line 370
    :cond_2
    invoke-static {v9, v11, v12}, Landroid/support/v4/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v7

    .line 372
    .local v7, "typeface":Landroid/graphics/Typeface;
    if-eqz v7, :cond_4

    .line 373
    if-eqz v13, :cond_3

    .line 374
    invoke-virtual {v13, v7, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 376
    :cond_3
    return-object v7

    .line 380
    :cond_4
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v1, :cond_7

    .line 381
    :try_start_1
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v6, v1

    .line 382
    .local v6, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 383
    invoke-static {v6, v9}, Landroid/support/v4/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v17, v1

    .line 384
    .local v17, "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    if-nez v17, :cond_6

    .line 385
    :try_start_2
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to find font-family tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v13, :cond_5

    .line 387
    invoke-virtual {v13, v8, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 390
    :cond_5
    return-object v16

    .line 408
    .end local v6    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    goto/16 :goto_4

    .line 406
    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    goto/16 :goto_6

    .line 392
    .restart local v6    # "rp":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v9

    move v4, v11

    move v5, v12

    move-object/from16 v18, v6

    move-object v6, v13

    .line 392
    .end local v6    # "rp":Landroid/content/res/XmlResourceParser;
    .local v18, "rp":Landroid/content/res/XmlResourceParser;
    move-object/from16 v19, v7

    move-object v7, v14

    .line 392
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v19, "typeface":Landroid/graphics/Typeface;
    const/4 v10, -0x3

    move/from16 v8, p7

    :try_start_3
    invoke-static/range {v1 .. v8}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 408
    .end local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .end local v18    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    .line 406
    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    .line 408
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    move-object/from16 v1, p0

    goto :goto_3

    .line 406
    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    move-object/from16 v1, p0

    goto :goto_5

    .line 395
    :cond_7
    move-object/from16 v19, v7

    const/4 v10, -0x3

    .line 395
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    move-object/from16 v1, p0

    :try_start_4
    invoke-static {v1, v9, v11, v15, v12}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v7, v2

    .line 397
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    if-eqz v13, :cond_9

    .line 398
    if-eqz v7, :cond_8

    .line 399
    :try_start_5
    invoke-virtual {v13, v7, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 408
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v7

    goto :goto_4

    .line 406
    :catch_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v7

    goto :goto_6

    .line 401
    :cond_8
    invoke-virtual {v13, v10, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 405
    :cond_9
    :goto_0
    return-object v7

    .line 408
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    :catch_8
    move-exception v0

    :goto_1
    move-object v2, v0

    goto :goto_4

    .line 406
    :catch_9
    move-exception v0

    :goto_2
    move-object v2, v0

    goto :goto_6

    .line 408
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_a
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    :goto_3
    move-object v2, v0

    .line 409
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v2, "e":Ljava/io/IOException;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    :goto_4
    const-string v3, "ResourcesCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read xml resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 406
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_b
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v19, v7

    const/4 v10, -0x3

    :goto_5
    move-object v2, v0

    .line 407
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    :goto_6
    const-string v3, "ResourcesCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse xml resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 411
    :goto_7
    if-eqz v13, :cond_a

    .line 412
    invoke-virtual {v13, v10, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 415
    :cond_a
    return-object v16
.end method
