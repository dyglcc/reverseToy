.class Lcom/adhoc/editor/testernew/AdhocCacheUtils;
.super Ljava/lang/Object;
.source "AdhocCacheUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdhocCacheUtils"

.field private static sPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->sPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringShareData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->getStringShareData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringShareData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v2, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->sPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_5

    .line 23
    :goto_4
    return-void

    .line 19
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 20
    const-string v0, "ADHOC_SHARED_PREFERENCE"

    .line 21
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->sPreferences:Landroid/content/SharedPreferences;

    goto :goto_4
.end method

.method public static saveStringShareData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v1, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
