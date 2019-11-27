.class Lcom/adhoc/editor/testernew/AdhocSDcard;
.super Ljava/lang/Object;
.source "AdhocSDcard.java"


# static fields
.field private static instance:Lcom/adhoc/editor/testernew/AdhocSDcard;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDCARD \u6302\u8f7d\u72b6\u6001 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->i(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private getAdhocFileDir()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "fileDir":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 42
    const-string v2, "Adhoc"

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 43
    .local v1, "fileadhoc":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 49
    .end local v1    # "fileadhoc":Ljava/io/File;
    :cond_1a
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocSDcard;->instance:Lcom/adhoc/editor/testernew/AdhocSDcard;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/adhoc/editor/testernew/AdhocSDcard;

    invoke-direct {v0, p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adhoc/editor/testernew/AdhocSDcard;->instance:Lcom/adhoc/editor/testernew/AdhocSDcard;

    .line 35
    :cond_b
    sget-object v0, Lcom/adhoc/editor/testernew/AdhocSDcard;->instance:Lcom/adhoc/editor/testernew/AdhocSDcard;

    return-object v0
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 80
    const/4 v1, 0x0

    .line 83
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v8

    if-nez v8, :cond_2f

    .line 84
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8bfb\u5b58\u50a8\u5361\u5931\u8d25 \u5b58\u50a8\u5361\u6302\u8f7d\u72b6\u6001 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 106
    .end local v1    # "content":Ljava/lang/String;
    .local v2, "content":Ljava/lang/String;
    :goto_2e
    return-object v7

    .line 88
    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3c

    move-object v2, v1

    .line 90
    .end local v1    # "content":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_2e

    .line 93
    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :cond_3c
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v5, "inputStream":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 95
    .local v0, "buffer":[B
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 96
    .local v6, "readLen":I
    if-lez v6, :cond_54

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-lez v7, :cond_76

    .line 97
    :cond_54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Either file ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is too long or it is corrupted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocT;->i(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .end local v0    # "buffer":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "readLen":I
    :goto_73
    move-object v2, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    move-object v7, v1

    .line 106
    goto :goto_2e

    .line 100
    .end local v2    # "content":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "readLen":I
    :cond_76
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_7c} :catch_81

    .line 101
    .end local v1    # "content":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    :try_start_7c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_9e

    move-object v1, v2

    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_73

    .line 103
    .end local v0    # "buffer":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "readLen":I
    :catch_81
    move-exception v3

    .line 104
    .local v3, "e":Ljava/io/IOException;
    :goto_82
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fails to read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_73

    .line 103
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "readLen":I
    :catch_9e
    move-exception v3

    move-object v1, v2

    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_82
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 155
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5199SDCARD\u6587\u4ef6\u5931\u8d25\uff01SDCARD \u6302\u8f7d\u72b6\u6001 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    .line 173
    :goto_2c
    return v3

    .line 158
    :cond_2d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u6587\u4ef6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adhoc/editor/testernew/AdhocT;->i(Ljava/lang/String;)V

    .line 165
    :cond_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 166
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_63} :catch_65

    .line 169
    const/4 v3, 0x1

    goto :goto_2c

    .line 170
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_65
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2c
.end method


# virtual methods
.method public existFile(Ljava/lang/String;)Z
    .registers 6
    .param p1, "filedir"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "adhocdir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public getSDPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "sdDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_15

    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, "sdDirfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 221
    .end local v2    # "sdDirfile":Ljava/io/File;
    :cond_15
    return-object v1
.end method

.method public hasSdcard()Z
    .registers 3

    .prologue
    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public readApps(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 115
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8bfb\u5b58\u50a8\u5361\u5931\u8d25 \u5b58\u50a8\u5361\u6302\u8f7d\u72b6\u6001 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    move-object v3, v7

    .line 139
    :goto_2d
    return-object v3

    .line 118
    :cond_2e
    const/4 v3, 0x0

    .line 120
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2f
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v9

    invoke-direct {v9}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5d

    move-object v3, v7

    .line 122
    goto :goto_2d

    .line 126
    :cond_5d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_62} :catch_a3

    .line 128
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_62
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v8, "utf8"

    invoke-direct {v2, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_73
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_9b

    .line 132
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7c} :catch_7d

    goto :goto_73

    .line 136
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :catch_7d
    move-exception v0

    move-object v3, v4

    .line 137
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_7f
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fails to read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_9b
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a1} :catch_7d

    move-object v3, v4

    .line 138
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2d

    .line 136
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :catch_a3
    move-exception v0

    goto :goto_7f
.end method

.method public readClientidFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "adhocdir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADHOC_CLIENT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readEditString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "adhocdir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADHOC_EDITING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeEditString(Ljava/lang/String;)Z
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "adhocdir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADHOC_EDITING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public writeFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "adhocdir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADHOC_CLIENT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/adhoc/editor/testernew/AdhocSDcard;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public writeFileAppend(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 183
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5199SDCARD\u6587\u4ef6\u5931\u8d25\uff01SDCARD \u6302\u8f7d\u72b6\u6001 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/adhoc/editor/testernew/AdhocSDcard;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getInstance(Landroid/content/Context;)Lcom/adhoc/editor/testernew/AdhocSDcard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adhoc/editor/testernew/AdhocSDcard;->hasSdcard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    .line 202
    :goto_2d
    return v3

    .line 186
    :cond_2e
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocSDcard;->getAdhocFileDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_57

    .line 189
    :try_start_54
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_71

    .line 196
    :cond_57
    :goto_57
    :try_start_57
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v7, "utf8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 197
    .local v2, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6f} :catch_76

    move v3, v4

    .line 199
    goto :goto_2d

    .line 190
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_71
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_57

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :catch_76
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
