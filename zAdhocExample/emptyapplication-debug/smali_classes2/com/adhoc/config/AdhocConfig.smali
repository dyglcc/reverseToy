.class public Lcom/adhoc/config/AdhocConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/config/AdhocConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Lcom/adhoc/config/AdhocConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$000(Lcom/adhoc/config/AdhocConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/config/AdhocConfig;->a:Landroid/content/Context;

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mAppKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$100(Lcom/adhoc/config/AdhocConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/config/AdhocConfig;->b:Ljava/lang/String;

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mCustom:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$200(Lcom/adhoc/config/AdhocConfig$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/config/AdhocConfig;->e:Ljava/util/HashMap;

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mClientId:Ljava/lang/String;
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$300(Lcom/adhoc/config/AdhocConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/config/AdhocConfig;->d:Ljava/lang/String;

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mCrashReport:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$400(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->f:Z

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mWifiReport:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$500(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->g:Z

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->reportImmediately:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$600(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->h:Z

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mDebug:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$700(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->c:Z

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mIsSetClientId:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$800(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->i:Z

    # getter for: Lcom/adhoc/config/AdhocConfig$Builder;->mIsMultiProcess:Z
    invoke-static {p1}, Lcom/adhoc/config/AdhocConfig$Builder;->access$900(Lcom/adhoc/config/AdhocConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/config/AdhocConfig$Builder;Lcom/adhoc/config/AdhocConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adhoc/config/AdhocConfig;-><init>(Lcom/adhoc/config/AdhocConfig$Builder;)V

    return-void
.end method

.method public static a(Lcom/adhoc/config/AdhocConfig;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->i:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/adhoc/config/AdhocConfig;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->APPKEY:Ljava/lang/String;

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->h()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adhoc/p;->a(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->h()Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/ai;->a(Landroid/content/Context;)V

    :cond_30
    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/adhoc/l;->a(Z)V

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/adhoc/l;->b(Z)V

    invoke-static {}, Lcom/adhoc/d;->a()Lcom/adhoc/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adhoc/d;->a(Z)V

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/adhoc/adhocsdk/AdhocTracker;->sAdhocContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adhoc/c;->a(Landroid/content/Context;)Lcom/adhoc/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adhoc/c;->a(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/adhoc/config/AdhocConfig;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/adhoc/ag;->a(Z)V

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/config/AdhocConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/config/AdhocConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adhoc/config/AdhocConfig;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->f:Z

    return v0
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->g:Z

    return v0
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->h:Z

    return v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->j:Z

    return v0
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/config/AdhocConfig;->c:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/config/AdhocConfig;->a:Landroid/content/Context;

    return-object v0
.end method
