.class public Lcom/adhoc/receiver/ReceiverAdhoc;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    :cond_a
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adhoc/p;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/adhoc/l;->g()V

    const-string v0, "AdhocReceiver"

    const-string v1, "send tracker data"

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
