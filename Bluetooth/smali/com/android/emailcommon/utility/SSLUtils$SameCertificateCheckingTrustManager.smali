.class Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;
.super Ljava/lang/Object;
.source "SSLUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameCertificateCheckingTrustManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "serverCert"

    aput-object v3, v2, v10

    const-string/jumbo v3, "_id=?"

    .line 79
    new-array v4, v4, [Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 82
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "We don\'t check client certificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 101
    array-length v6, p1

    if-nez v6, :cond_0

    .line 102
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "No certificates?"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_0
    aget-object v3, p1, v7

    .line 105
    .local v3, "serverCert":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    if-nez v6, :cond_1

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const-string/jumbo v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 111
    .local v4, "storedCert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iput-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "storedCert":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 120
    const-string/jumbo v7, "PublicKey has changed since initial connection!"

    .line 119
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "storedCert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 124
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "storedCert":Ljava/security/cert/Certificate;
    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 125
    .local v2, "encodedCert":[B
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v2, v6, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 126
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "serverCert"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 128
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 129
    sget-object v7, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 128
    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    .end local v2    # "encodedCert":[B
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
