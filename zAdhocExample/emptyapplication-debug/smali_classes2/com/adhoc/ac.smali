.class public Lcom/adhoc/ac;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adhoc/ac;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 1

    return-void
.end method

.method public static a(ZZ)V
    .registers 2

    sput-boolean p0, Lcom/adhoc/ac;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/adhoc/ac;->a:Z

    return v0
.end method

.method public static b()V
    .registers 0

    return-void
.end method
