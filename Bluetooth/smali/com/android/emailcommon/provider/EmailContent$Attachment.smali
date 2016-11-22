.class public final Lcom/android/emailcommon/provider/EmailContent$Attachment;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$Attachment$1;
    }
.end annotation


# static fields
.field public static ATTACHMENT_PROVIDER_AUTHORITY:Ljava/lang/String; = null

.field public static final ATTACHMENT_PROVIDER_LEGACY_URI_PREFIX:Ljava/lang/String; = "content://com.android.email.attachmentprovider"

.field public static ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String; = null

.field public static final CACHED_FILE_QUERY_PARAM:Ljava/lang/String; = "filePath"

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_CACHED_FILE_COLUMN:I = 0x6

.field public static final CONTENT_CONTENT_BYTES_COLUMN:I = 0xc

.field public static final CONTENT_CONTENT_COLUMN:I = 0xa

.field public static final CONTENT_CONTENT_ID_COLUMN:I = 0x4

.field public static final CONTENT_CONTENT_URI_COLUMN:I = 0x5

.field public static final CONTENT_ENCODING_COLUMN:I = 0x9

.field public static final CONTENT_FILENAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xb

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOCATION_COLUMN:I = 0x8

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0x7

.field public static final CONTENT_MIME_TYPE_COLUMN:I = 0x2

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_SIZE_COLUMN:I = 0x3

.field public static final CONTENT_UI_DESTINATION_COLUMN:I = 0xf

.field public static final CONTENT_UI_DOWNLOADED_SIZE_COLUMN:I = 0x10

.field public static final CONTENT_UI_STATE_COLUMN:I = 0xe

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DOWNLOAD_FAILED:I = 0x8

.field public static final FLAG_DOWNLOAD_FORWARD:I = 0x4

.field public static final FLAG_DOWNLOAD_USER_REQUEST:I = 0x2

.field public static final FLAG_DUMMY_ATTACHMENT:I = 0x400

.field public static final FLAG_ICS_ALTERNATIVE_PART:I = 0x1

.field public static final FLAG_POLICY_DISALLOWS_DOWNLOAD:I = 0x200

.field public static final FLAG_SMART_FORWARD:I = 0x100

.field public static MESSAGE_ID_URI:Landroid/net/Uri; = null

.field public static final PRECACHE_INBOX_SELECTION:Ljava/lang/String; = "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))"

.field public static final PRECACHE_SELECTION:Ljava/lang/String; = "contentUri isnull AND flags=0"

.field public static final TABLE_NAME:Ljava/lang/String; = "Attachment"

.field public static sUsingLegacyPrefix:Z


# instance fields
.field public mAccountKey:J

.field private mCachedFileUri:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mContentBytes:[B

.field public mContentId:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field public mEncoding:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFlags:I

.field public mLocation:Ljava/lang/String;

.field public mMessageKey:J

.field public mMimeType:Ljava/lang/String;

.field public mSize:J

.field public mUiDestination:I

.field public mUiDownloadedSize:I

.field public mUiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1396
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 1397
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "fileName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mimeType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1398
    const-string/jumbo v1, "size"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "contentId"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "contentUri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1399
    const-string/jumbo v1, "cachedFile"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageKey"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1400
    const-string/jumbo v1, "location"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "encoding"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "content"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1401
    const-string/jumbo v1, "flags"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "content_bytes"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "accountKey"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1402
    const-string/jumbo v1, "uiState"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "uiDestination"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1403
    const-string/jumbo v1, "uiDownloadedSize"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1396
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1652
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment$1;-><init>()V

    .line 1651
    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1337
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 1445
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1444
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 1625
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1626
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1638
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1640
    .local v0, "contentBytesLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1646
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 1648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 1624
    return-void

    .line 1643
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1644
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method public static createUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1523
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1524
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1525
    .local v0, "directory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1526
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1527
    return-object v2

    .line 1530
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1531
    .local v4, "index":I
    move-object v5, p0

    .line 1532
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1533
    .local v1, "extension":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 1534
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1535
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1537
    :cond_1
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    const v6, 0x7fffffff

    if-ge v3, v6, :cond_3

    .line 1538
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1539
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1540
    return-object v2

    .line 1537
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1543
    :cond_3
    return-object v8

    .line 1545
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    return-object v8
.end method

.method public static initAttachment()V
    .locals 2

    .prologue
    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/attachment/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1356
    const-string/jumbo v1, ".attachmentprovider"

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_AUTHORITY:Ljava/lang/String;

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    .line 1359
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    const-string/jumbo v1, "content://com.android.email.attachmentprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1358
    sput-boolean v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->sUsingLegacyPrefix:Z

    .line 1351
    return-void
.end method

.method public static restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1488
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1489
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    .line 1488
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0
.end method

.method public static restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1497
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1498
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1501
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1502
    .local v9, "count":I
    new-array v7, v9, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1503
    .local v7, "attachments":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1504
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1505
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1506
    .local v6, "attach":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 1507
    aput-object v6, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1511
    .end local v6    # "attach":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1509
    return-object v7

    .line 1510
    .end local v7    # "attachments":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9    # "count":I
    .end local v10    # "i":I
    :catchall_0
    move-exception v0

    .line 1511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1510
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x0

    return v0
.end method

.method public getCachedFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1461
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v2

    .line 1463
    :cond_0
    sget-boolean v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->sUsingLegacyPrefix:Z

    if-nez v1, :cond_2

    .line 1464
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string/jumbo v2, "content://com.android.email.attachmentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1463
    if-eqz v1, :cond_2

    .line 1467
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1468
    .local v0, "prefix":I
    if-lez v0, :cond_1

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1472
    :cond_1
    const-string/jumbo v1, "Attachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Improper contentUri format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1474
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    return-object v1

    .line 1477
    .end local v0    # "prefix":I
    :cond_2
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    return-object v1
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1550
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1551
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1552
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1553
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1554
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1555
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1556
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1557
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1558
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1559
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1560
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1561
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 1562
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1563
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1564
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1565
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 1566
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 1567
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 1549
    return-void
.end method

.method public setCachedFileUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedFile"    # Ljava/lang/String;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1448
    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1456
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1572
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1573
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "fileName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string/jumbo v1, "mimeType"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v1, "size"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1576
    const-string/jumbo v1, "contentId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string/jumbo v1, "contentUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string/jumbo v1, "cachedFile"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string/jumbo v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1580
    const-string/jumbo v1, "location"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string/jumbo v1, "encoding"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    const-string/jumbo v1, "content_bytes"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1585
    const-string/jumbo v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1586
    const-string/jumbo v1, "uiState"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string/jumbo v1, "uiDestination"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1588
    const-string/jumbo v1, "uiDownloadedSize"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1589
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1666
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, ", "

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1666
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    const-string/jumbo v1, ","

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    const-string/jumbo v1, ","

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    const-string/jumbo v1, ","

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1670
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1670
    const-string/jumbo v1, "]"

    .line 1666
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
    .line 1600
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1601
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1603
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1604
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1607
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1608
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1613
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-nez v0, :cond_0

    .line 1614
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    :goto_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
