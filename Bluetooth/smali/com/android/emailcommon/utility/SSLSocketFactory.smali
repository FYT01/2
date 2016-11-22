.class public Lcom/android/emailcommon/utility/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

.field private static final LOG_ENABLED:Z = false

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final TAG:Ljava/lang/String; = "Email.SslFactory"

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 159
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 163
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    .line 162
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 166
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 165
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 170
    new-instance v0, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

    .line 150
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 251
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 252
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 253
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v2, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string/jumbo p1, "TLS"

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "keymanagers":[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_1

    .line 200
    invoke-static {p2, p3}, Lcom/android/emailcommon/utility/SSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 202
    .end local v0    # "keymanagers":[Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v1, 0x0

    .line 203
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_2

    .line 204
    invoke-static {p4}, Lcom/android/emailcommon/utility/SSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 206
    .end local v1    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :cond_2
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 207
    iget-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 208
    iget-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 209
    iput-object p6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string/jumbo v1, "TLS"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 224
    const-string/jumbo v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 218
    const-string/jumbo v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "socketfactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 239
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 240
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 241
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 237
    return-void
.end method

.method private static createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 263
    .local v0, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :cond_1
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 264
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1
.end method

.method private static createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 274
    .local v0, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 275
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method

.method public static getSocketFactory()Lcom/android/emailcommon/utility/SSLSocketFactory;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

    return-object v0
.end method

.method private setSocketHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 9
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setHostname"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 432
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 433
    return-void

    .line 434
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 429
    :goto_0
    return-void

    .line 436
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 438
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 9
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p2, :cond_0

    .line 301
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Target host may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    :cond_0
    if-nez p6, :cond_1

    .line 304
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Parameters may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 308
    :cond_1
    if-eqz p1, :cond_5

    move-object v5, p1

    .line 307
    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 310
    .local v5, "sslsock":Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 313
    :cond_2
    if-gez p5, :cond_3

    .line 314
    const/4 p5, 0x0

    .line 317
    :cond_3
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 318
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v5, v2}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 321
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 322
    .local v0, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    .line 325
    .local v4, "soTimeout":I
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v7, :cond_6

    .line 326
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v7, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v3, v7, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 331
    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v5, v3, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 333
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 336
    invoke-direct {p0, v5, p2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setSocketHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 343
    :try_start_0
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v7, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-object v5

    .line 308
    .end local v0    # "connTimeout":I
    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "soTimeout":I
    .end local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_5
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_0

    .line 328
    .restart local v0    # "connTimeout":I
    .restart local v4    # "soTimeout":I
    .restart local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_6
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, "iox":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_2
    throw v1

    .line 347
    :catch_1
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 407
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0, p2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setSocketHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 413
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 415
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 379
    const-string/jumbo v1, "Socket not created by this factory."

    .line 378
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 418
    return-void
.end method
