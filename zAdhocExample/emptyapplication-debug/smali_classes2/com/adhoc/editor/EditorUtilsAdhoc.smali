.class public Lcom/adhoc/editor/EditorUtilsAdhoc;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdhocEditorUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitDebugExperiment(Lcom/adhoc/editor/IAdhocDebug;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/a;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_d
    const-string v1, "utf8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_4a

    move-result-object v0

    :goto_13
    invoke-interface {p0}, Lcom/adhoc/editor/IAdhocDebug;->onStart()V

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lcom/adhoc/t;->a(I)Lcom/adhoc/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/adhoc/b$a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v1

    new-instance v2, Lcom/adhoc/editor/EditorUtilsAdhoc$2;

    invoke-direct {v2, p0}, Lcom/adhoc/editor/EditorUtilsAdhoc$2;-><init>(Lcom/adhoc/editor/IAdhocDebug;)V

    invoke-virtual {v1, v0, v2}, Lcom/adhoc/s;->a(Lcom/adhoc/t;Lcom/adhoc/r;)Z

    goto :goto_2

    :catch_4a
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static intoDebugExperiment(Ljava/lang/String;Lcom/adhoc/editor/IAdhocDebug;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/a;->a(Landroid/content/Context;)Lcom/adhoc/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/adhoc/editor/IAdhocDebug;->onStart()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v2, "client_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "qr_code"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_44

    :goto_1f
    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->b(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->a(I)Lcom/adhoc/t;

    move-result-object v0

    sget-object v1, Lcom/adhoc/b$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v0

    invoke-static {}, Lcom/adhoc/s;->a()Lcom/adhoc/s;

    move-result-object v1

    new-instance v2, Lcom/adhoc/editor/EditorUtilsAdhoc$1;

    invoke-direct {v2, p1}, Lcom/adhoc/editor/EditorUtilsAdhoc$1;-><init>(Lcom/adhoc/editor/IAdhocDebug;)V

    invoke-virtual {v1, v0, v2}, Lcom/adhoc/s;->a(Lcom/adhoc/t;Lcom/adhoc/r;)Z

    goto :goto_2

    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method public static isEditing()Z
    .registers 1

    invoke-static {}, Lcom/adhoc/ac;->a()Z

    move-result v0

    return v0
.end method

.method public static isHasNewVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/adhoc/am;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_21

    move-result v0

    :goto_5
    const-string v2, "AdhocEditorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCanUseSDK -------- compare = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adhoc/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_5
.end method

.method public static isMin()Z
    .registers 1

    invoke-static {}, Lcom/adhoc/am;->b()Z

    move-result v0

    return v0
.end method

.method public static setEditing(Z)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/adhoc/ac;->a(ZZ)V

    return-void
.end method
