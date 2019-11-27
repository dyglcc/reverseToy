.class Lcom/adhoc/editor/testernew/AdhocUtil;
.super Ljava/lang/Object;
.source "AdhocUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v1, 0x0

    .line 93
    :goto_3
    return v1

    .line 89
    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_b

    .line 90
    float-to-int v1, p1

    goto :goto_3

    .line 92
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_3
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestId"    # I

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public static runApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 23
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .local v7, "resolveIntent":Landroid/content/Intent;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 26
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "apps":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 30
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_4a

    .line 31
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 32
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 33
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 44
    .end local v0    # "apps":Ljava/util/List;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "resolveIntent":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4a
    :goto_4a
    return-void

    .line 39
    :catch_4b
    move-exception v3

    .line 40
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u672a\u80fd\u542f\u52a8app :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public static runApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static runAppoutside(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 50
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    .local v7, "resolveIntent":Landroid/content/Intent;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 53
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "apps":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 57
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_4a

    .line 58
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 59
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 60
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 70
    .end local v0    # "apps":Ljava/util/List;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "resolveIntent":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4a
    :goto_4a
    return-void

    .line 66
    :catch_4b
    move-exception v3

    .line 67
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_4a
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
