.class public Lcom/android/emailcommon/utility/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;,
        Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;,
        Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final SSL_HANDSHAKE_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "Email.Ssl"

.field private static sExternalSecurityProviderInstaller:Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;

.field private static sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v4, 0x2b

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/emailcommon/utility/SSLUtils;->isAsciiLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/emailcommon/utility/SSLUtils;->isAsciiNumber(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    const/16 v3, 0x2d

    if-ne v3, v0, :cond_1

    .line 238
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/16 v3, 0x2e

    if-eq v3, v0, :cond_0

    .line 239
    if-ne v4, v0, :cond_2

    .line 241
    const-string/jumbo v3, "++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "keyManager"    # Ljavax/net/ssl/KeyManager;
    .param p3, "insecure"    # Z

    .prologue
    .line 200
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 202
    .local v0, "underlying":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 203
    .local v1, "wrapped":Lcom/android/emailcommon/utility/SSLSocketFactory;
    if-eqz p3, :cond_0

    .line 204
    sget-object v2, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 206
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Ljavax/net/ssl/SSLSocketFactory;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "keyManager"    # Ljavax/net/ssl/KeyManager;
    .param p3, "insecure"    # Z

    .prologue
    const/4 v10, 0x0

    const-class v7, Lcom/android/emailcommon/utility/SSLUtils;

    monitor-enter v7

    .line 163
    :try_start_0
    sget-object v6, Lcom/android/emailcommon/utility/SSLUtils;->sExternalSecurityProviderInstaller:Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;

    if-eqz v6, :cond_0

    .line 164
    sget-object v6, Lcom/android/emailcommon/utility/SSLUtils;->sExternalSecurityProviderInstaller:Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;

    invoke-virtual {v6, p0}, Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 169
    :goto_0
    if-eqz p3, :cond_2

    .line 170
    const/4 v6, 0x1

    :try_start_1
    new-array v5, v6, [Ljavax/net/ssl/TrustManager;

    .line 171
    new-instance v6, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;

    invoke-direct {v6, p0, p1}, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 174
    .local v5, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/16 v6, 0x7530

    .line 173
    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->getInsecure([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "insecureFactory":Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
    monitor-exit v7

    .line 175
    return-object v2

    .line 168
    .end local v2    # "insecureFactory":Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
    .end local v5    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v6, 0x1

    :try_start_2
    new-array v3, v6, [Ljavax/net/ssl/KeyManager;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .local v3, "keyManagers":[Ljavax/net/ssl/KeyManager;
    goto :goto_0

    .line 177
    .end local v3    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    :cond_2
    sget-object v6, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_3

    .line 180
    const/16 v6, 0x7530

    .line 179
    invoke-static {v3, v6}, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;->getDefault([Ljavax/net/ssl/KeyManager;I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;

    .line 181
    .local v4, "secureFactory":Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
    sput-object v4, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    .end local v4    # "secureFactory":Lcom/android/emailcommon/utility/SSLSocketFactoryWrapper;
    :cond_3
    sget-object v6, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-object v6

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/security/KeyManagementException;
    :try_start_3
    const-string/jumbo v6, "Email.Ssl"

    const-string/jumbo v8, "Unable to acquire SSLSocketFactory"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v0, v8, v9}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/security/KeyManagementException;
    :goto_1
    monitor-exit v7

    .line 192
    return-object v10

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    const-string/jumbo v6, "Email.Ssl"

    const-string/jumbo v8, "Unable to acquire SSLSocketFactory"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v1, v8, v9}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static isAsciiLetter(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    const/16 v2, 0x61

    if-gt v2, p0, :cond_1

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x41

    if-gt v2, p0, :cond_2

    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isAsciiNumber(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 218
    const/16 v1, 0x30

    if-gt v1, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setExternalSecurityProviderInstaller(Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;)V
    .locals 0
    .param p0, "installer"    # Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;

    .prologue
    .line 149
    sput-object p0, Lcom/android/emailcommon/utility/SSLUtils;->sExternalSecurityProviderInstaller:Lcom/android/emailcommon/utility/SSLUtils$ExternalSecurityProviderInstaller;

    .line 148
    return-void
.end method
