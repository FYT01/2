.class public Lcom/android/emailcommon/provider/Credential;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Credential$CredentialQuery;,
        Lcom/android/emailcommon/provider/Credential$1;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN_COLUMN:Ljava/lang/String; = "accessToken"

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Credential;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/android/emailcommon/provider/Credential;

.field public static final EXPIRATION_COLUMN:Ljava/lang/String; = "expiration"

.field public static final PROVIDER_COLUMN:Ljava/lang/String; = "provider"

.field public static final REFRESH_TOKEN_COLUMN:Ljava/lang/String; = "refreshToken"

.field public static final TABLE_NAME:Ljava/lang/String; = "Credential"


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mExpiration:J

.field public mProviderId:Ljava/lang/String;

.field public mRefreshToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 23
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    const-wide/16 v1, -0x1

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/provider/Credential;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/emailcommon/provider/Credential;->EMPTY:Lcom/android/emailcommon/provider/Credential;

    .line 108
    new-instance v0, Lcom/android/emailcommon/provider/Credential$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential$1;-><init>()V

    .line 107
    sput-object v0, Lcom/android/emailcommon/provider/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 64
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "providerId"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "refreshToken"    # Ljava/lang/String;
    .param p6, "expiration"    # J

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 69
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 70
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    .line 71
    iput-object p3, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 74
    iput-wide p6, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 134
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 133
    return-void
.end method

.method protected static fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/Credential;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 188
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    .line 189
    .local v0, "c":Lcom/android/emailcommon/provider/Credential;
    const-string/jumbo v2, "provider"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 190
    const-string/jumbo v2, "accessToken"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 191
    const-string/jumbo v2, "refreshToken"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 192
    const-string/jumbo v2, "expiration"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object v0

    .line 194
    .end local v0    # "c":Lcom/android/emailcommon/provider/Credential;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception while deserializing Credential"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    const/4 v2, 0x0

    return-object v2
.end method

.method public static initCredential()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/credential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public static restoreCredentialsWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Credential;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 82
    const-class v1, Lcom/android/emailcommon/provider/Credential;

    .line 83
    sget-object v2, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Credential$CredentialQuery;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    .line 82
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Credential;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 144
    instance-of v2, p1, Lcom/android/emailcommon/provider/Credential;

    if-nez v2, :cond_0

    .line 145
    return v1

    :cond_0
    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/emailcommon/provider/Credential;

    .line 148
    .local v0, "that":Lcom/android/emailcommon/provider/Credential;
    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 148
    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 148
    if-eqz v2, :cond_1

    .line 151
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 148
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    sget-object v0, Lcom/android/emailcommon/provider/Credential;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    .line 89
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    .line 90
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    .line 92
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    .line 93
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    .line 87
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Credential being saved with no provider"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    :cond_0
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "accessToken"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "refreshToken"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "expiration"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    return-object v0
.end method

.method protected toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "provider"

    iget-object v3, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v2, "accessToken"

    iget-object v3, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v2, "refreshToken"

    iget-object v3, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v2, "expiration"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v1

    .line 180
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception while serializing Credential"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    const/4 v2, 0x0

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/emailcommon/provider/Credential;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Credential;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
