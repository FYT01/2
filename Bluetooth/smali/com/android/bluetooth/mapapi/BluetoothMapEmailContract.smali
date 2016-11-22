.class public final Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;
.super Ljava/lang/Object;
.source "BluetoothMapEmailContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract$EmailBodyColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract$ExtEmailMessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract$MailBoxColumns;
    }
.end annotation


# static fields
.field public static final ACTION_CHECK_MAIL:Ljava/lang/String; = "org.codeaurora.email.intent.action.MAIL_SERVICE_WAKEUP"

.field public static final ACTION_DELETE_MESSAGE:Ljava/lang/String; = "org.codeaurora.email.intent.action.MAIL_SERVICE_DELETE_MESSAGE"

.field public static final ACTION_MESSAGE_READ:Ljava/lang/String; = "org.codeaurora.email.intent.action.MAIL_SERVICE_MESSAGE_READ"

.field public static final ACTION_MOVE_MESSAGE:Ljava/lang/String; = "org.codeaurora.email.intent.action.MAIL_SERVICE_MOVE_MESSAGE"

.field public static final ACTION_SEND_PENDING_MAIL:Ljava/lang/String; = "org.codeaurora.email.intent.action.MAIL_SERVICE_SEND_PENDING"

.field public static final BT_EMAIL_ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final BT_EMAIL_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field public static final BT_EMAIL_BODY_CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final BT_EMAIL_MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_EMAIL_MSG_PROJECTION_SHORT:[Ljava/lang/String;

.field public static final BT_EMAIL_MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field public static final BT_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final EMAIL_TABLE_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EMAIL_TABLE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final EMAIL_TABLE_MAILBOX:Ljava/lang/String; = "mailbox"

.field public static final EMAIL_TABLE_MESSAGE:Ljava/lang/String; = "message"

.field public static final EMAIL_TABLE_MSGBODY:Ljava/lang/String; = "body"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "org.codeaurora.email.intent.extra.ACCOUNT"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "org.codeaurora.email.intent.extra.MESSAGE_ID"

.field public static final EXTRA_MESSAGE_INFO:Ljava/lang/String; = "org.codeaurora.email.intent.extra.MESSAGE_INFO"

.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FOLDER_ID_DELETED:J = 0x5L

.field public static final FOLDER_ID_DRAFT:J = 0x3L

.field public static final FOLDER_ID_INBOX:J = 0x1L

.field public static final FOLDER_ID_OTHER:J = 0x0L

.field public static final FOLDER_ID_OUTBOX:J = 0x4L

.field public static final FOLDER_ID_SENT:J = 0x2L

.field public static final FOLDER_NAME_DELETED:Ljava/lang/String; = "DELETED"

.field public static final FOLDER_NAME_DRAFT:Ljava/lang/String; = "DRAFT"

.field public static final FOLDER_NAME_DRAFTS:Ljava/lang/String; = "DRAFTS"

.field public static final FOLDER_NAME_INBOX:Ljava/lang/String; = "INBOX"

.field public static final FOLDER_NAME_OTHER:Ljava/lang/String; = "OTHER"

.field public static final FOLDER_NAME_OUTBOX:Ljava/lang/String; = "OUTBOX"

.field public static final FOLDER_NAME_SENT:Ljava/lang/String; = "SENT"

.field public static final TYPE_DELETED:I = 0x6

.field public static final TYPE_DRAFT:I = 0x3

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_SENT:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    new-array v0, v4, [Ljava/lang/String;

    .line 291
    const-string/jumbo v1, "size"

    aput-object v1, v0, v3

    .line 290
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 294
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 295
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 296
    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v4

    .line 297
    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v5

    .line 298
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v6

    .line 299
    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v7

    .line 300
    const-string/jumbo v1, "flagRead"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 301
    const-string/jumbo v1, "subject"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 302
    const-string/jumbo v1, "flagAttachment"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 303
    const-string/jumbo v1, "flagLoaded"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 304
    const-string/jumbo v1, "flags"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 305
    const-string/jumbo v1, "clientId"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "messageId"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "fromList"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 308
    const-string/jumbo v1, "toList"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 309
    const-string/jumbo v1, "ccList"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 310
    const-string/jumbo v1, "bccList"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 311
    const-string/jumbo v1, "replyToList"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 312
    const-string/jumbo v1, "meetingInfo"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 313
    const-string/jumbo v1, "snippet"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "protocolSearchInfo"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 315
    const-string/jumbo v1, "threadTopic"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 294
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 318
    new-array v0, v7, [Ljava/lang/String;

    .line 319
    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v3

    .line 320
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 321
    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v5

    .line 322
    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v6

    .line 318
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 325
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 326
    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v3

    .line 327
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 328
    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v5

    .line 329
    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v6

    .line 330
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v7

    .line 331
    const-string/jumbo v1, "fromList"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 332
    const-string/jumbo v1, "flagRead"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 325
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 335
    new-array v0, v7, [Ljava/lang/String;

    .line 336
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 337
    const-string/jumbo v1, "messageKey"

    aput-object v1, v0, v4

    .line 338
    const-string/jumbo v1, "htmlContentUri"

    aput-object v1, v0, v5

    .line 339
    const-string/jumbo v1, "textContentUri"

    aput-object v1, v0, v6

    .line 335
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_BODY_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 343
    new-array v0, v7, [Ljava/lang/String;

    .line 344
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 345
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    .line 346
    const-string/jumbo v1, "emailAddress"

    aput-object v1, v0, v5

    .line 347
    const-string/jumbo v1, "isDefault"

    aput-object v1, v0, v6

    .line 343
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 353
    new-array v0, v7, [Ljava/lang/String;

    .line 354
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 355
    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    .line 356
    const-string/jumbo v1, "account_id"

    aput-object v1, v0, v5

    .line 357
    const-string/jumbo v1, "parent_id"

    aput-object v1, v0, v6

    .line 353
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    .line 363
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 364
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 365
    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    .line 366
    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v5

    .line 367
    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v6

    .line 368
    const-string/jumbo v1, "parentServerId"

    aput-object v1, v0, v7

    .line 363
    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEmailAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "account"

    .line 94
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildEmailAccountUriWithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "account"

    .line 104
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildEmailAttachmentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "attachment"

    .line 137
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildEmailMessageBodyUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "body"

    .line 147
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "message"

    .line 114
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildEmailMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "message"

    .line 125
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMailboxUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "mailbox"

    .line 158
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
