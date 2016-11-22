.class public Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryWrapper.java"


# instance fields
.field private final DEPRECATED_CIPHER_SUITES_TO_ENABLE:[Ljava/lang/String;

.field private final mDefaultCipherSuites:[Ljava/lang/String;

.field private final mFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mHandshakeTimeout:I

.field private final mSecure:Z


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V
    .locals 10
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "secure"    # Z
    .param p3, "handshakeTimeout"    # I

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 43
    const/16 v7, 0x15

    new-array v7, v7, [Ljava/lang/String;

    .line 44
    const-string/jumbo v8, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v8, v7, v6

    .line 45
    const-string/jumbo v8, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 46
    const-string/jumbo v8, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 47
    const-string/jumbo v8, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 48
    const-string/jumbo v8, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 49
    const-string/jumbo v8, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 50
    const-string/jumbo v8, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v9, 0x6

    aput-object v8, v7, v9

    .line 51
    const-string/jumbo v8, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v9, 0x7

    aput-object v8, v7, v9

    .line 52
    const-string/jumbo v8, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v9, 0x8

    aput-object v8, v7, v9

    .line 53
    const-string/jumbo v8, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const/16 v9, 0x9

    aput-object v8, v7, v9

    .line 54
    const-string/jumbo v8, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v9, 0xa

    aput-object v8, v7, v9

    .line 55
    const-string/jumbo v8, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v9, 0xb

    aput-object v8, v7, v9

    .line 56
    const-string/jumbo v8, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v9, 0xc

    aput-object v8, v7, v9

    .line 57
    const-string/jumbo v8, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const/16 v9, 0xd

    aput-object v8, v7, v9

    .line 58
    const-string/jumbo v8, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v9, 0xe

    aput-object v8, v7, v9

    .line 59
    const-string/jumbo v8, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v9, 0xf

    aput-object v8, v7, v9

    .line 60
    const-string/jumbo v8, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v9, 0x10

    aput-object v8, v7, v9

    .line 61
    const-string/jumbo v8, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/16 v9, 0x11

    aput-object v8, v7, v9

    .line 62
    const-string/jumbo v8, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v9, 0x12

    aput-object v8, v7, v9

    .line 63
    const-string/jumbo v8, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v9, 0x13

    aput-object v8, v7, v9

    .line 64
    const-string/jumbo v8, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v9, 0x14

    aput-object v8, v7, v9

    .line 43
    iput-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->DEPRECATED_CIPHER_SUITES_TO_ENABLE:[Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 70
    iput-boolean p2, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mSecure:Z

    .line 71
    iput p3, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    .line 76
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "baseDefaultCipherSuites":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    .line 78
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v5, "fullCipherSuiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "baseDefaultCipherSuiteSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "baseSupportedCipherSuites":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    .line 83
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v2, "baseSupportedCipherSuiteSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->DEPRECATED_CIPHER_SUITES_TO_ENABLE:[Ljava/lang/String;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v7, v6

    .line 86
    .local v4, "cipherSuite":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v4    # "cipherSuite":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    .line 92
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static getDefault([Ljavax/net/ssl/KeyManager;I)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p0, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p1, "handshakeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 98
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0, p0, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 99
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V

    return-object v1
.end method

.method public static getInsecure([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p0, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p1, "trustManagers"    # [Ljavax/net/ssl/TrustManager;
    .param p2, "handshakeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 106
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 107
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 108
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V

    return-object v1
.end method

.method public static potentiallyEnableSessionTickets(Ljavax/net/ssl/SSLSocket;)Z
    .locals 8
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 205
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return v6

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    return v7
.end method

.method public static potentiallyEnableSni(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Z
    .locals 8
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return v7

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ignored":Ljava/lang/Exception;
    return v6
.end method

.method private setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "timeout"    # I

    .prologue
    const/4 v6, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setHandshakeTimeout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 252
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to set handshake timeout"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 7
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    instance-of v2, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Attempt to verify non-SSL socket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p0

    .line 233
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 234
    .local v1, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 236
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 237
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_1

    .line 238
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_1
    sget-object v2, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "using cipherSuite %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_2
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 129
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V

    .line 130
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mSecure:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-static {v0, p1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 141
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V

    .line 142
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mSecure:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v0, p1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 152
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V

    .line 153
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "i"    # I
    .param p3, "inetAddress2"    # Ljava/net/InetAddress;
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 162
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V

    .line 163
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 164
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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 118
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mHandshakeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V

    .line 119
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 120
    iget-boolean v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mSecure:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v0, p2}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mDefaultCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
