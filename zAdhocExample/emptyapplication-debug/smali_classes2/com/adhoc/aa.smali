.class public Lcom/adhoc/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/aa$c;,
        Lcom/adhoc/aa$a;,
        Lcom/adhoc/aa$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adhoc/aa$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adhoc/aa;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adhoc/aa;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/aa$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/adhoc/aa;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/adhoc/aa;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/adhoc/aa;
    .registers 1

    invoke-static {}, Lcom/adhoc/aa$a;->a()Lcom/adhoc/aa;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    :try_start_3
    const-string v1, "upload file experiment id is null"

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    :cond_8
    :goto_8
    return v0

    :cond_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "filename"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code-android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/adhoc/am;->a(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/adhoc/t;->b()Lcom/adhoc/t;

    move-result-object v2

    sget-object v3, Lcom/adhoc/b$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adhoc/t;->a(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adhoc/t;->b(Ljava/lang/String;)Lcom/adhoc/t;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Lcom/adhoc/t;->a(I)Lcom/adhoc/t;

    move-result-object v2

    new-instance v3, Lcom/adhoc/ab;

    invoke-direct {v3, v2}, Lcom/adhoc/ab;-><init>(Lcom/adhoc/t;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start upload file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "filename"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/adhoc/ab;->a()Lcom/adhoc/u;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/adhoc/u;->d()I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_7a} :catch_7c

    move-result v0

    goto :goto_8

    :catch_7c
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static synthetic b()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/adhoc/aa;->a:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adhoc/aa;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/adhoc/aa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_f
    const-string v0, "upload activity is null"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    invoke-static {}, Lcom/adhoc/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adhoc/aa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/adhoc/aa;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/aa$b;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/adhoc/aa$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3b
    sget-object v0, Lcom/adhoc/aa;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v2, Lcom/adhoc/aa;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/adhoc/aa$b;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/adhoc/aa$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v2

    new-instance v3, Lcom/adhoc/aa$c;

    iget-object v0, p0, Lcom/adhoc/aa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v1, v0, p1}, Lcom/adhoc/aa$c;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
