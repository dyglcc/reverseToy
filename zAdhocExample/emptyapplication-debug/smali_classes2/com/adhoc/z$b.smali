.class Lcom/adhoc/z$b;
.super Lcom/adhoc/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/adhoc/z;


# direct methods
.method private constructor <init>(Lcom/adhoc/z;Ljavax/net/ssl/SSLSocket;)V
    .registers 3

    iput-object p1, p0, Lcom/adhoc/z$b;->c:Lcom/adhoc/z;

    invoke-direct {p0, p1, p2}, Lcom/adhoc/z$a;-><init>(Lcom/adhoc/z;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adhoc/z;Ljavax/net/ssl/SSLSocket;Lcom/adhoc/z$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/adhoc/z$b;-><init>(Lcom/adhoc/z;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    if-eqz p1, :cond_38

    array-length v0, p1

    if-ne v0, v2, :cond_38

    const-string v0, "SSLv3"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adhoc/z$b;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2b

    const-string v1, "SSLv3"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    :cond_38
    invoke-super {p0, p1}, Lcom/adhoc/z$a;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method
