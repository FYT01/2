.class public final Lcom/android/emailcommon/provider/Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Account$1;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FLAGS_COLUMN_FLAGS:I = 0x1

.field public static final ACCOUNT_FLAGS_COLUMN_ID:I = 0x0

.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_ID_COMBINED_VIEW:J = 0x1000000000000000L

.field public static final CHECK_INTERVAL_DEFAULT_PULL:I = 0xf

.field public static final CHECK_INTERVAL_NEVER:I = -0x1

.field public static final CHECK_INTERVAL_PUSH:I = -0x2

.field public static final CONTENT_CAPABILITIES_COLUMN:I = 0x11

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_EMAIL_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_HOST_AUTH_KEY_RECV_COLUMN:I = 0x6

.field public static final CONTENT_HOST_AUTH_KEY_SEND_COLUMN:I = 0x7

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAX_ATTACHMENT_SIZE_COLUMN:I = 0x10

.field public static final CONTENT_PING_DURATION_COLUMN:I = 0xf

.field public static final CONTENT_POLICY_KEY_COLUMN:I = 0xe

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_VERSION_COLUMN:I = 0xb

.field public static final CONTENT_RINGTONE_URI_COLUMN:I = 0xa

.field public static final CONTENT_SECURITY_SYNC_KEY_COLUMN:I = 0xc

.field public static final CONTENT_SENDER_NAME_COLUMN:I = 0x9

.field public static final CONTENT_SIGNATURE_COLUMN:I = 0xd

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x5

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x4

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETE_POLICY_7DAYS:I = 0x1

.field public static final DELETE_POLICY_NEVER:I = 0x0

.field public static final DELETE_POLICY_ON_DELETE:I = 0x2

.field private static final FIND_INBOX_SELECTION:Ljava/lang/String; = "type = 0 AND accountKey =?"

.field public static final FLAGS_BACKGROUND_ATTACHMENTS:I = 0x100

.field public static final FLAGS_DELETE_POLICY_MASK:I = 0xc

.field public static final FLAGS_DELETE_POLICY_SHIFT:I = 0x2

.field public static final FLAGS_INCOMPLETE:I = 0x10

.field public static final FLAGS_INITIAL_FOLDER_LIST_LOADED:I = 0x2000

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAGS_SECURITY_HOLD:I = 0x20

.field public static final FLAGS_SUPPORTS_GLOBAL_SEARCH:I = 0x1000

.field public static final FLAGS_SUPPORTS_SEARCH:I = 0x800

.field public static final FLAGS_SUPPORTS_SMART_FORWARD:I = 0x80

.field public static final FLAGS_SYNC_ADAPTER:I = 0x200

.field public static final FLAGS_SYNC_DISABLED:I = 0x400

.field public static final FLAGS_VIBRATE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final JSON_TAG_HOST_AUTH_RECV:Ljava/lang/String; = "hostAuthRecv"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final JSON_TAG_HOST_AUTH_SEND:Ljava/lang/String; = "hostAuthSend"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final NO_ACCOUNT:J = -0x1L

.field public static RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri; = null

.field public static final SECURITY_NONZERO_SELECTION:Ljava/lang/String; = "policyKey IS NOT NULL AND policyKey!=0"

.field public static SYNC_SETTING_CHANGED_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Account"


# instance fields
.field public mCapabilities:I

.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

.field public mPingDuration:J

.field public transient mPolicy:Lcom/android/emailcommon/provider/Policy;

.field public mPolicyKey:J

.field public mProtocolVersion:Ljava/lang/String;

.field private mRingtoneUri:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field private mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private transient mTemporary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 183
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    .line 184
    const-string/jumbo v1, "emailAddress"

    aput-object v1, v0, v5

    const-string/jumbo v1, "syncKey"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "syncLookback"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "syncInterval"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "hostAuthKeyRecv"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "hostAuthKeySend"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "flags"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "senderName"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "ringtoneUri"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocolVersion"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "securitySyncKey"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "signature"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "policyKey"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "pingDuration"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "maxAttachmentSize"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "capabilities"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 182
    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 196
    new-array v0, v5, [Ljava/lang/String;

    .line 197
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v4

    .line 196
    sput-object v0, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 901
    new-instance v0, Lcom/android/emailcommon/provider/Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account$1;-><init>()V

    .line 900
    sput-object v0, Lcom/android/emailcommon/provider/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 206
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 207
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 210
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 211
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 212
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 956
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 957
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 976
    iput-object v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 978
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 981
    :cond_0
    iput-object v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 983
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 985
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    .line 956
    return-void
.end method

.method public static clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 635
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 636
    const-string/jumbo v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    .line 635
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 638
    .local v8, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 641
    .local v10, "flags":I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    .line 642
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 645
    .local v6, "accountId":J
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 646
    .local v11, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 649
    .end local v6    # "accountId":J
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "flags":I
    .end local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    .line 650
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 649
    throw v1

    .line 650
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 633
    return-void
.end method

.method protected static fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/Account;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 836
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 837
    .local v0, "a":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v4, "displayName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 838
    const-string/jumbo v4, "emailAddress"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 840
    const-string/jumbo v4, "syncLookback"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 841
    const-string/jumbo v4, "syncInterval"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 842
    const-string/jumbo v4, "hostAuthRecv"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 843
    .local v2, "recvJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/android/emailcommon/provider/HostAuth;->fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 844
    const-string/jumbo v4, "hostAuthSend"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 845
    .local v3, "sendJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 846
    invoke-static {v3}, Lcom/android/emailcommon/provider/HostAuth;->fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 848
    :cond_0
    const-string/jumbo v4, "flags"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 849
    const-string/jumbo v4, "senderName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 850
    const-string/jumbo v4, "protocolVersion"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 852
    const-string/jumbo v4, "signature"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 854
    const-string/jumbo v4, "pingDuration"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    .line 855
    const-string/jumbo v4, "capabilities"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    return-object v0

    .line 857
    .end local v0    # "a":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "recvJson":Lorg/json/JSONObject;
    .end local v3    # "sendJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Exception while deserializing Account"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 860
    return-object v7
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 5
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 826
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 827
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/android/emailcommon/provider/Account;->fromJson(Lorg/json/JSONObject;)Lcom/android/emailcommon/provider/Account;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 828
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not parse json for account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 831
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 592
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 593
    .local v0, "accountId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 594
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    return-object v2

    .line 596
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getAccountIdForMessageId(Landroid/content/Context;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 582
    const-string/jumbo v0, "accountKey"

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;J)J
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastUsedAccountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 510
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 509
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 515
    .local v10, "firstAccount":J
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 519
    .local v6, "accountId":J
    cmp-long v0, v6, p1

    if-nez v0, :cond_2

    .line 529
    if-eqz v8, :cond_1

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_1
    return-wide v6

    .line 523
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_3

    .line 524
    move-wide v10, v6

    .line 526
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 529
    .end local v6    # "accountId":J
    :cond_4
    if-eqz v8, :cond_5

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_5
    return-wide v10

    .line 528
    :catchall_0
    move-exception v0

    .line 529
    if-eqz v8, :cond_6

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_6
    throw v0
.end method

.method private static getId(Landroid/net/Uri;)J
    .locals 2
    .param p0, "u"    # Landroid/net/Uri;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInboxId(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    .line 622
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    .line 623
    const-string/jumbo v3, "type = 0 AND accountKey =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 624
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 623
    const/4 v5, 0x0

    move-object v0, p0

    .line 622
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v1, 0x0

    .line 544
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 545
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 548
    :cond_0
    return-object v1
.end method

.method public static initAccount()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_SYNC_SETTING_CHANGED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->SYNC_SETTING_CHANGED_URI:Landroid/net/Uri;

    .line 122
    return-void
.end method

.method public static isSecurityHold(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 613
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 614
    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 612
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 615
    const-wide/16 v2, 0x20

    .line 612
    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 603
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    .line 604
    const-string/jumbo v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    .line 603
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    return v6
.end method

.method public static restoreAccountWithAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithAddress(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method public static restoreAccountWithAddress(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v7

    .line 233
    const-string/jumbo v3, "emailAddress=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 231
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 240
    .local v8, "id":J
    invoke-static {p0, v8, v9, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    if-eqz v6, :cond_0

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_0
    return-object v0

    .line 242
    .end local v8    # "id":J
    :cond_1
    if-eqz v6, :cond_2

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_2
    return-object v5

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    if-eqz v6, :cond_3

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_3
    throw v0
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method public static restoreAccountWithId(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Account;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 221
    const-class v1, Lcom/android/emailcommon/provider/Account;

    .line 222
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    .line 221
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public ensureLoaded(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 868
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Trying to load incomplete Account object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;->ensureLoaded(Landroid/content/Context;)V

    .line 873
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    .line 875
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;->ensureLoaded(Landroid/content/Context;)V

    .line 867
    :cond_1
    return-void
.end method

.method public getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    return v0
.end method

.method protected getContentNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDeletePolicy()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    return-wide v0
.end method

.method public getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 492
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 493
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 498
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    return-object v0

    .line 495
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0
.end method

.method public getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 481
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 482
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 487
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    return-object v0

    .line 484
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0
.end method

.method public getPingDuration()J
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    return-wide v0
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 558
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    return-object v1

    .line 561
    :cond_0
    return-object v1
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncInterval()I
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 372
    const/16 v0, 0xf

    return v0

    .line 374
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    return v0
.end method

.method public hasCapability(I)Z
    .locals 2
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 886
    iget v1, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Account;->mTemporary:Z

    return v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    invoke-virtual {p0, v6}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v6, :cond_0

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_0
    return-void

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    if-eqz v6, :cond_1

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    throw v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 273
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 274
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 275
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 276
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 277
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 278
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 279
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 280
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 281
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 282
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 283
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 284
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 285
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 286
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 287
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 288
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    .line 289
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    .line 271
    return-void
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 662
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v18

    .line 667
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 668
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    return-object v18

    .line 671
    :cond_1
    const/4 v8, 0x0

    .line 672
    .local v8, "index":I
    const/4 v13, -0x1

    .line 673
    .local v13, "recvIndex":I
    const/4 v12, -0x1

    .line 674
    .local v12, "recvCredentialsIndex":I
    const/16 v16, -0x1

    .line 675
    .local v16, "sendIndex":I
    const/4 v15, -0x1

    .line 679
    .local v15, "sendCredentialsIndex":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v9, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 682
    const/4 v8, 0x1

    .line 671
    const/4 v12, 0x0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/Credential;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 683
    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_2
    move v13, v8

    add-int/lit8 v8, v8, 0x1

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 688
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 690
    .local v4, "b":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 691
    if-ltz v12, :cond_3

    .line 692
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "credentialKey"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 696
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/emailcommon/provider/Credential;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 700
    if-eqz v18, :cond_e

    .line 703
    move v15, v12

    .line 711
    :cond_5
    :goto_0
    move/from16 v16, v8

    add-int/lit8 v8, v8, 0x1

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 712
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 714
    .restart local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 715
    if-ltz v15, :cond_6

    .line 716
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .restart local v5    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "credentialKey"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 720
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    const/4 v5, 0x0

    .line 725
    .local v5, "cv":Landroid/content/ContentValues;
    if-gez v13, :cond_8

    if-ltz v16, :cond_a

    .line 726
    :cond_8
    new-instance v5, Landroid/content/ContentValues;

    .end local v5    # "cv":Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v5, "cv":Landroid/content/ContentValues;
    if-ltz v13, :cond_9

    .line 728
    const-string/jumbo v18, "hostAuthKeyRecv"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    :cond_9
    if-ltz v16, :cond_a

    .line 731
    const-string/jumbo v18, "hostAuthKeySend"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 736
    .restart local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 737
    if-eqz v5, :cond_b

    .line 738
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 740
    :cond_b
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    .line 746
    .local v14, "results":[Landroid/content/ContentProviderResult;
    if-ltz v13, :cond_c

    .line 747
    aget-object v18, v14, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 748
    .local v10, "newId":J
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-wide v10, v0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 751
    .end local v10    # "newId":J
    :cond_c
    if-ltz v16, :cond_d

    .line 752
    aget-object v18, v14, v16

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 753
    .restart local v10    # "newId":J
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-wide v10, v0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 756
    .end local v10    # "newId":J
    :cond_d
    aget-object v18, v14, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 757
    .local v17, "u":Landroid/net/Uri;
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/Account;->mId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 758
    return-object v17

    .line 705
    .end local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v14    # "results":[Landroid/content/ContentProviderResult;
    .end local v17    # "u":Landroid/net/Uri;
    :cond_e
    move v15, v8

    add-int/lit8 v8, v8, 0x1

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mCredential:Lcom/android/emailcommon/provider/Credential;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/Credential;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 706
    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 759
    .restart local v4    # "b":Landroid/content/ContentProviderOperation$Builder;
    :catch_0
    move-exception v7

    .line 764
    :goto_1
    const/16 v18, 0x0

    return-object v18

    .line 761
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/content/OperationApplicationException;
    goto :goto_1
.end method

.method public setCapabilities(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    .line 434
    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2
    .param p1, "newPolicy"    # I

    .prologue
    .line 467
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 468
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 466
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "newFlags"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 449
    return-void
.end method

.method public setPingDuration(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 421
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    .line 420
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setSyncInterval(I)V
    .locals 2
    .param p1, "minutes"    # I

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 386
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 382
    :goto_0
    return-void

    .line 388
    :cond_0
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    goto :goto_0
.end method

.method public setSyncLookback(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 406
    return-void
.end method

.method public setTemporary(Z)V
    .locals 0
    .param p1, "temporary"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/Account;->mTemporary:Z

    .line 296
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 769
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string/jumbo v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string/jumbo v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string/jumbo v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    const-string/jumbo v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 777
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string/jumbo v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string/jumbo v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string/jumbo v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string/jumbo v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string/jumbo v1, "policyKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 784
    const-string/jumbo v1, "pingDuration"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    const-string/jumbo v1, "capabilities"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    return-object v0
.end method

.method protected toJson()Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 800
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 801
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "displayName"

    iget-object v5, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string/jumbo v4, "emailAddress"

    iget-object v5, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string/jumbo v4, "syncLookback"

    iget v5, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 804
    const-string/jumbo v4, "syncInterval"

    iget v5, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 805
    iget-object v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/HostAuth;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 806
    .local v2, "recvJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "hostAuthRecv"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 807
    iget-object v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v4, :cond_0

    .line 808
    iget-object v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/HostAuth;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 809
    .local v3, "sendJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "hostAuthSend"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    .end local v3    # "sendJson":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v4, "flags"

    iget v5, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 812
    const-string/jumbo v4, "senderName"

    iget-object v5, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string/jumbo v4, "protocolVersion"

    iget-object v5, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string/jumbo v4, "signature"

    iget-object v5, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    const-string/jumbo v4, "pingDuration"

    iget-wide v6, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 816
    const-string/jumbo v4, "capabilities"

    iget v5, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-object v1

    .line 818
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "recvJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Exception while serializing Account"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 821
    return-object v8
.end method

.method public toJsonString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 790
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->ensureLoaded(Landroid/content/Context;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 792
    .local v0, "json":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 795
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 919
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 920
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 926
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 927
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 937
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 939
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 944
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 946
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 950
    :goto_1
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    return-void

    .line 941
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 948
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
