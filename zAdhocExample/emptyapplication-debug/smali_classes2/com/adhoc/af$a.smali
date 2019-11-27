.class Lcom/adhoc/af$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/adhoc/af;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/adhoc/af;

    invoke-direct {v0}, Lcom/adhoc/af;-><init>()V

    sput-object v0, Lcom/adhoc/af$a;->a:Lcom/adhoc/af;

    return-void
.end method

.method static synthetic a()Lcom/adhoc/af;
    .registers 1

    sget-object v0, Lcom/adhoc/af$a;->a:Lcom/adhoc/af;

    return-object v0
.end method
