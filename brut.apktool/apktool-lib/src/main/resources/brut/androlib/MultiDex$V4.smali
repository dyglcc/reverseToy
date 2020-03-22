.class final Lcom/reverse/stub/MultiDex$V4;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 12
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    .local v0, "extraSize":I
    const-string v1, "path"

    invoke-static {p0, v1}, Lcom/reverse/stub/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 316
    .local v1, "pathField":Ljava/lang/reflect/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "path":Ljava/lang/StringBuilder;
    new-array v3, v0, [Ljava/lang/String;

    .line 318
    .local v3, "extraPaths":[Ljava/lang/String;
    new-array v4, v0, [Ljava/io/File;

    .line 319
    .local v4, "extraFiles":[Ljava/io/File;
    new-array v5, v0, [Ljava/util/zip/ZipFile;

    .line 320
    .local v5, "extraZips":[Ljava/util/zip/ZipFile;
    new-array v6, v0, [Ldalvik/system/DexFile;

    .line 324
    .local v6, "extraDexs":[Ldalvik/system/DexFile;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .local v7, "iterator":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 326
    .local v8, "additionalEntry":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "entryPath":Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v7}, Ljava/util/ListIterator;->previousIndex()I

    move-result v10

    .line 329
    .local v10, "index":I
    aput-object v9, v3, v10

    .line 330
    aput-object v8, v4, v10

    .line 331
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v11, v5, v10

    .line 324
    .end local v8    # "additionalEntry":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".dex"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v9, v8, v11}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v8

    aput-object v8, v6, v10

    goto :goto_0

    .line 334
    .end local v7    # "iterator":Ljava/util/ListIterator;
    .end local v9    # "entryPath":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    const-string v7, "mPaths"

    invoke-static {p0, v7, v3}, Lcom/reverse/stub/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    const-string v7, "mFiles"

    invoke-static {p0, v7, v4}, Lcom/reverse/stub/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const-string v7, "mZips"

    invoke-static {p0, v7, v5}, Lcom/reverse/stub/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const-string v7, "mDexs"

    invoke-static {p0, v7, v6}, Lcom/reverse/stub/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    return-void
.end method
