.class public final Lcom/adhocsdk/zxing/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/b;

.field private b:Lcom/adhocsdk/zxing/aa;


# direct methods
.method public constructor <init>(Lcom/adhocsdk/zxing/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/adhocsdk/zxing/c;->a:Lcom/adhocsdk/zxing/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/adhocsdk/zxing/aa;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation

    iget-object v0, p0, Lcom/adhocsdk/zxing/c;->b:Lcom/adhocsdk/zxing/aa;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/adhocsdk/zxing/c;->a:Lcom/adhocsdk/zxing/b;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/b;->b()Lcom/adhocsdk/zxing/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/adhocsdk/zxing/c;->b:Lcom/adhocsdk/zxing/aa;

    :cond_c
    iget-object v0, p0, Lcom/adhocsdk/zxing/c;->b:Lcom/adhocsdk/zxing/aa;

    return-object v0
.end method
