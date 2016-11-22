.class public final Lcom/android/emailcommon/provider/EmailContent$Message;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final ACCOUNT_KEY_SELECTION:Ljava/lang/String; = "accountKey=?"

.field public static final ALL_DRAFT_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1)"

.field public static final ALL_FAVORITE_SELECTION:Ljava/lang/String; = "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

.field public static final ALL_INBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final ALL_OUTBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

.field public static final ALL_UNREAD_SELECTION:Ljava/lang/String; = "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field private static final ATTACHMENT_INDEX_OFFSET:I = 0x2

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_BCC_LIST_COLUMN:I = 0x11

.field public static final CONTENT_CC_LIST_COLUMN:I = 0x10

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_DRAFT_INFO_COLUMN:I = 0xa

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_FLAG_ATTACHMENT_COLUMN:I = 0x7

.field public static final CONTENT_FLAG_FAVORITE_COLUMN:I = 0x6

.field public static final CONTENT_FLAG_LOADED_COLUMN:I = 0x5

.field public static final CONTENT_FLAG_READ_COLUMN:I = 0x4

.field public static final CONTENT_FLAG_SEEN_COLUMN:I = 0x19

.field public static final CONTENT_FROM_LIST_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAILBOX_KEY_COLUMN:I = 0xc

.field public static final CONTENT_MAIN_MAILBOX_KEY_COLUMN:I = 0x1a

.field public static final CONTENT_MEETING_INFO_COLUMN:I = 0x14

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0xb

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_SEARCH_INFO_COLUMN:I = 0x16

.field public static final CONTENT_REPLY_TO_COLUMN:I = 0x12

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x9

.field public static final CONTENT_SERVER_TIMESTAMP_COLUMN:I = 0x13

.field public static final CONTENT_SNIPPET_COLUMN:I = 0x15

.field public static final CONTENT_SUBJECT_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_DATA_COLUMN:I = 0x18

.field public static final CONTENT_THREAD_TOPIC_COLUMN:I = 0x17

.field public static final CONTENT_TIMESTAMP_COLUMN:I = 0x2

.field public static final CONTENT_TO_LIST_COLUMN:I = 0xf

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI_LIMIT_1:Landroid/net/Uri; = null

.field public static DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "Message_Deletes"

.field public static final DRAFT_INFO_APPEND_REF_MESSAGE:I = 0x1000000

.field public static final DRAFT_INFO_QUOTE_POS_MASK:I = 0xffffff

.field public static final FLAG_FORWARDED:I = 0x80000

.field public static final FLAG_INCOMING_MEETING_CANCEL:I = 0x8

.field public static final FLAG_INCOMING_MEETING_INVITE:I = 0x4

.field public static final FLAG_INCOMING_MEETING_MASK:I = 0xc

.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x3

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_SELECTION:Ljava/lang/String; = "flagLoaded IN (2,1)"

.field public static final FLAG_LOADED_UNKNOWN:I = 0x4

.field public static final FLAG_LOADED_UNLOADED:I = 0x0

.field public static final FLAG_NOT_INCLUDE_QUOTED_TEXT:I = 0x20000

.field public static final FLAG_OUTGOING_MEETING_ACCEPT:I = 0x40

.field public static final FLAG_OUTGOING_MEETING_CANCEL:I = 0x20

.field public static final FLAG_OUTGOING_MEETING_DECLINE:I = 0x80

.field public static final FLAG_OUTGOING_MEETING_INVITE:I = 0x10

.field public static final FLAG_OUTGOING_MEETING_MASK:I = 0x1f0

.field public static final FLAG_OUTGOING_MEETING_REQUEST_MASK:I = 0x30

.field public static final FLAG_OUTGOING_MEETING_TENTATIVE:I = 0x100

.field public static final FLAG_REPLIED_TO:I = 0x40000

.field public static final FLAG_SYNC_ADAPTER_MASK:I = 0x1fe00

.field public static final FLAG_SYNC_ADAPTER_SHIFT:I = 0x9

.field public static final FLAG_TYPE_FORWARD:I = 0x2

.field public static final FLAG_TYPE_MASK:I = 0x3

.field public static final FLAG_TYPE_ORIGINAL:I = 0x100000

.field public static final FLAG_TYPE_REPLY:I = 0x1

.field public static final FLAG_TYPE_REPLY_ALL:I = 0x200000

.field public static final ID_COLUMNS_ID_COLUMN:I = 0x0

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMNS_SYNC_SERVER_ID:I = 0x1

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final LIST_ACCOUNT_KEY_COLUMN:I = 0xa

.field public static final LIST_ATTACHMENT_COLUMN:I = 0x7

.field public static final LIST_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final LIST_FAVORITE_COLUMN:I = 0x6

.field public static final LIST_FLAGS_COLUMN:I = 0x8

.field public static final LIST_ID_COLUMN:I = 0x0

.field public static final LIST_LOADED_COLUMN:I = 0x5

.field public static final LIST_MAILBOX_KEY_COLUMN:I = 0x9

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final LIST_READ_COLUMN:I = 0x4

.field public static final LIST_SERVER_ID_COLUMN:I = 0xb

.field public static final LIST_SNIPPET_COLUMN:I = 0xc

.field public static final LIST_SUBJECT_COLUMN:I = 0x3

.field public static final LIST_TIMESTAMP_COLUMN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_SELECTION:Ljava/lang/String; = "mailboxKey=?"

.field public static NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final NO_MESSAGE:J = -0x1L

.field public static final PER_ACCOUNT_FAVORITE_SELECTION:Ljava/lang/String; = "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

.field public static final PER_ACCOUNT_INBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final PER_ACCOUNT_UNREAD_SELECTION:Ljava/lang/String; = "accountKey=? AND flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final READ:I = 0x1

.field public static SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri; = null

.field public static SYNCED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Message"

.field public static final UNREAD:I = 0x0

.field public static UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "Message_Updates"


# instance fields
.field public mAccountKey:J

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mDraftInfo:I

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagRead:Z

.field public mFlagSeen:Z

.field public mFlags:I

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public mMailboxKey:J

.field public mMainMailboxKey:J

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field public mProtocolSearchInfo:Ljava/lang/String;

.field public transient mQuotedTextStartPos:I

.field public mReplyTo:Ljava/lang/String;

.field public mServerConversationId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public mSnippet:Ljava/lang/String;

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public mSyncData:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public mThreadTopic:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 772
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 773
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 774
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    .line 775
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    .line 776
    const-string/jumbo v1, "flagLoaded"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "flagFavorite"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 777
    const-string/jumbo v1, "flagAttachment"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "flags"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 778
    const-string/jumbo v1, "syncServerId"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "clientId"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 779
    const-string/jumbo v1, "messageId"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "mailboxKey"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 780
    const-string/jumbo v1, "accountKey"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "fromList"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 781
    const-string/jumbo v1, "toList"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "ccList"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 782
    const-string/jumbo v1, "bccList"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "replyToList"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 783
    const-string/jumbo v1, "syncServerTimeStamp"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "meetingInfo"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 784
    const-string/jumbo v1, "snippet"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocolSearchInfo"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 785
    const-string/jumbo v1, "threadTopic"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "syncData"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 786
    const-string/jumbo v1, "flagSeen"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "mainMailboxKey"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 772
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 804
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 805
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 806
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    .line 807
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    .line 808
    const-string/jumbo v1, "flagLoaded"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "flagFavorite"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 809
    const-string/jumbo v1, "flagAttachment"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "flags"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 810
    const-string/jumbo v1, "mailboxKey"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "accountKey"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 811
    const-string/jumbo v1, "syncServerId"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "snippet"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 804
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 816
    new-array v0, v5, [Ljava/lang/String;

    .line 817
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    .line 816
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 820
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    .line 825
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

    .line 713
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1000
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 892
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 893
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 894
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 895
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 896
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 897
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1001
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 1000
    return-void
.end method

.method public static buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    const/16 v4, 0x3d

    .line 1252
    const-wide/16 v2, -0x2

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    .line 1253
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    return-object v1

    .line 1255
    :cond_0
    const-wide/16 v2, -0x5

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    .line 1256
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1)"

    return-object v1

    .line 1258
    :cond_1
    const-wide/16 v2, -0x6

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    .line 1259
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

    return-object v1

    .line 1261
    :cond_2
    const-wide/16 v2, -0x3

    cmp-long v1, p3, v2

    if-nez v1, :cond_3

    .line 1262
    const-string/jumbo v1, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    return-object v1

    .line 1266
    :cond_3
    const-wide/16 v2, -0x4

    cmp-long v1, p3, v2

    if-nez v1, :cond_5

    .line 1267
    const-wide/high16 v2, 0x1000000000000000L

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 1268
    const-string/jumbo v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    return-object v1

    .line 1271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1272
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1273
    const-string/jumbo v2, " AND "

    .line 1272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1274
    const-string/jumbo v2, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    .line 1272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1279
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1281
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mailboxKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1283
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 1284
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagLoaded IN (2,1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1224
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;J)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 1231
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    .line 1232
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1231
    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1237
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {p0, v1, p1, p2, v2}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 1239
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 1241
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static initMessage()V
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 731
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 732
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/messageBySelection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 734
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 736
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 738
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 740
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 729
    return-void
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1039
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1040
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    .line 1039
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v12, 0x0

    .line 1152
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v5, 0x0

    .line 1155
    .local v5, "isNew":Z
    :goto_0
    if-eqz v5, :cond_b

    .line 1156
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1163
    .local v2, "b":Landroid/content/ContentProviderOperation$Builder;
    :goto_1
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1164
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1168
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1172
    .local v4, "cv":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1173
    const-string/jumbo v7, "textContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_1
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1176
    const-string/jumbo v7, "htmlContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_2
    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 1179
    const-string/jumbo v7, "sourceMessageKey"

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1181
    :cond_3
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    if-eqz v7, :cond_4

    .line 1182
    const-string/jumbo v7, "quotedTextStartPos"

    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 1187
    .local v6, "messageBackValue":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1188
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1190
    if-nez v5, :cond_5

    .line 1191
    const-string/jumbo v7, "messageKey"

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1193
    :cond_5
    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1195
    if-eqz v5, :cond_6

    .line 1196
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1197
    .local v3, "backValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "messageKey"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1201
    .end local v3    # "backValues":Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_7
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_d

    .line 1206
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "att$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1207
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v5, :cond_8

    .line 1208
    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1210
    :cond_8
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1211
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 1210
    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1212
    if-eqz v5, :cond_9

    .line 1213
    const-string/jumbo v7, "messageKey"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1215
    :cond_9
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1152
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1    # "att$iterator":Ljava/util/Iterator;
    .end local v2    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "isNew":Z
    .end local v6    # "messageBackValue":I
    :cond_a
    const/4 v5, 0x1

    .restart local v5    # "isNew":Z
    goto/16 :goto_0

    .line 1158
    :cond_b
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1159
    const-string/jumbo v8, "_id=?"

    .line 1160
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 1158
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .restart local v2    # "b":Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_1

    .line 1165
    :cond_c
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1166
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    goto/16 :goto_2

    .line 1151
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "messageBackValue":I
    :cond_d
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1045
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 1046
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1047
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1048
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1049
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1050
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1051
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 1052
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1053
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1054
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1055
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1056
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1057
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 1058
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    .line 1059
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1060
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1061
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    .line 1062
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1063
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1064
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1065
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1066
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1067
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 1068
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1069
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1070
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1071
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    .line 1072
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    .line 1044
    return-void

    :cond_0
    move v0, v2

    .line 1050
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1051
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1053
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 1054
    goto/16 :goto_3
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1084
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x0

    .line 1089
    .local v1, "doSave":Z
    :goto_0
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 1090
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    .line 1089
    if-eqz v9, :cond_4

    .line 1091
    :cond_0
    if-eqz v1, :cond_2

    .line 1092
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v9

    return-object v9

    .line 1084
    .end local v1    # "doSave":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "doSave":Z
    goto :goto_0

    .line 1097
    :cond_2
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v9

    if-ne v9, v10, :cond_3

    .line 1098
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v9

    return-object v9

    .line 1100
    :cond_3
    return-object v12

    .line 1105
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 1109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v7

    .line 1111
    .local v7, "results":[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_8

    .line 1112
    const/4 v9, 0x0

    aget-object v9, v7, v9

    iget-object v8, v9, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1113
    .local v8, "u":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1114
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    .line 1116
    const/4 v4, 0x0

    .end local v8    # "u":Landroid/net/Uri;
    .local v4, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 1117
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1119
    .local v0, "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    add-int/lit8 v6, v4, 0x2

    .line 1121
    .local v6, "resultIndex":I
    array-length v9, v7

    if-ge v6, v9, :cond_6

    .line 1122
    aget-object v9, v7, v6

    iget-object v8, v9, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1129
    :goto_2
    if-eqz v8, :cond_5

    .line 1130
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1132
    :cond_5
    iget-wide v10, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1116
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1125
    :cond_6
    const-string/jumbo v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid index into ContentProviderResults: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1127
    const/4 v8, 0x0

    .local v8, "u":Landroid/net/Uri;
    goto :goto_2

    .line 1135
    .end local v0    # "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4    # "i":I
    .end local v6    # "resultIndex":I
    .end local v8    # "u":Landroid/net/Uri;
    :cond_7
    return-object v8

    .line 1137
    :cond_8
    return-object v12

    .line 1139
    .end local v7    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    .line 1144
    :goto_3
    return-object v12

    .line 1141
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/OperationApplicationException;
    goto :goto_3
.end method

.method public setFlags(ZZ)V
    .locals 2
    .param p1, "quotedReply"    # Z
    .param p2, "quotedForward"    # Z

    .prologue
    .line 1291
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1292
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1293
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    if-eqz p1, :cond_2

    .line 1294
    const/4 v0, 0x1

    .line 1293
    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1289
    :cond_1
    return-void

    .line 1295
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1006
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1009
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1011
    const-string/jumbo v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1013
    const-string/jumbo v1, "flagSeen"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1014
    const-string/jumbo v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    const-string/jumbo v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1016
    const-string/jumbo v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1017
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string/jumbo v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    const-string/jumbo v1, "clientId"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    const-string/jumbo v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    const-string/jumbo v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1024
    const-string/jumbo v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v1, "protocolSearchInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v1, "threadTopic"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v1, "syncData"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v1, "mainMailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    return-object v0
.end method
