.class final Lcom/adhocsdk/zxing/z$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adhocsdk/zxing/z;


# direct methods
.method private constructor <init>(Lcom/adhocsdk/zxing/z;)V
    .registers 2

    iput-object p1, p0, Lcom/adhocsdk/zxing/z$b;->a:Lcom/adhocsdk/zxing/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhocsdk/zxing/z;Lcom/adhocsdk/zxing/z$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/z$b;-><init>(Lcom/adhocsdk/zxing/z;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/adhocsdk/zxing/z$b;->a:Lcom/adhocsdk/zxing/z;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/z;->a()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_16

    :cond_20
    iget-object v0, p0, Lcom/adhocsdk/zxing/z$b;->a:Lcom/adhocsdk/zxing/z;

    invoke-static {v0}, Lcom/adhocsdk/zxing/z;->a(Lcom/adhocsdk/zxing/z;)V

    goto :goto_1d
.end method
