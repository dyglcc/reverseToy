.class final Lcom/reverse/stub/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reverse/stub/ZipUtil$CentralDirectory;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final ENDHDR:I = 0x16

.field private static final ENDSIG:I = 0x6054b50


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/reverse/stub/ZipUtil$CentralDirectory;)J
    .locals 11
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "dir"    # Lcom/reverse/stub/ZipUtil$CentralDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 64
    .local v0, "crc":Ljava/util/zip/CRC32;
    iget-wide v1, p1, Lcom/reverse/stub/ZipUtil$CentralDirectory;->size:J

    .line 65
    .local v1, "stillToRead":J
    iget-wide v3, p1, Lcom/reverse/stub/ZipUtil$CentralDirectory;->offset:J

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 67
    .local v6, "length":I
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 69
    .local v5, "buffer":[B
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 70
    invoke-virtual {v0, v5, v7, v6}, Ljava/util/zip/CRC32;->update([BII)V

    .line 71
    int-to-long v8, v6

    sub-long/2addr v1, v8

    .line 72
    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-nez v10, :cond_0

    .line 73
    goto :goto_1

    .line 76
    :cond_0
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    .line 69
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    return-wide v3
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/reverse/stub/ZipUtil$CentralDirectory;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 32
    .local v0, "scanOffset":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 35
    const-wide/32 v4, 0x10000

    sub-long v4, v0, v4

    .line 36
    .local v4, "stopOffset":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 37
    const-wide/16 v4, 0x0

    .line 40
    :cond_0
    const v2, 0x6054b50

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 43
    .local v2, "endSig":I
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 45
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 46
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 47
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 48
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 49
    new-instance v3, Lcom/reverse/stub/ZipUtil$CentralDirectory;

    invoke-direct {v3}, Lcom/reverse/stub/ZipUtil$CentralDirectory;-><init>()V

    .line 50
    .local v3, "dir":Lcom/reverse/stub/ZipUtil$CentralDirectory;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v3, Lcom/reverse/stub/ZipUtil$CentralDirectory;->size:J

    .line 51
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    iput-wide v6, v3, Lcom/reverse/stub/ZipUtil$CentralDirectory;->offset:J

    .line 52
    return-object v3

    .line 55
    .end local v3    # "dir":Lcom/reverse/stub/ZipUtil$CentralDirectory;
    :cond_1
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 56
    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    new-instance v3, Ljava/util/zip/ZipException;

    const-string v6, "End Of Central Directory signature not found"

    invoke-direct {v3, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 33
    .end local v2    # "endSig":I
    .end local v4    # "stopOffset":J
    :cond_3
    new-instance v2, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File too short to be a zip file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 4
    .param p0, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v0}, Lcom/reverse/stub/ZipUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/reverse/stub/ZipUtil$CentralDirectory;

    move-result-object v1

    .line 22
    .local v1, "dir":Lcom/reverse/stub/ZipUtil$CentralDirectory;
    invoke-static {v0, v1}, Lcom/reverse/stub/ZipUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/reverse/stub/ZipUtil$CentralDirectory;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    .line 24
    .local v1, "var3":J
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 25
    nop

    .line 27
    return-wide v1

    .line 24
    .end local v1    # "var3":J
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 25
    throw v1
.end method
