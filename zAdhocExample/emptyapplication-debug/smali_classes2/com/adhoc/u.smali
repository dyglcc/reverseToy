.class public Lcom/adhoc/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adhoc/v;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/adhoc/v;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhoc/u;->a:Lcom/adhoc/v;

    iput p2, p0, Lcom/adhoc/u;->b:I

    iput-object p3, p0, Lcom/adhoc/u;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/adhoc/u;
    .registers 4

    new-instance v0, Lcom/adhoc/u;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "Error,response is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/adhoc/u;-><init>(Lcom/adhoc/v;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/adhoc/u;
    .registers 5

    invoke-static {p2}, Lcom/adhoc/v;->a(Ljava/lang/String;)Lcom/adhoc/v;

    move-result-object v0

    new-instance v1, Lcom/adhoc/u;

    invoke-direct {v1, v0, p0, p1}, Lcom/adhoc/u;-><init>(Lcom/adhoc/v;ILjava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/adhoc/u;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, "Error,response is null"

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/adhoc/u;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static b()Lcom/adhoc/u;
    .registers 4

    new-instance v0, Lcom/adhoc/u;

    const/4 v1, 0x0

    const/4 v2, -0x3

    const-string v3, "Error,IO exception"

    invoke-direct {v0, v1, v2, v3}, Lcom/adhoc/u;-><init>(Lcom/adhoc/v;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/adhoc/v;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/u;->a:Lcom/adhoc/v;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/adhoc/u;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/adhoc/u;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/adhoc/u;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
