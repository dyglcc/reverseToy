.class public Lcom/adhoc/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "socket"

    sput-object v0, Lcom/adhoc/b$a;->a:Ljava/lang/String;

    const-string v0, "https://socket.appadhoc.com/"

    sput-object v0, Lcom/adhoc/b$a;->b:Ljava/lang/String;

    const-string v0, "https://experiment.appadhoc.com/apps/{app_id}/exp_last_updated"

    sput-object v0, Lcom/adhoc/b$a;->c:Ljava/lang/String;

    const-string v0, "https://experiment.appadhoc.com/get_flags_async"

    sput-object v0, Lcom/adhoc/b$a;->d:Ljava/lang/String;

    const-string v0, "https://experiment.appadhoc.com/apps/{app_id}/sdk_config"

    sput-object v0, Lcom/adhoc/b$a;->e:Ljava/lang/String;

    const-string v0, "https://tracker.appadhoc.com/tracker"

    sput-object v0, Lcom/adhoc/b$a;->f:Ljava/lang/String;

    const-string v0, "https://experiment.appadhoc.com/force_clients"

    sput-object v0, Lcom/adhoc/b$a;->g:Ljava/lang/String;

    const-string v0, "http://h5.dev.appadhoc.com/codeScreenShot"

    sput-object v0, Lcom/adhoc/b$a;->h:Ljava/lang/String;

    const-string v0, "https://experiment.appadhoc.com/delete_all_force_clients"

    sput-object v0, Lcom/adhoc/b$a;->i:Ljava/lang/String;

    return-void
.end method
