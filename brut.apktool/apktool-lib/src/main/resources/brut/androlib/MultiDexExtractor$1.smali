.class Lcom/reverse/stub/MultiDexExtractor$1;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reverse/stub/MultiDexExtractor;->clearDexDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reverse/stub/MultiDexExtractor;


# direct methods
.method constructor <init>(Lcom/reverse/stub/MultiDexExtractor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reverse/stub/MultiDexExtractor;

    .line 244
    iput-object p1, p0, Lcom/reverse/stub/MultiDexExtractor$1;->this$0:Lcom/reverse/stub/MultiDexExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiDex.lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
