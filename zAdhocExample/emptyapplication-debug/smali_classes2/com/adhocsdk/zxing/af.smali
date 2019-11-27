.class public Lcom/adhocsdk/zxing/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/aa;

.field private final b:[Lcom/adhocsdk/zxing/o;


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/aa;[Lcom/adhocsdk/zxing/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/af;->a:Lcom/adhocsdk/zxing/aa;

    iput-object p2, p0, Lcom/adhocsdk/zxing/af;->b:[Lcom/adhocsdk/zxing/o;

    return-void
.end method


# virtual methods
.method public final a()Lcom/adhocsdk/zxing/aa;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/af;->a:Lcom/adhocsdk/zxing/aa;

    return-object v0
.end method

.method public final b()[Lcom/adhocsdk/zxing/o;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/af;->b:[Lcom/adhocsdk/zxing/o;

    return-object v0
.end method
