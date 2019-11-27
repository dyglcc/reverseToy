.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 48
    return-void

    .line 49
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 50
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 52
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 54
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 60
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 63
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 69
    :cond_0
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "drawableCache":Ljava/util/Map;
    :try_start_1
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 75
    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    .end local v0    # "drawableCache":Ljava/util/Map;
    :cond_1
    return-void
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 84
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 87
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 97
    :try_start_1
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 100
    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 105
    return-void

    .line 108
    :cond_2
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 113
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 116
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 123
    :cond_0
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 125
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "resourcesImpl":Ljava/lang/Object;
    :try_start_1
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 133
    goto :goto_1

    .line 131
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    if-nez v0, :cond_2

    .line 137
    return-void

    .line 140
    :cond_2
    sget-boolean v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v2, :cond_3

    .line 142
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 143
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    goto :goto_2

    .line 144
    :catch_2
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_2
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 150
    :cond_3
    const/4 v1, 0x0

    .line 151
    .local v1, "drawableCache":Ljava/lang/Object;
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_4

    .line 153
    :try_start_3
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 156
    goto :goto_3

    .line 154
    :catch_3
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 160
    invoke-static {v1}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 162
    :cond_5
    return-void
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .locals 4
    .param p0, "cache"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 166
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 168
    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 175
    :cond_0
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 177
    return-void

    .line 180
    :cond_1
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v0, :cond_2

    .line 182
    :try_start_1
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string v2, "mUnthemedEntries"

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 184
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "ee":Ljava/lang/NoSuchFieldException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "ee":Ljava/lang/NoSuchFieldException;
    :goto_1
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 191
    :cond_2
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    .line 193
    return-void

    .line 196
    :cond_3
    const/4 v0, 0x0

    .line 198
    .local v0, "unthemedEntries":Landroid/util/LongSparseArray;
    :try_start_2
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 199
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 202
    goto :goto_2

    .line 200
    :catch_2
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 207
    :cond_4
    return-void
.end method
