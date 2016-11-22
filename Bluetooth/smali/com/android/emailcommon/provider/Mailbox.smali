.class public Lcom/android/emailcommon/provider/Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Mailbox.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;,
        Lcom/android/emailcommon/provider/Mailbox$1;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_KEY_PROJECTION_ACCOUNT_KEY_COLUMN:I = 0x0

.field public static final CHECK_INTERVAL_NEVER:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PING:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PUSH:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PUSH_HOLD:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0x4

.field public static final CONTENT_DELIMITER_COLUMN:I = 0x6

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xc

.field public static final CONTENT_FLAG_VISIBLE_COLUMN:I = 0xb

.field public static final CONTENT_HIERARCHICAL_NAME_COLUMN:I = 0x13

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LAST_FULL_SYNC_COLUMN:I = 0x14

.field public static final CONTENT_LAST_TOUCHED_TIME_COLUMN:I = 0xf

.field public static final CONTENT_PARENT_KEY_COLUMN:I = 0xe

.field public static final CONTENT_PARENT_SERVER_ID_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x2

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x9

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x7

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x8

.field public static final CONTENT_SYNC_STATUS_COLUMN:I = 0xd

.field public static final CONTENT_SYNC_TIME_COLUMN:I = 0xa

.field public static final CONTENT_TOTAL_COUNT_COLUMN:I = 0x12

.field public static final CONTENT_TYPE_COLUMN:I = 0x5

.field public static final CONTENT_UI_LAST_SYNC_RESULT_COLUMN:I = 0x11

.field public static final CONTENT_UI_SYNC_STATUS_COLUMN:I = 0x10

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAFTS_DEFAULT_TOUCH_TIME:I = 0x2

.field public static final FLAG_ACCEPTS_APPENDED_MAIL:I = 0x20

.field public static final FLAG_ACCEPTS_MOVED_MAIL:I = 0x10

.field public static final FLAG_CANT_PUSH:I = 0x4

.field public static final FLAG_CHILDREN_VISIBLE:I = 0x2

.field public static final FLAG_HAS_CHILDREN:I = 0x1

.field public static final FLAG_HOLDS_MAIL:I = 0x8

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SUPPORTS_SETTINGS:I = 0x40

.field private static final MAILBOX_DISPLAY_NAME_COLUMN:I = 0x0

.field private static final MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_TYPE_COLUMN:I = 0x0

.field public static MESSAGE_COUNT_URI:Landroid/net/Uri; = null

.field public static final NO_MAILBOX:J = -0x1L

.field private static final OUTBOX_PLUS_SYNCING_AND_ACCOUNT_SELECTION:Ljava/lang/String; = "(type=4 or syncInterval=1) and accountKey=?"

.field public static final PARENT_KEY_UNINITIALIZED:J = 0x0L

.field public static final PATH_AND_ACCOUNT_SELECTION:Ljava/lang/String; = "serverId=? and accountKey=?"

.field private static final PUSH_MAILBOXES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "syncKey is not null and syncKey!=\'\' and syncKey!=\'0\' and syncInterval=1 and accountKey=?"

.field public static final QUERY_ALL_DRAFTS:J = -0x5L

.field public static final QUERY_ALL_FAVORITES:J = -0x4L

.field public static final QUERY_ALL_INBOXES:J = -0x2L

.field public static final QUERY_ALL_OUTBOX:J = -0x6L

.field public static final QUERY_ALL_UNREAD:J = -0x3L

.field public static final REQUIRED_FOLDER_TYPES:[I

.field public static final SENT_DEFAULT_TOUCH_TIME:I = 0x1

.field private static final SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

.field private static final SYNCING_AND_TYPE_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "syncInterval=1 and type=? and accountKey=?"

.field private static final SYNCING_MAILBOXES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "syncInterval=1 and accountKey=?"

.field public static final SYNC_EXTRA_ACCOUNT_ONLY:Ljava/lang/String; = "__account_only__"

.field public static final SYNC_EXTRA_DELTA_MESSAGE_COUNT:Ljava/lang/String; = "__deltaMessageCount__"

.field public static final SYNC_EXTRA_MAILBOX_COUNT:Ljava/lang/String; = "__mailboxCount__"

.field private static final SYNC_EXTRA_MAILBOX_ID_PATTERN:Ljava/lang/String; = "__mailboxId%d__"

.field public static final SYNC_EXTRA_MAILBOX_TYPE:Ljava/lang/String; = "__mailboxType__"

.field public static final SYNC_EXTRA_NOOP:Ljava/lang/String; = "__noop__"

.field public static final SYNC_EXTRA_PUSH_ONLY:Ljava/lang/String; = "__push_only__"

.field public static SYNC_SETTING_CHANGED_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Mailbox"

.field public static final TYPE_ATTACHMENT:I = 0x101

.field public static final TYPE_CALENDAR:I = 0x41

.field public static final TYPE_CONTACTS:I = 0x42

.field public static final TYPE_DRAFTS:I = 0x3

.field public static final TYPE_EAS_ACCOUNT_MAILBOX:I = 0x44
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_JUNK:I = 0x7

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NOT_EMAIL:I = 0x40

.field public static final TYPE_NOT_SYNCABLE:I = 0x100

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_PARENT:I = 0x2

.field public static final TYPE_SEARCH:I = 0x8

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_STARRED:I = 0x9

.field public static final TYPE_TASKS:I = 0x43

.field public static final TYPE_TRASH:I = 0x6

.field public static final TYPE_UNKNOWN:I = 0x45

.field public static final TYPE_UNREAD:I = 0xa

.field private static final WHERE_TYPE_AND_ACCOUNT_KEY:Ljava/lang/String; = "type=? and accountKey=?"


# instance fields
.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mFlagVisible:Z

.field public mFlags:I

.field public mHierarchicalName:Ljava/lang/String;

.field public mLastFullSyncTime:J

.field public mLastTouchedTime:J

.field public mParentKey:J

.field public mParentServerId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mTotalCount:I

.field public mType:I

.field public mUiLastSyncResult:I

.field public mUiSyncStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 208
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 209
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 210
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v3

    .line 211
    const-string/jumbo v1, "serverId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "parentServerId"

    aput-object v1, v0, v7

    .line 213
    const-string/jumbo v1, "accountKey"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    .line 215
    const-string/jumbo v1, "delimiter"

    aput-object v1, v0, v6

    .line 216
    const-string/jumbo v1, "syncKey"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "syncLookback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "syncInterval"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "syncTime"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "flagVisible"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 221
    const-string/jumbo v1, "flags"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 222
    const-string/jumbo v1, "syncStatus"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "parentKey"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "lastTouchedTime"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "uiSyncStatus"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "uiLastSyncResult"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "totalCount"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 228
    const-string/jumbo v1, "hierarchicalName"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "lastFullSyncTime"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 208
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 236
    new-array v0, v3, [Ljava/lang/String;

    .line 237
    const-string/jumbo v1, "type"

    aput-object v1, v0, v4

    .line 236
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 241
    new-array v0, v3, [Ljava/lang/String;

    .line 242
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    .line 241
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 249
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    .line 360
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    .line 361
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 362
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 367
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 368
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 369
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 386
    const/4 v0, 0x4

    filled-new-array {v4, v7, v0, v5, v6}, [I

    move-result-object v0

    .line 385
    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .line 863
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 421
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 420
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 838
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 172
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 839
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 838
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSyncBundle(J)Landroid/os/Bundle;
    .locals 4
    .param p0, "mailboxId"    # J

    .prologue
    .line 113
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "__mailboxCount__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    return-object v0
.end method

.method public static createSyncBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "mailboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method

.method public static createSyncBundle([J)Landroid/os/Bundle;
    .locals 6
    .param p0, "mailboxIds"    # [J

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "__mailboxCount__"

    array-length v3, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 107
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v2

    aget-wide v4, p0, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v0
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 673
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 674
    .local v4, "bindArguments":[Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 675
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "type=? and accountKey=?"

    .line 676
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 675
    const/4 v5, 0x0

    move-object v0, p0

    .line 674
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static formatMailboxIdExtra(I)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 91
    const-string/jumbo v0, "__mailboxId%d__"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 942
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 943
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    .line 944
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 941
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuthority(I)Ljava/lang/String;
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 953
    packed-switch p0, :pswitch_data_0

    .line 959
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    return-object v0

    .line 955
    :pswitch_0
    const-string/jumbo v0, "com.android.calendar"

    return-object v0

    .line 957
    :pswitch_1
    const-string/jumbo v0, "com.android.contacts"

    return-object v0

    .line 953
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultSyncStateForType(I)Z
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 570
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public static getDisplayName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v3, 0x0

    .line 718
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 719
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 720
    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 719
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoopBackMailboxIdsForSync(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J

    .prologue
    .line 928
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    .line 929
    const-string/jumbo v3, "syncInterval=1 and accountKey=?"

    .line 930
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    .line 928
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 698
    const-string/jumbo v2, "mailboxKey"

    .line 697
    invoke-static {p0, p1, p2, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 699
    .local v0, "mailboxId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 700
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    return-object v2

    .line 702
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 549
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 552
    .restart local v0    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    return-object v0
.end method

.method public static getMailboxIdsForSync(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J

    .prologue
    .line 902
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    .line 903
    const-string/jumbo v3, "(type=4 or syncInterval=1) and accountKey=?"

    .line 904
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string/jumbo v5, "type ASC"

    move-object v0, p0

    .line 902
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxIdsForSyncByType(Landroid/content/ContentResolver;JI)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 915
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    .line 916
    const-string/jumbo v3, "syncInterval=1 and type=? and accountKey=?"

    .line 917
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    .line 915
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxIdsFromBundle(Landroid/os/Bundle;)[J
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 120
    const-string/jumbo v3, "__mailboxCount__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 122
    const-string/jumbo v3, "__push_only__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Mailboxes specified in a push only sync"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    :cond_0
    const-string/jumbo v3, "__account_only__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Mailboxes specified in an account only sync"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :cond_1
    new-array v2, v0, [J

    .line 129
    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 130
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    return-object v2

    .line 135
    .end local v1    # "i":I
    .end local v2    # "result":[J
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getMailboxType(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v3, 0x0

    .line 709
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 710
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 711
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 710
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J

    .prologue
    .line 887
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 888
    const-string/jumbo v3, "syncKey is not null and syncKey!=\'\' and syncKey!=\'0\' and syncInterval=1 and accountKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 889
    const/4 v5, 0x0

    move-object v0, p0

    .line 887
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxType"    # I

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 452
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal mailbox type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :pswitch_1
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_inbox:I

    .line 454
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 431
    .end local v0    # "resId":I
    :pswitch_2
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_outbox:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 434
    .end local v0    # "resId":I
    :pswitch_3
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_drafts:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 437
    .end local v0    # "resId":I
    :pswitch_4
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_trash:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 440
    .end local v0    # "resId":I
    :pswitch_5
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_sent:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 443
    .end local v0    # "resId":I
    :pswitch_6
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_junk:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 446
    .end local v0    # "resId":I
    :pswitch_7
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_starred:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 449
    .end local v0    # "resId":I
    :pswitch_8
    sget v0, Lcom/android/emailcommon/R$string;->mailbox_name_server_all_unread:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static initMailbox()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailboxCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_SYNC_SETTING_CHANGED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNC_SETTING_CHANGED_URI:Landroid/net/Uri;

    .line 83
    return-void
.end method

.method public static isAccountOnlyExtras(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string/jumbo v2, "__account_only__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 141
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 144
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Mailboxes specified in an account only sync"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    .end local v0    # "count":I
    :cond_0
    return v1
.end method

.method public static isPushOnlyExtras(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 151
    const-string/jumbo v2, "__push_only__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 155
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Mailboxes specified in a push only sync"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    .end local v0    # "count":I
    :cond_0
    return v1
.end method

.method public static isRefreshable(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v2, 0x0

    .line 729
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 730
    return v2

    .line 732
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 738
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 736
    :pswitch_1
    return v2

    .line 732
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSyncableType(I)Z
    .locals 2
    .param p0, "mailboxType"    # I

    .prologue
    const/4 v0, 0x0

    .line 561
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 479
    packed-switch p3, :pswitch_data_0

    .line 495
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad mailbox type for newSystemMailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :pswitch_1
    const/16 v1, 0x18

    .line 482
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 499
    .local v2, "syncInterval":I
    :goto_0
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 500
    .local v0, "box":Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 501
    iput p3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 502
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 503
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 505
    invoke-static {p0, p3}, Lcom/android/emailcommon/provider/Mailbox;->getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 506
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 507
    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 508
    return-object v0

    .line 486
    .end local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .end local v1    # "flags":I
    .end local v2    # "syncInterval":I
    :pswitch_2
    const/16 v1, 0x8

    .line 487
    .restart local v1    # "flags":I
    const/4 v2, 0x0

    .line 488
    .restart local v2    # "syncInterval":I
    goto :goto_0

    .line 491
    .end local v1    # "flags":I
    .end local v2    # "syncInterval":I
    :pswitch_3
    const/16 v1, 0x8

    .line 492
    .restart local v1    # "flags":I
    const/4 v2, -0x1

    .line 493
    .restart local v2    # "syncInterval":I
    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 521
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 522
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 523
    const-string/jumbo v4, "serverId=? and accountKey=?"

    .line 524
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p3, v5, v9

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v10

    .line 520
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 526
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 528
    :cond_0
    const/4 v8, 0x0

    .line 529
    .local v8, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {p0, v7, v1}, Lcom/android/emailcommon/provider/Mailbox;->getContent(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    move-object v8, v0

    .line 531
    .local v8, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Multiple mailboxes named \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v8    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 537
    return-object v8

    .line 535
    .local v8, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not find mailbox at \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    .end local v8    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    move-exception v1

    .line 539
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 538
    throw v1
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    .line 683
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 684
    .local v0, "mailboxId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 685
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    return-object v2

    .line 687
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 464
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    .line 465
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    .line 464
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public static resyncMailbox(Landroid/content/ContentResolver;Landroid/accounts/Account;J)V
    .locals 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "mailboxId"    # J

    .prologue
    .line 965
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 966
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 967
    const-string/jumbo v2, "type"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 968
    const-string/jumbo v2, "serverId"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 970
    const-string/jumbo v5, "_id=?"

    .line 971
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 972
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 965
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 973
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 974
    :cond_0
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Mailbox %d not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 975
    return-void

    .line 978
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 979
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 980
    .local v14, "type":I
    const/16 v2, 0x40

    if-lt v14, v2, :cond_2

    .line 981
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 982
    const-string/jumbo v3, "Mailbox %d is not an Email mailbox"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 981
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    .end local v14    # "type":I
    :catch_0
    move-exception v10

    .line 1006
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to wipe mailbox %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v10, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 964
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 984
    .restart local v14    # "type":I
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 985
    .local v13, "serverId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 986
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 987
    const-string/jumbo v3, "Mailbox %d has no server id"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1007
    .end local v13    # "serverId":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v9

    .line 1008
    .local v9, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to wipe mailbox %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v9, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1010
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 990
    .end local v9    # "e":Landroid/content/OperationApplicationException;
    .restart local v13    # "serverId":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_3
    :try_start_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v12, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 992
    const-string/jumbo v3, "mailboxKey=?"

    .line 993
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 991
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 995
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 997
    const-string/jumbo v3, "syncKey"

    const-string/jumbo v4, "0"

    .line 995
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1000
    invoke-static/range {p2 .. p3}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v11

    .line 1001
    .local v11, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "ignore_settings"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1002
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v11}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1003
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestSync resyncMailbox %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1004
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v11}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1003
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1010
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1009
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v12    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13    # "serverId":Ljava/lang/String;
    .end local v14    # "type":I
    :catchall_0
    move-exception v2

    .line 1010
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1009
    throw v2
.end method


# virtual methods
.method public canHaveMessagesMoved()Z
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 752
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 750
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public getHashes()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 760
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 763
    .local v0, "hash":[Ljava/lang/Object;
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 762
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 765
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 764
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 767
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 766
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 769
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 768
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 771
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 770
    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 773
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 772
    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 775
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 774
    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 777
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 776
    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 779
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 778
    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 781
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 780
    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 783
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 782
    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 785
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 784
    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 787
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 786
    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 789
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 788
    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 791
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 790
    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 793
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 792
    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 795
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 794
    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 797
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 796
    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 799
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 798
    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 801
    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 800
    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 802
    return-object v0
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 579
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v0}, Lcom/android/emailcommon/provider/Mailbox;->isSyncableType(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 584
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 585
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 586
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 587
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 588
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 589
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 590
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 591
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 592
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 593
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 594
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 595
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 596
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 597
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 598
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 599
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 600
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 601
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 602
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 603
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 604
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 605
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 583
    return-void

    :cond_0
    move v0, v1

    .line 597
    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 610
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 611
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string/jumbo v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string/jumbo v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string/jumbo v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    const-string/jumbo v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string/jumbo v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string/jumbo v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string/jumbo v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string/jumbo v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string/jumbo v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    const-string/jumbo v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 623
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string/jumbo v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string/jumbo v1, "lastTouchedTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 626
    const-string/jumbo v1, "uiSyncStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string/jumbo v1, "uiLastSyncResult"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string/jumbo v1, "totalCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string/jumbo v1, "hierarchicalName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v1, "lastFullSyncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Mailbox "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastFullSyncTime(Landroid/content/Context;J)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "syncTime"    # J

    .prologue
    .line 654
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 655
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 656
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "lastFullSyncTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 658
    iput-wide p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 653
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public updateMessageCount(Landroid/content/Context;I)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "count"    # I

    .prologue
    .line 640
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    if-eq p2, v1, :cond_0

    .line 641
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 642
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "totalCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 644
    iput p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 639
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 815
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 816
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 820
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 821
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 827
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 831
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 813
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
