.class public final Lcom/adhocsdk/zxing/am;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/adhocsdk/zxing/am;

.field public static final b:Lcom/adhocsdk/zxing/am;

.field public static final c:Lcom/adhocsdk/zxing/am;

.field public static final d:Lcom/adhocsdk/zxing/am;

.field public static final e:Lcom/adhocsdk/zxing/am;

.field public static final f:Lcom/adhocsdk/zxing/am;

.field public static final g:Lcom/adhocsdk/zxing/am;

.field public static final h:Lcom/adhocsdk/zxing/am;


# instance fields
.field private final i:I

.field private final j:I

.field private final k:I

.field private l:[I

.field private m:[I

.field private n:Lcom/adhocsdk/zxing/an;

.field private o:Lcom/adhocsdk/zxing/an;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x100

    const/4 v3, 0x1

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->a:Lcom/adhocsdk/zxing/am;

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->b:Lcom/adhocsdk/zxing/am;

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->c:Lcom/adhocsdk/zxing/am;

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->d:Lcom/adhocsdk/zxing/am;

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x11d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->e:Lcom/adhocsdk/zxing/am;

    new-instance v0, Lcom/adhocsdk/zxing/am;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v4, v3}, Lcom/adhocsdk/zxing/am;-><init>(III)V

    sput-object v0, Lcom/adhocsdk/zxing/am;->f:Lcom/adhocsdk/zxing/am;

    sget-object v0, Lcom/adhocsdk/zxing/am;->f:Lcom/adhocsdk/zxing/am;

    sput-object v0, Lcom/adhocsdk/zxing/am;->g:Lcom/adhocsdk/zxing/am;

    sget-object v0, Lcom/adhocsdk/zxing/am;->c:Lcom/adhocsdk/zxing/am;

    sput-object v0, Lcom/adhocsdk/zxing/am;->h:Lcom/adhocsdk/zxing/am;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhocsdk/zxing/am;->p:Z

    iput p1, p0, Lcom/adhocsdk/zxing/am;->j:I

    iput p2, p0, Lcom/adhocsdk/zxing/am;->i:I

    iput p3, p0, Lcom/adhocsdk/zxing/am;->k:I

    if-gtz p2, :cond_11

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->e()V

    :cond_11
    return-void
.end method

.method static a(II)I
    .registers 3

    xor-int v0, p0, p1

    return v0
.end method

.method private e()V
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/adhocsdk/zxing/am;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/am;->l:[I

    iget v0, p0, Lcom/adhocsdk/zxing/am;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adhocsdk/zxing/am;->m:[I

    move v0, v1

    move v2, v3

    :goto_10
    iget v4, p0, Lcom/adhocsdk/zxing/am;->i:I

    if-ge v0, v4, :cond_29

    iget-object v4, p0, Lcom/adhocsdk/zxing/am;->l:[I

    aput v2, v4, v0

    shl-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/adhocsdk/zxing/am;->i:I

    if-lt v2, v4, :cond_26

    iget v4, p0, Lcom/adhocsdk/zxing/am;->j:I

    xor-int/2addr v2, v4

    iget v4, p0, Lcom/adhocsdk/zxing/am;->i:I

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    move v0, v1

    :goto_2a
    iget v2, p0, Lcom/adhocsdk/zxing/am;->i:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lcom/adhocsdk/zxing/am;->m:[I

    iget-object v4, p0, Lcom/adhocsdk/zxing/am;->l:[I

    aget v4, v4, v0

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3b
    new-instance v0, Lcom/adhocsdk/zxing/an;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/am;->n:Lcom/adhocsdk/zxing/an;

    new-instance v0, Lcom/adhocsdk/zxing/an;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/am;->o:Lcom/adhocsdk/zxing/an;

    iput-boolean v3, p0, Lcom/adhocsdk/zxing/am;->p:Z

    return-void
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, Lcom/adhocsdk/zxing/am;->p:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->e()V

    :cond_7
    return-void
.end method


# virtual methods
.method a(I)I
    .registers 3

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->l:[I

    aget v0, v0, p1

    return v0
.end method

.method a()Lcom/adhocsdk/zxing/an;
    .registers 2

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->n:Lcom/adhocsdk/zxing/an;

    return-object v0
.end method

.method b(I)I
    .registers 3

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->m:[I

    aget v0, v0, p1

    return v0
.end method

.method b()Lcom/adhocsdk/zxing/an;
    .registers 2

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->o:Lcom/adhocsdk/zxing/an;

    return-object v0
.end method

.method b(II)Lcom/adhocsdk/zxing/an;
    .registers 5

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    if-gez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    if-nez p2, :cond_10

    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->n:Lcom/adhocsdk/zxing/an;

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    new-instance v0, Lcom/adhocsdk/zxing/an;

    invoke-direct {v0, p0, v1}, Lcom/adhocsdk/zxing/an;-><init>(Lcom/adhocsdk/zxing/am;[I)V

    goto :goto_f
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/am;->i:I

    return v0
.end method

.method c(I)I
    .registers 5

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->l:[I

    iget v1, p0, Lcom/adhocsdk/zxing/am;->i:I

    iget-object v2, p0, Lcom/adhocsdk/zxing/am;->m:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method c(II)I
    .registers 6

    invoke-direct {p0}, Lcom/adhocsdk/zxing/am;->f()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/adhocsdk/zxing/am;->l:[I

    iget-object v1, p0, Lcom/adhocsdk/zxing/am;->m:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/adhocsdk/zxing/am;->m:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/adhocsdk/zxing/am;->i:I

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_8
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/am;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adhocsdk/zxing/am;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adhocsdk/zxing/am;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
