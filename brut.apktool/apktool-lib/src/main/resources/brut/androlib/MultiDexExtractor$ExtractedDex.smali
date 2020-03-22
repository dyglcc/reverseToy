.class Lcom/reverse/stub/MultiDexExtractor$ExtractedDex;
.super Ljava/io/File;
.source "MultiDexExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reverse/stub/MultiDexExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractedDex"
.end annotation


# instance fields
.field public crc:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "dexDir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/reverse/stub/MultiDexExtractor$ExtractedDex;->crc:J

    .line 324
    return-void
.end method
