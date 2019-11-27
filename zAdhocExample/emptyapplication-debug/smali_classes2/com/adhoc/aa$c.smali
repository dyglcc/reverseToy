.class Lcom/adhoc/aa$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhoc/aa$c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adhoc/aa$c;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/adhoc/aa$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x2bc

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/adhoc/aa$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adhoc/aa$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_11
    const-string v0, "activity is null"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/adhoc/aa$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/am;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v1, p0, Lcom/adhoc/aa$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adhoc/aa;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_47

    invoke-static {}, Lcom/adhoc/aa;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/adhoc/aa$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adhoc/aa$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adhoc/aa$b;->a(Z)V

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload response code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_16

    :catch_5e
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_63
    :try_start_63
    const-string v0, "upload file error ,bitmap is null"

    invoke-static {v0}, Lcom/adhoc/al;->b(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_68} :catch_5e

    goto :goto_16
.end method
