.class public abstract Lcom/android/emailcommon/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;,
        Lcom/android/emailcommon/provider/EmailContent$SyncColumns;,
        Lcom/android/emailcommon/provider/EmailContent$BodyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Body;,
        Lcom/android/emailcommon/provider/EmailContent$MessageColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Message;,
        Lcom/android/emailcommon/provider/EmailContent$AttachmentColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Attachment;,
        Lcom/android/emailcommon/provider/EmailContent$AccountColumns;,
        Lcom/android/emailcommon/provider/EmailContent$QuickResponseColumns;,
        Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;,
        Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;,
        Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$SuggestedContactColumns;
    }
.end annotation


# static fields
.field public static ACCOUNT_CHECK_URI:Landroid/net/Uri; = null

.field public static AUTHORITY:Ljava/lang/String; = null

.field public static CONTENT_NOTIFIER_URI:Landroid/net/Uri; = null

.field public static CONTENT_SYNC_SETTING_CHANGED_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT_COLUMNS:[Ljava/lang/String;

.field public static DEVICE_FRIENDLY_NAME:Ljava/lang/String; = null

.field public static EMAIL_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field public static final ID_PROJECTION_COLUMN:I = 0x0

.field public static final ID_SELECTION:Ljava/lang/String; = "_id =?"

.field public static final LAST_SYNC_RESULT_AUTH_ERROR:I = 0x2

.field public static final LAST_SYNC_RESULT_CONNECTION_ERROR:I = 0x1

.field public static final LAST_SYNC_RESULT_INTERNAL_ERROR:I = 0x5

.field public static final LAST_SYNC_RESULT_SECURITY_ERROR:I = 0x3

.field public static final LAST_SYNC_RESULT_SERVER_ERROR:I = 0x6

.field public static final LAST_SYNC_RESULT_SUCCESS:I = 0x0

.field public static MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static MAILBOX_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final NOTIFICATION_MAILBOX_ID_COLUMN:I = 0x0

.field public static final NOTIFICATION_MAILBOX_UNREAD_COUNT_COLUMN:I = 0x1

.field public static final NOTIFICATION_MAILBOX_UNSEEN_COUNT_COLUMN:I = 0x2

.field public static NOTIFIER_AUTHORITY:Ljava/lang/String; = null

.field public static final NOT_SAVED:I = -0x1

.field public static final PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static PICK_SENT_FOLDER_URI:Landroid/net/Uri; = null

.field public static PICK_TRASH_FOLDER_URI:Landroid/net/Uri; = null

.field public static PROVIDER_PERMISSION:Ljava/lang/String; = null

.field public static final RECORD_ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESS_COMBINED_ACCOUNT_PARAM:Ljava/lang/String; = "suppress_combined"

.field public static SYNC_SETTING_CHANGED_AUTHORITY:Ljava/lang/String; = null

.field public static final SYNC_STATUS_BACKGROUND:I = 0x4

.field public static final SYNC_STATUS_INITIAL_SYNC_NEEDED:I = 0x8

.field public static final SYNC_STATUS_LIVE:I = 0x2

.field public static final SYNC_STATUS_NONE:I = 0x0

.field public static final SYNC_STATUS_USER:I = 0x1


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mObservable:Landroid/database/ContentObservable;

.field private mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent;->warnIfUiThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "deviceFriendlyName"

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 438
    return-void
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-static {p0, p1, v0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 420
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 419
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;J)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContent(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 372
    .local v0, "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 373
    invoke-virtual {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->restore(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-object v0

    .line 377
    .end local v0    # "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 380
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 375
    :catch_1
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/android/emailcommon/provider/EmailContent;

    monitor-enter v2

    .line 175
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/emailcommon/R$string;->email_package_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".provider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "EmailContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".notifier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".sync_setting_changed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->SYNC_SETTING_CHANGED_AUTHORITY:Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->SYNC_SETTING_CHANGED_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_SYNC_SETTING_CHANGED_URI:Landroid/net/Uri;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/pickTrashFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_TRASH_FOLDER_URI:Landroid/net/Uri;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/pickSentFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_SENT_FOLDER_URI:Landroid/net/Uri;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/mailboxNotification"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_NOTIFICATION_URI:Landroid/net/Uri;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v3, "/mailboxMostRecentMessage"

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/accountCheck"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->ACCOUNT_CHECK_URI:Landroid/net/Uri;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PROVIDER_PERMISSION:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/android/emailcommon/provider/Account;->initAccount()V

    .line 195
    invoke-static {}, Lcom/android/emailcommon/provider/Mailbox;->initMailbox()V

    .line 196
    invoke-static {}, Lcom/android/emailcommon/provider/QuickResponse;->initQuickResponse()V

    .line 197
    invoke-static {}, Lcom/android/emailcommon/provider/HostAuth;->initHostAuth()V

    .line 198
    invoke-static {}, Lcom/android/emailcommon/provider/Credential;->initCredential()V

    .line 199
    invoke-static {}, Lcom/android/emailcommon/provider/Policy;->initPolicy()V

    .line 200
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Message;->initMessage()V

    .line 201
    invoke-static {}, Lcom/android/emailcommon/provider/MessageMove;->init()V

    .line 202
    invoke-static {}, Lcom/android/emailcommon/provider/MessageStateChange;->init()V

    .line 203
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Body;->initBody()V

    .line 204
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->initAttachment()V

    .line 205
    invoke-static {}, Lcom/android/emailcommon/provider/SuggestedContact;->initSuggestedContact()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    monitor-exit v2

    .line 174
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isInitialSyncKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "contentProjection"    # [Ljava/lang/String;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    return-object v0
.end method

.method public static restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/EmailContent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "contentProjection"    # [Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "observer"    # Landroid/database/ContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J",
            "Landroid/database/ContentObserver;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 250
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent;->warnIfUiThread()V

    .line 251
    invoke-static {p2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 253
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 255
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v7

    .line 257
    .local v7, "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    if-eqz p6, :cond_1

    .line 258
    invoke-virtual {v7, p0, p6}, Lcom/android/emailcommon/provider/EmailContent;->registerObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    return-object v7

    .line 265
    .end local v7    # "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    return-object v3

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    throw v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static warnIfUiThread()V
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 212
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v2, "Method called on the UI thread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 313
    return-void

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->unregisterAllObservers()V

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 311
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getContentNotificationUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 327
    const-string/jumbo v1, "Subclasses must override this method for content observation to work"

    .line 326
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSaved()Z
    .locals 4

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 335
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;-><init>(Lcom/android/emailcommon/provider/EmailContent;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->getContentNotificationUri()Landroid/net/Uri;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mSelfObserver:Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;

    const/4 v3, 0x1

    .line 276
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p2}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 273
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restore(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 138
    invoke-virtual {p0, p2}, Lcom/android/emailcommon/provider/EmailContent;->restore(Landroid/database/Cursor;)V

    .line 137
    return-void
.end method

.method public abstract restore(Landroid/database/Cursor;)V
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "res":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 389
    return-object v0
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method

.method public declared-synchronized unregisterAllObservers()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unregistering with null observable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 299
    return-void
.end method

.method public declared-synchronized unregisterObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unregistering with null observable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 288
    return-void
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
