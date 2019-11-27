.class Lcom/adhoc/editor/testernew/DebugActivityAdhoc$AdhocHanlder;
.super Landroid/os/Handler;
.source "DebugActivityAdhoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/editor/testernew/DebugActivityAdhoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdhocHanlder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 442
    return-void
.end method
