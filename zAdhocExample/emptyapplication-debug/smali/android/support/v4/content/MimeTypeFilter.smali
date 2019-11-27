.class public final Landroid/support/v4/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filters"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 93
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "mimeTypeParts":[Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 99
    .local v4, "filter":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "filterParts":[Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    return-object v4

    .line 98
    .end local v4    # "filter":Ljava/lang/String;
    .end local v5    # "filterParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return-object v0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 115
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 116
    return-object v0

    .line 119
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "filterParts":[Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 121
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v5, v1}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    return-object v4

    .line 120
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "mimeTypeParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_2
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "mimeTypeParts":[Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "filterParts":[Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "mimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 137
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 141
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "filterParts":[Ljava/lang/String;
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    .line 144
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "mimeTypeParts":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeTypeParts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "filterParts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    array-length v3, p0

    if-eq v3, v1, :cond_2

    .line 57
    return v0

    .line 59
    :cond_2
    const-string v1, "*"

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p1, v0

    aget-object v3, p0, v0

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    return v0

    .line 63
    :cond_3
    const-string v1, "*"

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p1, v2

    aget-object v3, p0, v2

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    return v0

    .line 68
    :cond_4
    return v2

    .line 53
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
