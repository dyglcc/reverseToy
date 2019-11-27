.class Lcom/adhoc/editor/testernew/AdhocT;
.super Ljava/lang/Object;
.source "AdhocT.java"


# static fields
.field static AppName:Ljava/lang/String;

.field public static DEBUG:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    .line 7
    const-string v0, "ADHOC_SDK_DEBUG"

    sput-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .registers 3
    .param p0, "num"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_11
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_d
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "exception"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_d
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_11
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_d
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_d
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocT;->AppName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_d
    return-void
.end method
