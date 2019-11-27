.class public final Lcom/adhocsdk/zxing/bf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/bd;

.field private final b:Lcom/adhocsdk/zxing/bd;

.field private final c:Lcom/adhocsdk/zxing/bd;


# direct methods
.method public constructor <init>([Lcom/adhocsdk/zxing/bd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/bf;->a:Lcom/adhocsdk/zxing/bd;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/bf;->b:Lcom/adhocsdk/zxing/bd;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/bf;->c:Lcom/adhocsdk/zxing/bd;

    return-void
.end method


# virtual methods
.method public a()Lcom/adhocsdk/zxing/bd;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/bf;->a:Lcom/adhocsdk/zxing/bd;

    return-object v0
.end method

.method public b()Lcom/adhocsdk/zxing/bd;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/bf;->b:Lcom/adhocsdk/zxing/bd;

    return-object v0
.end method

.method public c()Lcom/adhocsdk/zxing/bd;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/bf;->c:Lcom/adhocsdk/zxing/bd;

    return-object v0
.end method
