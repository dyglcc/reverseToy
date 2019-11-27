.class public abstract Lcom/adhocsdk/zxing/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adhocsdk/zxing/g;


# direct methods
.method protected constructor <init>(Lcom/adhocsdk/zxing/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/b;->a:Lcom/adhocsdk/zxing/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/adhocsdk/zxing/g;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/b;->a:Lcom/adhocsdk/zxing/g;

    return-object v0
.end method

.method public abstract b()Lcom/adhocsdk/zxing/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adhocsdk/zxing/i;
        }
    .end annotation
.end method
