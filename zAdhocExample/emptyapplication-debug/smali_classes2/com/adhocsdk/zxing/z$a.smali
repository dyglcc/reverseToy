.class final Lcom/adhocsdk/zxing/z$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adhocsdk/zxing/z;


# direct methods
.method private constructor <init>(Lcom/adhocsdk/zxing/z;)V
    .registers 2

    iput-object p1, p0, Lcom/adhocsdk/zxing/z$a;->a:Lcom/adhocsdk/zxing/z;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhocsdk/zxing/z;Lcom/adhocsdk/zxing/z$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/z$a;-><init>(Lcom/adhocsdk/zxing/z;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-wide/32 v0, 0x493e0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/adhocsdk/zxing/z;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing activity due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/adhocsdk/zxing/z$a;->a:Lcom/adhocsdk/zxing/z;

    invoke-static {v0}, Lcom/adhocsdk/zxing/z;->b(Lcom/adhocsdk/zxing/z;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_18} :catch_1a

    :goto_18
    const/4 v0, 0x0

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_18
.end method
