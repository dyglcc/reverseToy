.class final Lcom/adhoc/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhoc/i;->b(ILcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# direct methods
.method constructor <init>(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/i$3;->a:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adhoc/i$3;->a:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-static {v0, v1}, Lcom/adhoc/i;->a(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V

    return-void
.end method
