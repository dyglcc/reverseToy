.class Lcom/adhoc/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/adhoc/t;

.field private c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;


# direct methods
.method public constructor <init>(Lcom/adhoc/t;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adhoc/i$b;->a:Z

    iput-object p1, p0, Lcom/adhoc/i$b;->b:Lcom/adhoc/t;

    iput-object p2, p0, Lcom/adhoc/i$b;->c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    return-void
.end method

.method static synthetic a(Lcom/adhoc/i$b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/i$b;->a:Z

    return v0
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "testTimeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56de\u8c03\u5b8c\u6210\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adhoc/i$b;->a:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adhoc/i$b;->b:Lcom/adhoc/t;

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/adhoc/i$b;->b:Lcom/adhoc/t;

    invoke-virtual {v0}, Lcom/adhoc/t;->a()Lorg/json/JSONObject;

    move-result-object v0

    :cond_2a
    iget-object v1, p0, Lcom/adhoc/i$b;->c:Lcom/adhoc/adhocsdk/OnAdHocReceivedData;

    invoke-static {v0, v1}, Lcom/adhoc/i;->a(Lorg/json/JSONObject;Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method
