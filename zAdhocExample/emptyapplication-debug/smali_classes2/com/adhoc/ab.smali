.class public Lcom/adhoc/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adhoc/y;


# instance fields
.field private a:Lcom/adhoc/t;


# direct methods
.method public constructor <init>(Lcom/adhoc/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    return-void
.end method

.method static synthetic a(Lcom/adhoc/ab;)Lcom/adhoc/t;
    .registers 2

    iget-object v0, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    return-object v0
.end method

.method private a(Ljava/net/URLConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v0}, Lcom/adhoc/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v0}, Lcom/adhoc/t;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v2}, Lcom/adhoc/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v1}, Lcom/adhoc/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "Accept-Encoding"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_e
.end method

.method private static a(Ljava/io/InputStream;Z)[B
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x2000

    new-array v4, v2, [B

    if-eqz p1, :cond_39

    :try_start_14
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1e} :catch_3f
    .catchall {:try_start_14 .. :try_end_1e} :catchall_5f

    :goto_1e
    :try_start_1e
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_42

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_28} :catch_29
    .catchall {:try_start_1e .. :try_end_28} :catchall_72

    goto :goto_1e

    :catch_29
    move-exception v1

    :goto_2a
    :try_start_2a
    invoke-static {v1}, Lcom/adhoc/al;->b(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_72

    :try_start_2d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_5a

    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3

    :catch_34
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_39
    :try_start_39
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3e} :catch_3f
    .catchall {:try_start_39 .. :try_end_3e} :catchall_5f

    goto :goto_1e

    :catch_3f
    move-exception v1

    move-object v2, v0

    goto :goto_2a

    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_48} :catch_29
    .catchall {:try_start_42 .. :try_end_48} :catchall_72

    move-result-object v0

    :try_start_49
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_55

    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_3

    :catch_50
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_55
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_4c

    :catch_5a
    move-exception v1

    invoke-static {v1}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_30

    :catchall_5f
    move-exception v1

    move-object v2, v0

    :goto_61
    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_68

    :goto_64
    :try_start_64
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6d

    :goto_67
    throw v1

    :catch_68
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_64

    :catch_6d
    move-exception v0

    invoke-static {v0}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_67

    :catchall_72
    move-exception v0

    move-object v1, v0

    goto :goto_61
.end method

.method private b()Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v1}, Lcom/adhoc/t;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v1}, Lcom/adhoc/t;->g()I

    move-result v3

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    instance-of v4, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_5b

    const-string v4, "UrlConnectionLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openConnnection -------- httpUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/adhoc/al;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_33
    const-string v2, "TLSv1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v4, Lcom/adhoc/z;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/adhoc/z;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v4, Lcom/adhoc/ab$2;

    invoke-direct {v4, p0, v1}, Lcom/adhoc/ab$2;-><init>(Lcom/adhoc/ab;Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_5b} :catch_9b
    .catch Ljava/security/KeyManagementException; {:try_start_33 .. :try_end_5b} :catch_a0

    :cond_5b
    :goto_5b
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v2}, Lcom/adhoc/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v4, "close"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set time out "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adhoc/ab;->a:Lcom/adhoc/t;

    invoke-virtual {v3}, Lcom/adhoc/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adhoc/al;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/adhoc/ab;->a(Ljava/net/URLConnection;)V

    return-object v1

    :catch_9b
    move-exception v2

    :goto_9c
    invoke-static {v2}, Lcom/adhoc/al;->a(Ljava/lang/Exception;)V

    goto :goto_5b

    :catch_a0
    move-exception v2

    goto :goto_9c
.end method


# virtual methods
.method public a()Lcom/adhoc/u;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/adhoc/ab;->b()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x12c

    if-lt v3, v0, :cond_1e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lcom/adhoc/w;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v6}, Lcom/adhoc/w;-><init>(Ljava/lang/String;IZ)V

    throw v0

    :cond_1e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {v0, v6}, Lcom/adhoc/ab;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    :goto_34
    const-string v1, ""

    if-eqz v0, :cond_4f

    array-length v5, v0

    if-lez v5, :cond_4f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_41
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v3, v4, v0}, Lcom/adhoc/u;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/adhoc/u;

    move-result-object v0

    return-object v0

    :cond_49
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adhoc/ab;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    goto :goto_34

    :cond_4f
    move-object v0, v1

    goto :goto_41
.end method

.method public a(Lcom/adhoc/r;)V
    .registers 4

    invoke-static {}, Lcom/adhoc/q;->a()Lcom/adhoc/q;

    move-result-object v0

    new-instance v1, Lcom/adhoc/ab$1;

    invoke-direct {v1, p0, p1}, Lcom/adhoc/ab$1;-><init>(Lcom/adhoc/ab;Lcom/adhoc/r;)V

    invoke-virtual {v0, v1}, Lcom/adhoc/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method
