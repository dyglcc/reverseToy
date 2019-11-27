.class public Lcom/adhoc/ak;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/adhoc/am;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\u8bf7\u5728AndroidManifest.xml\u6587\u4ef6\u6ce8\u518c\u6743\u9650android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    const-string v0, "NETWORK_STATE_UNKNOWN"

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v0, "WIFI_CONNECTED"

    goto :goto_f

    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "MOBILE_CONNECTED"

    goto :goto_f

    :cond_38
    const-string v0, "NETWORK_UNCONNECTED"
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_f

    :catch_3b
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    const-string v0, "NETWORK_STATE_UNKNOWN"

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/adhoc/am;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "\u8bf7\u5728AndroidManifest.xml\u6587\u4ef6\u6ce8\u518c\u6743\u9650android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    :cond_e
    :goto_e
    return v1

    :cond_f
    if-eqz p0, :cond_e

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_28
    move v1, v0

    goto :goto_e

    :cond_2a
    move v0, v1

    goto :goto_28
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/adhoc/am;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\u8bf7\u5728AndroidManifest.xml\u6587\u4ef6\u6ce8\u518c\u6743\u9650android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    move v0, v1

    :goto_f
    return v0

    :cond_10
    if-nez p0, :cond_14

    move v0, v1

    goto :goto_f

    :cond_14
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_f

    :cond_2e
    move v0, v1

    goto :goto_f
.end method
