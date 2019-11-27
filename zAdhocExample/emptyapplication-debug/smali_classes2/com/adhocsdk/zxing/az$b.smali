.class public final Lcom/adhocsdk/zxing/az$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/adhocsdk/zxing/az$a;


# direct methods
.method varargs constructor <init>(I[Lcom/adhocsdk/zxing/az$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adhocsdk/zxing/az$b;->a:I

    iput-object p2, p0, Lcom/adhocsdk/zxing/az$b;->b:[Lcom/adhocsdk/zxing/az$a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/adhocsdk/zxing/az$b;->a:I

    return v0
.end method

.method public b()[Lcom/adhocsdk/zxing/az$a;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/az$b;->b:[Lcom/adhocsdk/zxing/az$a;

    return-object v0
.end method
