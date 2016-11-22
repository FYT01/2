.class public Lcom/android/emailcommon/utility/AttachmentUtilities;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/AttachmentUtilities$Columns;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field private static final ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

.field public static final FORMAT_RAW:Ljava/lang/String; = "RAW"

.field public static final FORMAT_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL"

.field public static final INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I = 0x500000

.field public static final MAX_ATTACHMENT_UPLOAD_SIZE:I = 0x500000

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field private static sUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "cachedFile"

    aput-object v1, v0, v3

    .line 59
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    .line 68
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    .line 77
    new-array v0, v2, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "image/*"

    aput-object v1, v0, v3

    .line 79
    const-string/jumbo v1, "video/*"

    aput-object v1, v0, v4

    .line 77
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    .line 84
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 95
    new-array v0, v4, [Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    .line 95
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 101
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "ade"

    aput-object v1, v0, v3

    const-string/jumbo v1, "adp"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bat"

    aput-object v1, v0, v2

    const-string/jumbo v1, "chm"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "cmd"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "cpl"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "dll"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "exe"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "hta"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ins"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "isp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "jse"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lib"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "mde"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "msc"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "msp"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "mst"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "pif"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "scr"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "sct"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "shb"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "sys"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "vb"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "vbe"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "vbs"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "vxd"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "wsc"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "wsf"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "wsh"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 108
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "apk"

    aput-object v1, v0, v3

    .line 120
    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    int-to-long v0, v2

    .line 385
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 386
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 387
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 388
    return-wide v0
.end method

.method public static deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 374
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    return-void

    .line 375
    :cond_0
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 376
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 377
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 378
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to delete attachment file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "result":Z
    :cond_2
    return-void
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 299
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 303
    .local v7, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 305
    .local v8, "attachmentId":J
    invoke-static {p0, p1, p2, v8, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 309
    .local v6, "attachmentFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    .end local v6    # "attachmentFile":Ljava/io/File;
    .end local v8    # "attachmentId":J
    :catchall_0
    move-exception v0

    .line 312
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 311
    throw v0

    .line 312
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    return-void
.end method

.method public static deleteAllCachedAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 325
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/utility/AttachmentUtilities;->ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    .local v6, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "fileName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v7, "cachedFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    .end local v7    # "cachedFile":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 339
    throw v0

    .line 340
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 324
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    const/4 v7, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 354
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "mailboxKey=?"

    .line 355
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    .line 353
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 359
    .local v8, "messageId":J
    invoke-static {p0, p1, p2, v8, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    .end local v8    # "messageId":J
    :catchall_0
    move-exception v0

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    throw v0

    .line 362
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 352
    return-void
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "attachmentId"    # J

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJJJ)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "id"    # J
    .param p4, "width"    # J
    .param p6, "height"    # J

    .prologue
    .line 152
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    .line 155
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 156
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "THUMBNAIL"

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 159
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 160
    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "id"    # J

    .prologue
    .line 140
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    .line 143
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "RAW"

    .line 143
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 255
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 256
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "lastDot":I
    :cond_0
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "resultType":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "fileExtension":Ljava/lang/String;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 219
    .local v2, "isTextPlain":Z
    const-string/jumbo v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    const-string/jumbo v3, "message/rfc822"

    .line 240
    .end local v3    # "resultType":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    if-eqz v2, :cond_7

    const-string/jumbo v3, "text/plain"

    .line 243
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 223
    .restart local v3    # "resultType":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_4

    const-string/jumbo v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 225
    :goto_2
    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 226
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "resultType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    if-eqz v2, :cond_5

    move-object v3, p1

    goto :goto_0

    .line 223
    .local v3, "resultType":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    .local v1, "isGenericType":Z
    goto :goto_2

    .line 231
    .end local v1    # "isGenericType":Z
    .local v3, "resultType":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 235
    .local v3, "resultType":Ljava/lang/String;
    :cond_6
    move-object v3, p1

    .local v3, "resultType":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v3    # "resultType":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "application/octet-stream"

    .restart local v3    # "resultType":Ljava/lang/String;
    goto :goto_1
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 274
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 273
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 278
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "strUri":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 281
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    return-object v0

    .line 285
    .end local v7    # "strUri":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_1
    return-object p1

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 284
    throw v0
.end method

.method public static saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 395
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 396
    .local v25, "uri":Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v17, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 398
    .local v14, "attachmentId":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 403
    .local v12, "accountId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 404
    .local v24, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    if-nez v3, :cond_0

    .line 405
    invoke-static {v12, v13, v14, v15}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v11

    .line 406
    .local v11, "attUri":Landroid/net/Uri;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8

    .line 407
    .local v8, "size":J
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 453
    .end local v11    # "attUri":Landroid/net/Uri;
    .local v16, "contentUri":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    const-string/jumbo v3, "contentUri"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string/jumbo v3, "uiState"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v8    # "size":J
    .end local v16    # "contentUri":Ljava/lang/String;
    .end local v24    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    return-void

    .line 408
    .restart local v24    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Trying to save an attachment with no name: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 413
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v26, 0x0

    aput-object v10, v5, v26

    .line 412
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Can\'t save an attachment with no name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    .end local v24    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v19

    .line 458
    .local v19, "e":Ljava/io/IOException;
    const-string/jumbo v3, "uiState"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 417
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v24    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :try_start_2
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 416
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 418
    .local v18, "downloads":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 419
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 420
    .local v21, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8

    .line 421
    .restart local v8    # "size":J
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, "absolutePath":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    .line 428
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 427
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 430
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    const-string/jumbo v6, "application/octet-stream"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 436
    .local v6, "mimeType":Ljava/lang/String;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 437
    .local v2, "dm":Landroid/app/DownloadManager;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 438
    const/4 v5, 0x0

    .line 440
    const/4 v10, 0x1

    .line 437
    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v22

    .line 441
    .local v22, "id":J
    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    .restart local v16    # "contentUri":Ljava/lang/String;
    goto/16 :goto_0

    .line 432
    .end local v2    # "dm":Landroid/app/DownloadManager;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v16    # "contentUri":Ljava/lang/String;
    .end local v22    # "id":J
    :cond_2
    :try_start_4
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 442
    :catch_1
    move-exception v20

    .line 443
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IAE from DownloadManager while saving attachment"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 447
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "absolutePath":Ljava/lang/String;
    .end local v8    # "size":J
    .end local v18    # "downloads":Ljava/io/File;
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .end local v21    # "file":Ljava/io/File;
    :cond_3
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    .line 448
    const-string/jumbo v4, "Trying to save an attachment without external storage?"

    .line 447
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method
