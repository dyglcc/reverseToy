.class public Lcom/adhoc/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/adhoc/m;

.field private b:J


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/adhoc/m;->a()Lcom/adhoc/m;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    const-string v0, "config_last_pull_data_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/adhoc/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adhoc/n;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/n$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/adhoc/n;
    .registers 1

    invoke-static {}, Lcom/adhoc/n$a;->a()Lcom/adhoc/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adhoc/n;Lcom/adhoc/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adhoc/n;->a(Lcom/adhoc/u;)V

    return-void
.end method

.method private a(Lcom/adhoc/u;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adhoc/u;->c()Lcom/adhoc/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config_Tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAfterSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adhoc/m;->a(Lorg/json/JSONObject;)Lcom/adhoc/m;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    iget-object v0, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    invoke-virtual {v0}, Lcom/adhoc/m;->b()Z

    invoke-direct {p0}, Lcom/adhoc/n;->f()V

    const-string v0, "Event-GET_SDK_CONFIG"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/adhocsdk/AdhocTracker;->track(Ljava/lang/String;Ljava/lang/Number;)Z

    invoke-virtual {p0}, Lcom/adhoc/n;->c()V

    return-void
.end method

.method private f()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adhoc/n;->b:J

    const-string v0, "config_last_pull_data_time"

    iget-wide v2, p0, Lcom/adhoc/n;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/adhoc/b$a;->e:Ljava/lang/String;

    const-string v1, "{app_id}"

    sget-object v2, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/t;->c()Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v1

    new-instance v2, Lcom/adhoc/n$1;

    invoke-direct {v2, p0}, Lcom/adhoc/n$1;-><init>(Lcom/adhoc/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/adhoc/s;->a(Lcom/adhoc/t;Lcom/adhoc/r;)Z

    goto :goto_4
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    iget-wide v0, v0, Lcom/adhoc/m;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    iget-wide v2, v1, Lcom/adhoc/m;->a:J

    invoke-static {v0, v2, v3}, Lcom/adhoc/f;->a(Landroid/content/Context;J)V

    :cond_13
    return-void
.end method

.method public d()Z
    .registers 9

    const-wide/32 v6, 0x5265c00

    const-string v0, "ConfigFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/adhoc/n;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ConfigIntervalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adhoc/n;->b:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_3d

    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3d
    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public e()Lcom/adhoc/m;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/n;->a:Lcom/adhoc/m;

    return-object v0
.end method
