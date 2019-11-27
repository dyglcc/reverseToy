.class Lcom/adhoc/editor/testernew/AdhocShareUtils;
.super Ljava/lang/Object;
.source "AdhocShareUtils.java"


# static fields
.field private static ourInstance:Lcom/adhoc/editor/testernew/AdhocShareUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/adhoc/editor/testernew/AdhocShareUtils;

    invoke-direct {v0}, Lcom/adhoc/editor/testernew/AdhocShareUtils;-><init>()V

    sput-object v0, Lcom/adhoc/editor/testernew/AdhocShareUtils;->ourInstance:Lcom/adhoc/editor/testernew/AdhocShareUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/adhoc/editor/testernew/AdhocShareUtils;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocShareUtils;->ourInstance:Lcom/adhoc/editor/testernew/AdhocShareUtils;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string v1, "ADHOC_SHARED_PREFERENCE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "share":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getShare(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "setting"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v1, "setting"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "share":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSetuped(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string v0, "setting"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tester"

    const/4 v2, 0x0

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    return v0
.end method

.method public saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 70
    const-string v2, "setting"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v2, "setting"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public setEditMode(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch1"    # I

    .prologue
    .line 30
    invoke-static {p1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->writeEditString(Ljava/lang/String;)Z

    .line 31
    return-void
.end method

.method public showEditMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->readEditString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
