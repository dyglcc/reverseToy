.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Lcom/adhoc/editor/IAdhocDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->save2Server(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V
    .registers 2
    .param p1, "this$0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "reson"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 240
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 241
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 242
    iget-object v2, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "experiment_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "name":Ljava/lang/String;
    const-string v6, "experiment_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3e

    move-object v5, v1

    .line 220
    .local v5, "value":Ljava/lang/String;
    :goto_18
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 221
    const-string v5, "unknown"

    .line 223
    :cond_20
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 225
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "bun":Landroid/os/Bundle;
    const-string v6, "exp"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v6, 0x1

    iput v6, v3, Landroid/os/Message;->what:I

    .line 228
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v6, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;->this$0:Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    # getter for: Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d} :catch_40

    .line 233
    .end local v0    # "bun":Landroid/os/Bundle;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_3d
    return-void

    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_3e
    move-object v5, v4

    .line 219
    goto :goto_18

    .line 230
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "name":Ljava/lang/String;
    :catch_40
    move-exception v6

    goto :goto_3d
.end method
