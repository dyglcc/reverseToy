.class final Lcom/adhocsdk/zxing/q$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhocsdk/zxing/q;
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
.field final synthetic a:Lcom/adhocsdk/zxing/q;


# direct methods
.method private constructor <init>(Lcom/adhocsdk/zxing/q;)V
    .registers 2

    iput-object p1, p0, Lcom/adhocsdk/zxing/q$a;->a:Lcom/adhocsdk/zxing/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhocsdk/zxing/q;Lcom/adhocsdk/zxing/q$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhocsdk/zxing/q$a;-><init>(Lcom/adhocsdk/zxing/q;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-wide/16 v0, 0x2bc

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_c

    :goto_5
    iget-object v0, p0, Lcom/adhocsdk/zxing/q$a;->a:Lcom/adhocsdk/zxing/q;

    invoke-virtual {v0}, Lcom/adhocsdk/zxing/q;->a()V

    const/4 v0, 0x0

    return-object v0

    :catch_c
    move-exception v0

    goto :goto_5
.end method
