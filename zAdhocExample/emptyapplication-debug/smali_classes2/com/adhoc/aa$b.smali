.class Lcom/adhoc/aa$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adhoc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhoc/aa$b;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/adhoc/aa$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adhoc/aa$b;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adhoc/aa$b;->a:Z

    return v0
.end method
