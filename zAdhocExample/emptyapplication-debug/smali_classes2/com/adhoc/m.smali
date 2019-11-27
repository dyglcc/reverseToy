.class public Lcom/adhoc/m;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adhoc/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/adhoc/m;
    .registers 4

    new-instance v0, Lcom/adhoc/m;

    invoke-direct {v0}, Lcom/adhoc/m;-><init>()V

    const-string v1, "server_http_time_gap_time"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/adhoc/p;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adhoc/m;->a:J

    const-string v1, "server_version_name"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/adhoc/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adhoc/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/adhoc/m;
    .registers 7

    new-instance v0, Lcom/adhoc/m;

    invoke-direct {v0}, Lcom/adhoc/m;-><init>()V

    const-string v1, "getflag_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adhoc/m;->a:J

    const-string v1, "app_lowest_version"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adhoc/m;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 5

    const-string v0, "server_http_time_gap_time"

    iget-wide v2, p0, Lcom/adhoc/m;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "server_version_name"

    iget-object v1, p0, Lcom/adhoc/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "getflag_interval"

    iget-wide v2, p0, Lcom/adhoc/m;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "app_lowest_version"

    iget-object v2, p0, Lcom/adhoc/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_18

    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_13
.end method
