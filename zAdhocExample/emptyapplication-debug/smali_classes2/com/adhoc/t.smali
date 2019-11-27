.class public Lcom/adhoc/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adhoc/t;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adhoc/t;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/adhoc/t;->c:Ljava/lang/String;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/adhoc/t;->d:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/adhoc/t;->e:I

    const-string v0, "application/json; charset=UTF-8"

    iput-object v0, p0, Lcom/adhoc/t;->f:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/adhoc/t;
    .registers 1

    new-instance v0, Lcom/adhoc/t;

    invoke-direct {v0}, Lcom/adhoc/t;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/adhoc/t;
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The http timeout must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput p1, p0, Lcom/adhoc/t;->e:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/adhoc/t;
    .registers 2

    iput-object p1, p0, Lcom/adhoc/t;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/t;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/adhoc/t;
    .registers 3

    const-string v0, "POST"

    iput-object v0, p0, Lcom/adhoc/t;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/adhoc/t;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/adhoc/t;
    .registers 2

    const-string v0, "GET"

    iput-object v0, p0, Lcom/adhoc/t;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/adhoc/t;
    .registers 2

    iput-object p1, p0, Lcom/adhoc/t;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/adhoc/t;->e:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/t;->g:Ljava/lang/String;

    return-object v0
.end method
