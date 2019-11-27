.class public final Lcom/adhocsdk/zxing/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:Lcom/adhocsdk/zxing/a;

.field private final d:J

.field private e:[Lcom/adhocsdk/zxing/o;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adhocsdk/zxing/n;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/a;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/adhocsdk/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/a;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/adhocsdk/zxing/o;Lcom/adhocsdk/zxing/a;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhocsdk/zxing/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adhocsdk/zxing/m;->b:[B

    iput-object p3, p0, Lcom/adhocsdk/zxing/m;->e:[Lcom/adhocsdk/zxing/o;

    iput-object p4, p0, Lcom/adhocsdk/zxing/m;->c:Lcom/adhocsdk/zxing/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhocsdk/zxing/m;->f:Ljava/util/Map;

    iput-wide p5, p0, Lcom/adhocsdk/zxing/m;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/adhocsdk/zxing/n;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/adhocsdk/zxing/m;->f:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/adhocsdk/zxing/n;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/adhocsdk/zxing/m;->f:Ljava/util/Map;

    :cond_d
    iget-object v0, p0, Lcom/adhocsdk/zxing/m;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adhocsdk/zxing/m;->a:Ljava/lang/String;

    return-object v0
.end method
