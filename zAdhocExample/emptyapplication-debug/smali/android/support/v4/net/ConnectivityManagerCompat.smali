.class public final Landroid/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
    }
.end annotation


# static fields
.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 139
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 140
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 3
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 105
    return v1

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 109
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 123
    :pswitch_0
    return v1

    .line 120
    :pswitch_1
    const/4 v1, 0x0

    return v1

    .line 116
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
