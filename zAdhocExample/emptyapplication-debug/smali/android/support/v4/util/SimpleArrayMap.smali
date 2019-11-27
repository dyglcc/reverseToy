.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 236
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 238
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 240
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 246
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    if-nez p1, :cond_0

    .line 248
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 249
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 253
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 264
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .line 165
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 166
    const-class v3, Landroid/support/v4/util/ArrayMap;

    monitor-enter v3

    .line 167
    :try_start_0
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 168
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 169
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 170
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 171
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 172
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 173
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 176
    monitor-exit v3

    return-void

    .line 178
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 179
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 180
    const-class v3, Landroid/support/v4/util/ArrayMap;

    monitor-enter v3

    .line 181
    :try_start_1
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 182
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 183
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 184
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 185
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 186
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 187
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 190
    monitor-exit v3

    return-void

    .line 192
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 195
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 196
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 197
    return-void
.end method

.method private static binarySearchHashes([III)I
    .locals 2
    .param p0, "hashes"    # [I
    .param p1, "N"    # I
    .param p2, "hash"    # I

    .line 77
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 201
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 202
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 203
    :try_start_0
    sget v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 204
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 205
    aput-object p0, p1, v5

    .line 206
    shl-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, v5

    .line 206
    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 207
    aput-object v1, p1, v3

    .line 206
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 209
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 210
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 214
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 215
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 216
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 217
    :try_start_1
    sget v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 218
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 219
    aput-object p0, p1, v5

    .line 220
    shl-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, v5

    .line 220
    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 221
    aput-object v1, p1, v3

    .line 220
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 223
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 224
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 228
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 230
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 270
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 272
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 273
    .local v1, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 274
    .local v2, "osize":I
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 275
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 276
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 277
    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 279
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_0
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v0, :cond_1

    .line 280
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 282
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 312
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 352
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 6
    .param p1, "minimumCapacity"    # I

    .line 289
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 290
    .local v0, "osize":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 291
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 292
    .local v1, "ohashes":[I
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 293
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 294
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_0

    .line 295
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 300
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v1, v0, :cond_2

    .line 301
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 303
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 594
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 595
    return v0

    .line 597
    :cond_0
    instance-of v1, p1, Landroid/support/v4/util/SimpleArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 598
    move-object v1, p1

    check-cast v1, Landroid/support/v4/util/SimpleArrayMap;

    .line 599
    .local v1, "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 600
    return v2

    .line 604
    :cond_1
    const/4 v3, 0x0

    .line 604
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v3, v4, :cond_5

    .line 605
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 606
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 607
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 608
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 609
    if-nez v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 610
    :cond_2
    return v2

    .line 612
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 613
    return v2

    .line 604
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    .end local v3    # "i":I
    :cond_5
    nop

    .line 621
    return v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 616
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 617
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 622
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 623
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 624
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 625
    return v2

    .line 629
    :cond_7
    const/4 v3, 0x0

    .line 629
    .restart local v3    # "i":I
    :goto_1
    :try_start_1
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v3, v4, :cond_b

    .line 630
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 631
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 632
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 633
    .restart local v6    # "theirs":Ljava/lang/Object;
    if-nez v5, :cond_9

    .line 634
    if-nez v6, :cond_8

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 635
    :cond_8
    return v2

    .line 637
    :cond_9
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_a

    .line 638
    return v2

    .line 629
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 645
    .end local v3    # "i":I
    :cond_b
    nop

    .line 646
    return v0

    .line 643
    :catch_2
    move-exception v0

    .line 644
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 641
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 642
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 648
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_c
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 363
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 364
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 9

    .line 656
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 657
    .local v0, "hashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 658
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 659
    .local v2, "result":I
    const/4 v3, 0x0

    .line 659
    .local v3, "i":I
    const/4 v4, 0x1

    .line 659
    .local v4, "v":I
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 659
    .local v5, "s":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 660
    aget-object v6, v1, v4

    .line 661
    .local v6, "value":Ljava/lang/Object;
    aget v7, v0, v3

    if-nez v6, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 659
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 663
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1
    return v2
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 88
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 91
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 92
    const/4 v1, -0x1

    return v1

    .line 95
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 98
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 99
    return v1

    .line 103
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    return v1

    .line 109
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 109
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 110
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 109
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 114
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 115
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 114
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 122
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 322
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method indexOfNull()I
    .locals 6

    .line 126
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 129
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 130
    const/4 v1, -0x1

    return v1

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 136
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 137
    return v1

    .line 141
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 142
    return v1

    .line 147
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 147
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 148
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    .line 147
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 152
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 153
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    return v3

    .line 152
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 160
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 326
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 327
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 328
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 329
    nop

    .line 329
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 330
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 331
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 329
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 335
    .end local v2    # "i":I
    :cond_1
    nop

    .line 335
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 336
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 335
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 341
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 402
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 373
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 415
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 418
    .local v0, "osize":I
    if-nez p1, :cond_0

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v2

    .line 420
    .local v2, "index":I
    goto :goto_0

    .line 422
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 423
    .restart local v1    # "hash":I
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 425
    .restart local v2    # "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 426
    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 427
    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v3

    .line 428
    .local v2, "old":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 429
    return-object v2

    .line 432
    .end local v3    # "index":I
    .local v2, "index":I
    :cond_1
    xor-int/lit8 v2, v2, -0x1

    .line 433
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v0, v3, :cond_6

    .line 434
    const/4 v3, 0x4

    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    shr-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    if-lt v0, v3, :cond_3

    const/16 v3, 0x8

    nop

    .line 439
    .local v3, "n":I
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 440
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 441
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 443
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v0, v6, :cond_4

    .line 444
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 447
    :cond_4
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_5

    .line 449
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    :cond_5
    invoke-static {v4, v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 456
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_6
    if-ge v2, v0, :cond_7

    .line 459
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    :cond_7
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v0, v3, :cond_9

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_8

    goto :goto_2

    .line 469
    :cond_8
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v1, v3, v2

    .line 470
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aput-object p1, v3, v4

    .line 471
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    aput-object p2, v3, v4

    .line 472
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 473
    const/4 v3, 0x0

    return-object v3

    .line 465
    :cond_9
    :goto_2
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 5
    .param p1    # Landroid/support/v4/util/SimpleArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 482
    .local v0, "N":I
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 483
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 484
    if-lez v0, :cond_1

    .line 485
    iget-object v1, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v1, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    goto :goto_1

    .line 490
    :cond_0
    nop

    .line 490
    .local v2, "i":I
    :goto_0
    move v1, v2

    .line 490
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 491
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    add-int/lit8 v2, v1, 0x1

    .line 490
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 494
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 504
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 505
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 506
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 509
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 518
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 519
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 521
    .local v1, "osize":I
    if-gt v1, v2, :cond_0

    .line 524
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 525
    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 526
    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 527
    const/4 v2, 0x0

    .line 527
    .local v2, "nsize":I
    goto/16 :goto_1

    .line 529
    .end local v2    # "nsize":I
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 530
    .local v3, "nsize":I
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_5

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_5

    .line 534
    if-le v1, v5, :cond_1

    shr-int/lit8 v4, v1, 0x1

    add-int v5, v1, v4

    nop

    :cond_1
    move v4, v5

    .line 538
    .local v4, "n":I
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 539
    .local v5, "ohashes":[I
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 540
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 542
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v1, v7, :cond_2

    .line 543
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 546
    :cond_2
    if-lez p1, :cond_3

    .line 548
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    :cond_3
    if-ge p1, v3, :cond_4

    .line 554
    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    sub-int v9, v3, p1

    invoke-static {v5, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    add-int/lit8 v7, p1, 0x1

    shl-int/2addr v7, v2

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v3, p1

    shl-int/lit8 v2, v10, 0x1

    invoke-static {v6, v7, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 559
    :cond_5
    if-ge p1, v3, :cond_6

    .line 562
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    sub-int v7, v3, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/2addr v5, v2

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    sub-int v8, v3, p1

    shl-int/2addr v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 567
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v2

    aput-object v6, v4, v5

    .line 570
    :goto_0
    move v2, v3

    .line 570
    .end local v3    # "nsize":I
    .restart local v2    # "nsize":I
    :goto_1
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v1, v3, :cond_7

    .line 571
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 573
    :cond_7
    iput v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 574
    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 392
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 393
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 394
    .local p1, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 395
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 581
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 675
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "{}"

    return-object v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 680
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    const/4 v1, 0x0

    .line 681
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_4

    .line 682
    if-lez v1, :cond_1

    .line 683
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 686
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 689
    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :goto_1
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 693
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 696
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "i":I
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 382
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
