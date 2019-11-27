.class public Lcom/adhoc/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhoc/v;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/adhoc/v;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adhoc/v;
    .registers 2

    new-instance v0, Lcom/adhoc/v;

    invoke-direct {v0, p0}, Lcom/adhoc/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/v;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    iput-object v0, p0, Lcom/adhoc/v;->a:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/adhoc/v;->a:Ljava/lang/String;

    return-object v0
.end method
