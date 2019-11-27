.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1$1;
.super Ljava/lang/Object;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;


# direct methods
.method constructor <init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1$1;->this$2:Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedData(Lcom/adhoc/adhocsdk/ExperimentFlags;)V
    .registers 2
    .param p1, "experimentFlags"    # Lcom/adhoc/adhocsdk/ExperimentFlags;

    .prologue
    .line 271
    return-void
.end method
