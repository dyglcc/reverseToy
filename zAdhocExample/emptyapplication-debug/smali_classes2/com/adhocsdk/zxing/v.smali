.class public final Lcom/adhocsdk/zxing/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/adhocsdk/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Lcom/adhocsdk/zxing/a;->l:Lcom/adhocsdk/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->d:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/a;->f:Lcom/adhocsdk/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->e:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/a;->a:Lcom/adhocsdk/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->f:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/a;->k:Lcom/adhocsdk/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->g:Ljava/util/Set;

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->h:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/adhocsdk/zxing/a;->o:Lcom/adhocsdk/zxing/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/adhocsdk/zxing/a;

    const/4 v2, 0x0

    sget-object v3, Lcom/adhocsdk/zxing/a;->p:Lcom/adhocsdk/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/adhocsdk/zxing/a;->h:Lcom/adhocsdk/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/adhocsdk/zxing/a;->g:Lcom/adhocsdk/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/adhocsdk/zxing/a;->m:Lcom/adhocsdk/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/adhocsdk/zxing/a;->n:Lcom/adhocsdk/zxing/a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->a:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/a;->c:Lcom/adhocsdk/zxing/a;

    sget-object v1, Lcom/adhocsdk/zxing/a;->d:Lcom/adhocsdk/zxing/a;

    sget-object v2, Lcom/adhocsdk/zxing/a;->e:Lcom/adhocsdk/zxing/a;

    sget-object v3, Lcom/adhocsdk/zxing/a;->i:Lcom/adhocsdk/zxing/a;

    sget-object v4, Lcom/adhocsdk/zxing/a;->b:Lcom/adhocsdk/zxing/a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->b:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/v;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adhocsdk/zxing/v;->c:Ljava/util/Set;

    sget-object v0, Lcom/adhocsdk/zxing/v;->c:Ljava/util/Set;

    sget-object v1, Lcom/adhocsdk/zxing/v;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
