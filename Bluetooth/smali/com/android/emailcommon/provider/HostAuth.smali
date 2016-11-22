.class public Lcom/android/emailcommon/provider/HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/HostAuth$1;
    }
.end annotation


# static fields
.field public static final CONTENT_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_CLIENT_CERT_ALIAS_COLUMN:I = 0x8

.field public static final CONTENT_CREDENTIAL_KEY_COLUMN:I = 0x9

.field public static final CONTENT_DOMAIN_COLUMN:I = 0x7

.field public static final CONTENT_FLAGS_COLUMN:I = 0x4

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOGIN_COLUMN:I = 0x5

.field public static final CONTENT_PASSWORD_COLUMN:I = 0x6

.field public static final CONTENT_PORT_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_COLUMN:I = 0x1

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTHENTICATE:I = 0x4

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_OAUTH:I = 0x10

.field public static final FLAG_SSL:I = 0x1

.field public static final FLAG_TLS:I = 0x2

.field public static final FLAG_TRANSPORTSECURITY_MASK:I = 0xb

.field public static final FLAG_TRUST_ALL:I = 0x8

.field static final JSON_TAG_CREDENTIAL:Ljava/lang/String; = "credential"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEGACY_SCHEME_SMTP:Ljava/lang/String; = "smtp"

.field public static final PORT_UNKNOWN:I = -0x1

.field public static final SCHEME_TRUST_ALL_CERTS:Ljava/lang/String; = "trustallcerts"

.field public static final TABLE_NAME:Ljava/lang/String; = "HostAuth"

.field public static final USER_CONFIG_MASK:I = 0x1b


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mClientCertAlias:Ljava/lang/String;

.field public transient mCredential:Lcom/android/emailcommon/provider/Credential;

.field public mCredentialKey:J

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;

.field public mServerCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocol"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "address"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "port"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "flags"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "login"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "password"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "domain"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "certAlias"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "credentialKey"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 90
    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 416
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth$1;-><init>()V

    .line 415
    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 98
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 460
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 461
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 471
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 477
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Credential;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 478
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    sget-object v1, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Credential;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iput-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    goto :goto_0
.end method

.method protected static fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 279
    :try_start_0
    new-instance v2, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 280
    .local v2, "h":Lcom/android/emailcommon/provider/HostAuth;
    const-string/jumbo v3, "protocol"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 281
    const-string/jumbo v3, "address"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 282
    const-string/jumbo v3, "port"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 283
    const-string/jumbo v3, "flags"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 284
    const-string/jumbo v3, "login"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 285
    const-string/jumbo v3, "password"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 286
    const-string/jumbo v3, "domain"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 287
    const-string/jumbo v3, "certAlias"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 288
    const-string/jumbo v3, "credential"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 289
    .local v0, "credJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/android/emailcommon/provider/Credential;->fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    return-object v2

    .line 293
    .end local v0    # "credJson":Lorg/json/JSONObject;
    .end local v2    # "h":Lcom/android/emailcommon/provider/HostAuth;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception while deserializing HostAuth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    return-object v6
.end method

.method public static getProtocolFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 567
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "\\+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "schemeParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    return-object v3
.end method

.method public static getSchemeFlags(Ljava/lang/String;)I
    .locals 7
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 202
    const-string/jumbo v4, "\\+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "schemeParts":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, "flags":I
    array-length v4, v3

    if-lt v4, v6, :cond_1

    .line 205
    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 206
    .local v1, "part1":Ljava/lang/String;
    const-string/jumbo v4, "ssl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    const/4 v0, 0x1

    .line 211
    :cond_0
    :goto_0
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 212
    aget-object v2, v3, v6

    .line 213
    .local v2, "part2":Ljava/lang/String;
    const-string/jumbo v4, "trustallcerts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    or-int/lit8 v0, v0, 0x8

    .line 218
    .end local v1    # "part1":Ljava/lang/String;
    .end local v2    # "part2":Ljava/lang/String;
    :cond_1
    return v0

    .line 208
    .restart local v1    # "part1":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "tls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getSchemeString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "clientAlias"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v0, ""

    .line 169
    .local v0, "security":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1b

    sparse-switch v1, :sswitch_data_0

    .line 184
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 187
    const-string/jumbo v2, "Can\'t specify a certificate alias for a non-secure connection"

    .line 186
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :sswitch_0
    const-string/jumbo v0, "+ssl+"

    goto :goto_0

    .line 174
    :sswitch_1
    const-string/jumbo v0, "+ssl+trustallcerts"

    goto :goto_0

    .line 177
    :sswitch_2
    const-string/jumbo v0, "+tls+"

    goto :goto_0

    .line 180
    :sswitch_3
    const-string/jumbo v0, "+tls+trustallcerts"

    goto :goto_0

    .line 189
    :cond_0
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static initHostAuth()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 110
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    .line 111
    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public ensureLoaded(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/HostAuth;->getCredential(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    .line 303
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 488
    instance-of v2, p1, Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_0

    .line 489
    return v1

    :cond_0
    move-object v0, p1

    .line 491
    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    .line 492
    .local v0, "that":Lcom/android/emailcommon/provider/HostAuth;
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    if-ne v2, v3, :cond_1

    .line 493
    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 494
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    if-ne v2, v3, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 492
    :cond_1
    return v1
.end method

.method public getCredential(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 121
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Credential;->restoreCredentialsWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    return-object v0
.end method

.method public getLogin()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    return-object v1

    .line 350
    :cond_0
    const/4 v0, 0x0

    .local v0, "trimUser":Ljava/lang/String;
    goto :goto_0
.end method

.method public getOrCreateCredential(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 139
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_0

    .line 140
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 141
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Credential;->restoreCredentialsWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 510
    const/16 v0, 0x1d

    .line 511
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1d

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 517
    :cond_1
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    add-int/2addr v1, v2

    return v1
.end method

.method public removeCredential()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 155
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 152
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 223
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 224
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 225
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 226
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 227
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 228
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 229
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 230
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 231
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 232
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 233
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    .line 234
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 222
    :cond_0
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 548
    const-string/jumbo v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "schemeParts":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 550
    .local v1, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .line 551
    .local v5, "clientCertAlias":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeFlags(Ljava/lang/String;)I

    move-result v4

    .line 554
    .local v4, "flags":I
    array-length v0, v6

    if-le v0, v2, :cond_1

    .line 555
    aget-object v5, v6, v2

    .end local v5    # "clientCertAlias":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 547
    return-void

    .line 556
    .restart local v5    # "clientCertAlias":Ljava/lang/String;
    :cond_1
    array-length v0, v6

    if-le v0, v3, :cond_0

    .line 557
    const-string/jumbo v0, "trustallcerts"

    aget-object v2, v6, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    aget-object v0, v6, v3

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "flags"    # I

    .prologue
    .line 355
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 354
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "flags"    # I
    .param p5, "clientCertAlias"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 373
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 374
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v3, p4, 0x1b

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 376
    and-int/lit8 v2, p4, 0x3

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 377
    .local v1, "useSecureConnection":Z
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 381
    :cond_0
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 382
    iput p3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 383
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 384
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 385
    .local v0, "useSSL":Z
    :goto_1
    const-string/jumbo v2, "smtp"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    if-eqz v0, :cond_5

    const/16 v2, 0x1d1

    :goto_2
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 390
    .end local v0    # "useSSL":Z
    :cond_1
    iput-object p5, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 369
    return-void

    .line 376
    .end local v1    # "useSecureConnection":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "useSecureConnection":Z
    goto :goto_0

    .line 378
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t use client alias on non-secure connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "useSSL":Z
    goto :goto_1

    .line 386
    :cond_5
    const/16 v2, 0x24b

    goto :goto_2
.end method

.method public setHostAuthFromString(Ljava/lang/String;)V
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 531
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 533
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 535
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .end local v0    # "domain":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 538
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 6
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "userName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 313
    .local v2, "userPassword":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    const-string/jumbo v3, ":"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 316
    .local v1, "userName":Ljava/lang/String;
    array-length v3, v0

    if-le v3, v5, :cond_0

    .line 317
    aget-object v2, v0, v5

    .line 320
    .end local v0    # "userInfoParts":[Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    .end local v2    # "userPassword":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 335
    :goto_0
    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 323
    :goto_0
    return-void

    .line 328
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    goto :goto_0
.end method

.method public shouldTrustAllServerCerts()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 401
    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldUseSsl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 396
    iget v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string/jumbo v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "certAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "credentialKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string/jumbo v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    return-object v0
.end method

.method protected toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 258
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "protocol"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v2, "port"

    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v2, "flags"

    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v2, "login"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v2, "domain"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v2, "certAlias"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-eqz v2, :cond_0

    .line 268
    const-string/jumbo v2, "credential"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Credential;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    return-object v1

    .line 271
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception while serializing HostAuth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[protocol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 435
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 448
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredentialKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    if-nez v0, :cond_1

    .line 450
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/Credential;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
