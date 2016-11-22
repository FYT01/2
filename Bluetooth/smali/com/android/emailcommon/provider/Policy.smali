.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Policy.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Policy$1;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

.field private static final ATTACHMENT_RESET_PROJECTION_FLAGS:I = 0x2

.field private static final ATTACHMENT_RESET_PROJECTION_ID:I = 0x0

.field private static final ATTACHMENT_RESET_PROJECTION_SIZE:I = 0x1

.field public static final CONTENT_DONT_ALLOW_ATTACHMENTS_COLUMN:I = 0xd

.field public static final CONTENT_DONT_ALLOW_CAMERA_COLUMN:I = 0xc

.field public static final CONTENT_DONT_ALLOW_HTML_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAX_ATTACHMENT_SIZE_COLUMN:I = 0xf

.field public static final CONTENT_MAX_CALENDAR_LOOKBACK_COLUMN:I = 0x13

.field public static final CONTENT_MAX_EMAIL_LOOKBACK_COLUMN:I = 0x12

.field public static final CONTENT_MAX_HTML_TRUNCATION_SIZE_COLUMN:I = 0x11

.field public static final CONTENT_MAX_SCREEN_LOCK_TIME_COLUMN:I = 0x7

.field public static final CONTENT_MAX_TEXT_TRUNCATION_SIZE_COLUMN:I = 0x10

.field public static final CONTENT_PASSWORD_COMPLEX_CHARS_COLUMN:I = 0x5

.field public static final CONTENT_PASSWORD_EXPIRATION_DAYS_COLUMN:I = 0x3

.field public static final CONTENT_PASSWORD_HISTORY_COLUMN:I = 0x4

.field public static final CONTENT_PASSWORD_MAX_FAILS_COLUMN:I = 0x6

.field public static final CONTENT_PASSWORD_MIN_LENGTH_COLUMN:I = 0x2

.field public static final CONTENT_PASSWORD_MODE_COLUMN:I = 0x1

.field public static final CONTENT_PASSWORD_RECOVERY_ENABLED_COLUMN:I = 0x14

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_POLICIES_ENFORCED_COLUMN:I = 0x15

.field public static final CONTENT_PROTOCOL_POLICIES_UNSUPPORTED_COLUMN:I = 0x16

.field public static final CONTENT_REQUIRE_ENCRYPTION_COLUMN:I = 0x9

.field public static final CONTENT_REQUIRE_ENCRYPTION_EXTERNAL_COLUMN:I = 0xa

.field public static final CONTENT_REQUIRE_MANUAL_SYNC_WHEN_ROAMING:I = 0xb

.field public static final CONTENT_REQUIRE_REMOTE_WIPE_COLUMN:I = 0x8

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAYS_TO_MSEC:J = 0x5265c00L

.field public static final DEBUG_POLICY:Z = false

.field private static final EXPIRATION_OFFSET_MSEC:J = 0x1d4c0L

.field public static final NO_POLICY:Lcom/android/emailcommon/provider/Policy;

.field public static final PASSWORD_MODE_NONE:I = 0x0

.field public static final PASSWORD_MODE_SIMPLE:I = 0x1

.field public static final PASSWORD_MODE_STRONG:I = 0x2

.field public static final POLICY_STRING_DELIMITER:C = '\u0001'

.field public static final TABLE_NAME:Ljava/lang/String; = "Policy"

.field public static final TAG:Ljava/lang/String; = "Email/Policy"


# instance fields
.field public mDontAllowAttachments:Z

.field public mDontAllowCamera:Z

.field public mDontAllowHtml:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarLookback:I

.field public mMaxEmailLookback:I

.field public mMaxHtmlTruncationSize:I

.field public mMaxScreenLockTime:I

.field public mMaxTextTruncationSize:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMaxFails:I

.field public mPasswordMinLength:I

.field public mPasswordMode:I

.field public mPasswordRecoveryEnabled:Z

.field public mProtocolPoliciesEnforced:Ljava/lang/String;

.field public mProtocolPoliciesUnsupported:Ljava/lang/String;

.field public mRequireEncryption:Z

.field public mRequireEncryptionExternal:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 109
    const-string/jumbo v1, "passwordMode"

    aput-object v1, v0, v4

    const-string/jumbo v1, "passwordMinLength"

    aput-object v1, v0, v5

    .line 110
    const-string/jumbo v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const-string/jumbo v1, "passwordHistory"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "passwordComplexChars"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "passwordMaxFails"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "maxScreenLockTime"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "requireRemoteWipe"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "requireEncryption"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "requireEncryptionExternal"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "requireManualSyncRoaming"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "dontAllowCamera"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "dontAllowAttachments"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "dontAllowHtml"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "maxAttachmentSize"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "maxTextTruncationSize"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "maxHTMLTruncationSize"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "maxEmailLookback"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "maxCalendarLookback"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "passwordRecoveryEnabled"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "protocolPoliciesEnforced"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocolPoliciesUnsupported"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 108
    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    .line 125
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "size"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v5

    .line 124
    sput-object v0, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/android/emailcommon/provider/Policy$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 131
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 502
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 503
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 502
    return-void

    :cond_0
    move v0, v2

    .line 512
    goto :goto_0

    :cond_1
    move v0, v2

    .line 513
    goto :goto_1

    :cond_2
    move v0, v2

    .line 514
    goto :goto_2

    :cond_3
    move v0, v2

    .line 515
    goto :goto_3

    :cond_4
    move v0, v2

    .line 516
    goto :goto_4

    :cond_5
    move v0, v2

    .line 517
    goto :goto_5

    :cond_6
    move v0, v2

    .line 518
    goto :goto_6

    :cond_7
    move v1, v2

    .line 524
    goto :goto_7
.end method

.method public static addPolicyStringToList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "policyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 163
    .local v1, "len":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 165
    .local v0, "end":I
    if-le v0, v2, :cond_0

    .line 166
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    return-object p1
.end method

.method private static appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method public static getAccountIdWithPolicyKey(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 153
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    .line 154
    const-string/jumbo v3, "policyKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 155
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 154
    const/4 v5, 0x0

    move-object v0, p0

    .line 153
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initPolicy()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public static restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    return-object v0
.end method

.method public static restorePolicyWithId(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Policy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 143
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 144
    sget-object v3, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    .line 143
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 194
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 195
    const-string/jumbo v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    aput-object v7, v6, v17

    .line 196
    const/4 v7, 0x0

    .line 194
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v9, "cv":Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    .line 202
    .local v14, "policyMax":I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 204
    .local v10, "flags":I
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 205
    .local v15, "size":I
    and-int/lit16 v3, v10, 0x200

    if-eqz v3, :cond_3

    const/16 v16, 0x1

    .line 206
    .local v16, "wasRestricted":Z
    :goto_1
    if-le v15, v14, :cond_4

    const/4 v11, 0x1

    .line 207
    .local v11, "isRestricted":Z
    :goto_2
    move/from16 v0, v16

    if-eq v11, v0, :cond_0

    .line 208
    if-eqz v11, :cond_5

    .line 209
    or-int/lit16 v10, v10, 0x200

    .line 213
    :goto_3
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 214
    .local v12, "id":J
    const-string/jumbo v3, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 216
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 215
    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    .end local v10    # "flags":I
    .end local v11    # "isRestricted":Z
    .end local v12    # "id":J
    .end local v14    # "policyMax":I
    .end local v15    # "size":I
    .end local v16    # "wasRestricted":Z
    :catchall_0
    move-exception v3

    .line 220
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 219
    throw v3

    .line 200
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v3, :cond_2

    .line 201
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v14    # "policyMax":I
    goto :goto_0

    .end local v14    # "policyMax":I
    :cond_2
    const v14, 0x7fffffff

    .restart local v14    # "policyMax":I
    goto :goto_0

    .line 205
    .restart local v10    # "flags":I
    .restart local v15    # "size":I
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "wasRestricted":Z
    goto :goto_1

    .line 206
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "isRestricted":Z
    goto :goto_2

    .line 211
    :cond_5
    and-int/lit16 v10, v10, -0x201

    goto :goto_3

    .line 220
    .end local v10    # "flags":I
    .end local v11    # "isRestricted":Z
    .end local v15    # "size":I
    .end local v16    # "wasRestricted":Z
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 251
    instance-of v1, p1, Lcom/android/emailcommon/provider/Policy;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    .line 252
    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 254
    .local v0, "otherPolicy":Lcom/android/emailcommon/provider/Policy;
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eq v1, v2, :cond_1

    return v3

    .line 255
    :cond_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eq v1, v2, :cond_2

    return v3

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eq v1, v2, :cond_3

    return v3

    .line 257
    :cond_3
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-eq v1, v2, :cond_4

    return v3

    .line 258
    :cond_4
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-eq v1, v2, :cond_5

    return v3

    .line 259
    :cond_5
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-eq v1, v2, :cond_6

    return v3

    .line 260
    :cond_6
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-eq v1, v2, :cond_7

    return v3

    .line 261
    :cond_7
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-eq v1, v2, :cond_8

    return v3

    .line 262
    :cond_8
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-eq v1, v2, :cond_9

    return v3

    .line 263
    :cond_9
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eq v1, v2, :cond_a

    return v3

    .line 264
    :cond_a
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eq v1, v2, :cond_b

    return v3

    .line 268
    :cond_b
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eq v1, v2, :cond_c

    .line 269
    return v3

    .line 271
    :cond_c
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eq v1, v2, :cond_d

    return v3

    .line 272
    :cond_d
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eq v1, v2, :cond_e

    return v3

    .line 273
    :cond_e
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v1, v2, :cond_f

    return v3

    .line 274
    :cond_f
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    if-eq v1, v2, :cond_10

    return v3

    .line 275
    :cond_10
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    if-eq v1, v2, :cond_11

    return v3

    .line 276
    :cond_11
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-eq v1, v2, :cond_12

    return v3

    .line 277
    :cond_12
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    iget v2, v0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-eq v1, v2, :cond_13

    return v3

    .line 278
    :cond_13
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-eq v1, v2, :cond_14

    return v3

    .line 280
    :cond_14
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 281
    iget-object v2, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 280
    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 282
    return v3

    .line 284
    :cond_15
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 285
    iget-object v2, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 284
    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 286
    return v3

    .line 288
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method protected getContentNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .locals 6

    .prologue
    .line 388
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 392
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 393
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 395
    :cond_0
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    packed-switch v0, :pswitch_data_0

    .line 380
    return v1

    .line 372
    :pswitch_0
    const/high16 v0, 0x20000

    return v0

    .line 374
    :pswitch_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-nez v0, :cond_0

    .line 375
    const/high16 v0, 0x50000

    return v0

    .line 377
    :cond_0
    const/high16 v0, 0x60000

    return v0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 294
    .local v0, "code":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 295
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v1, :cond_2

    :goto_2
    shl-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    .line 296
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 297
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 298
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 299
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 301
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 302
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 304
    return v0

    .line 293
    .end local v0    # "code":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "code":I
    goto :goto_0

    :cond_1
    move v1, v3

    .line 294
    goto :goto_1

    :cond_2
    move v2, v3

    .line 295
    goto :goto_2
.end method

.method public normalize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v0, :cond_1

    .line 230
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 231
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 232
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 233
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 234
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 235
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eq v0, v3, :cond_2

    .line 238
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v3, :cond_0

    .line 244
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 310
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 311
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 312
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 313
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 314
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 315
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 316
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 317
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 318
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 319
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 321
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 320
    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 323
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 322
    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 324
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 325
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 326
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 327
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 328
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 329
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 330
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 331
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 332
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 333
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 335
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 308
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 319
    goto :goto_1

    :cond_2
    move v0, v2

    .line 321
    goto :goto_2

    :cond_3
    move v0, v2

    .line 323
    goto :goto_3

    :cond_4
    move v0, v2

    .line 324
    goto :goto_4

    :cond_5
    move v0, v2

    .line 325
    goto :goto_5

    :cond_6
    move v0, v2

    .line 326
    goto :goto_6

    :cond_7
    move v1, v2

    .line 332
    goto :goto_7
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 180
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "passwordMode"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string/jumbo v1, "passwordMinLength"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string/jumbo v1, "passwordMaxFails"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string/jumbo v1, "passwordHistory"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string/jumbo v1, "passwordExpirationDays"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string/jumbo v1, "passwordComplexChars"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string/jumbo v1, "maxScreenLockTime"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string/jumbo v1, "requireRemoteWipe"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 349
    const-string/jumbo v1, "requireEncryption"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 350
    const-string/jumbo v1, "requireEncryptionExternal"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 351
    const-string/jumbo v1, "requireManualSyncRoaming"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    const-string/jumbo v1, "dontAllowCamera"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    const-string/jumbo v1, "dontAllowAttachments"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    const-string/jumbo v1, "dontAllowHtml"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    const-string/jumbo v1, "maxAttachmentSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string/jumbo v1, "maxTextTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string/jumbo v1, "maxHTMLTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v1, "maxEmailLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string/jumbo v1, "maxCalendarLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string/jumbo v1, "passwordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    const-string/jumbo v1, "protocolPoliciesEnforced"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "protocolPoliciesUnsupported"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v2}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const-string/jumbo v1, "No policies]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 411
    :cond_0
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v2, :cond_7

    .line 412
    const-string/jumbo v1, "Pwd none "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_1

    .line 423
    const-string/jumbo v1, "encrypt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v1, :cond_2

    .line 426
    const-string/jumbo v1, "encryptsd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_2
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v1, :cond_3

    .line 429
    const-string/jumbo v1, "nocamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_3
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_4

    .line 432
    const-string/jumbo v1, "noatts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_4
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_5

    .line 435
    const-string/jumbo v1, "nopushroam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_5
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v1, :cond_6

    .line 438
    const-string/jumbo v1, "attmax"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 440
    :cond_6
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :cond_7
    const-string/jumbo v2, "Pwd strong"

    iget v3, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-static {v0, v2, v1}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v1, "len"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 416
    const-string/jumbo v1, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 417
    const-string/jumbo v1, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 418
    const-string/jumbo v1, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 419
    const-string/jumbo v1, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 420
    const-string/jumbo v1, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    iget-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    return-void

    :cond_0
    move v0, v2

    .line 482
    goto :goto_0

    :cond_1
    move v0, v2

    .line 483
    goto :goto_1

    :cond_2
    move v0, v2

    .line 484
    goto :goto_2

    :cond_3
    move v0, v2

    .line 485
    goto :goto_3

    :cond_4
    move v0, v2

    .line 486
    goto :goto_4

    :cond_5
    move v0, v2

    .line 487
    goto :goto_5

    :cond_6
    move v0, v2

    .line 488
    goto :goto_6

    :cond_7
    move v1, v2

    .line 494
    goto :goto_7
.end method
