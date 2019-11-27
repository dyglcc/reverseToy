.class final Lcom/adhocsdk/zxing/an;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/am;

.field private final b:[I


# direct methods
.method constructor <init>(Lcom/adhocsdk/zxing/am;[I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p2

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    array-length v1, p2

    if-le v1, v0, :cond_39

    aget v2, p2, v3

    if-nez v2, :cond_39

    :goto_17
    if-ge v0, v1, :cond_20

    aget v2, p2, v0

    if-nez v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    if-ne v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object v0

    iget-object v0, v0, Lcom/adhocsdk/zxing/an;->b:[I

    iput-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    :goto_2a
    return-void

    :cond_2b
    sub-int/2addr v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/adhocsdk/zxing/an;->b:[I

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->b:[I

    iget-object v2, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_39
    iput-object p2, p0, Lcom/adhocsdk/zxing/an;->b:[I

    goto :goto_2a
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method a(I)I
    .registers 4

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method a(II)Lcom/adhocsdk/zxing/an;
    .registers 8

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v1, v0

    add-int v0, v1, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2a

    iget-object v3, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    iget-object v4, p0, Lcom/adhocsdk/zxing/an;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    new-instance v0, Lcom/adhocsdk/zxing/an;

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    goto :goto_10
.end method

.method a(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    iget-object v1, p1, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-object p1

    :cond_1a
    invoke-virtual {p1}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object p1, p0

    goto :goto_19

    :cond_22
    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->b:[I

    iget-object v2, p1, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v0, v1

    array-length v3, v2

    if-le v0, v3, :cond_51

    move-object v0, v1

    move-object v3, v2

    :goto_2c
    array-length v1, v0

    new-array v4, v1, [I

    array-length v1, v0

    array-length v2, v3

    sub-int v2, v1, v2

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_37
    array-length v5, v0

    if-ge v1, v5, :cond_49

    sub-int v5, v1, v2

    aget v5, v3, v5

    aget v6, v0, v1

    invoke-static {v5, v6}, Lcom/adhocsdk/zxing/am;->a(II)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_49
    new-instance p1, Lcom/adhocsdk/zxing/an;

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {p1, v0, v4}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    goto :goto_19

    :cond_51
    move-object v0, v2

    move-object v3, v1

    goto :goto_2c
.end method

.method b(I)I
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_9

    invoke-virtual {p0, v2}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v0

    :cond_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v3, v0

    if-ne p1, v1, :cond_1e

    iget-object v3, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_13
    if-ge v1, v4, :cond_8

    aget v2, v3, v1

    invoke-static {v0, v2}, Lcom/adhocsdk/zxing/am;->a(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1e
    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    aget v0, v0, v2

    :goto_22
    if-ge v1, v3, :cond_8

    iget-object v2, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v2, p1, v0}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v0

    iget-object v2, p0, Lcom/adhocsdk/zxing/an;->b:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/adhocsdk/zxing/am;->a(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method b(Lcom/adhocsdk/zxing/an;)Lcom/adhocsdk/zxing/an;
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    iget-object v2, p1, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/adhocsdk/zxing/an;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1f
    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iget-object v3, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v4, v3

    iget-object v5, p1, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v6, v5

    add-int v0, v4, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    move v2, v1

    :goto_33
    if-ge v2, v4, :cond_55

    aget v8, v3, v2

    move v0, v1

    :goto_38
    if-ge v0, v6, :cond_51

    add-int v9, v2, v0

    add-int v10, v2, v0

    aget v10, v7, v10

    iget-object v11, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    aget v12, v5, v0

    invoke-virtual {v11, v8, v12}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/adhocsdk/zxing/am;->a(II)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33

    :cond_55
    new-instance v0, Lcom/adhocsdk/zxing/an;

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {v0, v1, v7}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    goto :goto_25
.end method

.method b()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->b:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method c(I)Lcom/adhocsdk/zxing/an;
    .registers 7

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/am;->a()Lcom/adhocsdk/zxing/an;

    move-result-object p0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/adhocsdk/zxing/an;->b:[I

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_23

    iget-object v3, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    iget-object v4, p0, Lcom/adhocsdk/zxing/an;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/adhocsdk/zxing/am;->c(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    new-instance v0, Lcom/adhocsdk/zxing/an;

    iget-object v1, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-direct {v0, v1, v2}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    move-object p0, v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/adhocsdk/zxing/an;->a()I

    move-result v0

    move v1, v0

    :goto_11
    if-ltz v1, :cond_65

    invoke-virtual {p0, v1}, Lcom/adhocsdk/zxing/an;->a(I)I

    move-result v0

    if-eqz v0, :cond_3b

    if-gez v0, :cond_3f

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    :cond_21
    :goto_21
    if-eqz v1, :cond_25

    if-eq v0, v4, :cond_32

    :cond_25
    iget-object v3, p0, Lcom/adhocsdk/zxing/an;->a:Lcom/adhocsdk/zxing/am;

    invoke-virtual {v3, v0}, Lcom/adhocsdk/zxing/am;->b(I)I

    move-result v0

    if-nez v0, :cond_4b

    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    :goto_32
    if-eqz v1, :cond_3b

    if-ne v1, v4, :cond_5c

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_4b
    if-ne v0, v4, :cond_53

    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    const-string v3, "a^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_5c
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
