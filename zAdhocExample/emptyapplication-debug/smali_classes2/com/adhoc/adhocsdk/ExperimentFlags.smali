.class public Lcom/adhoc/adhocsdk/ExperimentFlags;
.super Ljava/lang/Object;


# static fields
.field public static final EXPERIMENT_NULL:Ljava/lang/String; = "EXPERIMENT_NULL"

.field public static final EXPERIMENT_OK:Ljava/lang/String; = "EXPERIMENT_OK"

.field private static final TAG:Ljava/lang/String; = "ExperimentFlags"


# instance fields
.field private flagState:Ljava/lang/String;

.field private mFlags:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    return-void
.end method

.method private checkIsControl()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    const-string v2, "experiments"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"id\":\"CONTROL\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private dealWithFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object p2

    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    move-object p2, v0

    goto :goto_2

    :cond_15
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_13

    :cond_26
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_2f
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_40

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_13

    :cond_40
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_13
.end method

.method public static getNullExperimentflag()Lcom/adhoc/adhocsdk/ExperimentFlags;
    .registers 2

    new-instance v0, Lcom/adhoc/adhocsdk/ExperimentFlags;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "EXPERIMENT_NULL"

    invoke-virtual {v0, v1}, Lcom/adhoc/adhocsdk/ExperimentFlags;->setFlagState(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFlag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-direct {p0}, Lcom/adhoc/adhocsdk/ExperimentFlags;->checkIsControl()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/adhoc/g;->a()Lcom/adhoc/g;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/adhoc/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0, v0}, Lcom/adhoc/adhocsdk/ExperimentFlags;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Experiment"

    const-string v2, "\u8fd4\u56de\u7f13\u5b58\u503c"

    invoke-static {v1, v2}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/adhoc/adhocsdk/ExperimentFlags;->dealWithFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_6

    :cond_3a
    const-string v0, "Experiment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd4\u56de\u9ed8\u8ba4\u503c(defaultValue)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/ag;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_52} :catch_53

    goto :goto_6

    :catch_53
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public getFlagState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->flagState:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFlags()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_5

    :catch_15
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public setFlagState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->flagState:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adhoc/adhocsdk/ExperimentFlags;->mFlags:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
