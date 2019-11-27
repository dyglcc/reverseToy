.class final Lcom/adhoc/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/i;->a(Lcom/adhoc/t;Lcom/adhoc/i$b;Lorg/json/JSONObject;Landroid/os/Handler;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 3

    iput-object p1, p0, Lcom/adhoc/i$4;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/adhoc/i$4;->b:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "testTimeout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adhoc/i$4;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adhoc/i$4;->b:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-static {v0, v1}, Lcom/adhoc/i;->a(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method
