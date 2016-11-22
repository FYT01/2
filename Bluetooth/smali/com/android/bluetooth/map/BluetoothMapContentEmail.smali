.class public Lcom/android/bluetooth/map/BluetoothMapContentEmail;
.super Lcom/android/bluetooth/map/BluetoothMapContent;
.source "BluetoothMapContentEmail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final FILTER_READ_STATUS_ALL:I = 0x0

.field private static final FILTER_READ_STATUS_READ_ONLY:I = 0x2

.field private static final FILTER_READ_STATUS_UNREAD_ONLY:I = 0x1

.field public static final INSERT_ADDRES_TOKEN:Ljava/lang/String; = "insert-address-token"

.field private static final MASK_ATTACHMENT_SIZE:I = 0x400

.field private static final MASK_CONVERSATION_ID:I = 0x40000

.field private static final MASK_CONVERSATION_NAME:I = 0x80000

.field private static final MASK_DATETIME:I = 0x2

.field private static final MASK_DELIVERY_STATUS:I = 0x20000

.field private static final MASK_FOLDER_TYPE:I = 0x100000

.field private static final MASK_PRIORITY:I = 0x800

.field private static final MASK_PROTECTED:I = 0x4000

.field private static final MASK_READ:I = 0x1000

.field private static final MASK_RECEPTION_STATUS:I = 0x100

.field private static final MASK_RECIPIENT_ADDRESSING:I = 0x20

.field private static final MASK_RECIPIENT_NAME:I = 0x10

.field private static final MASK_REPLYTO_ADDRESSING:I = 0x8000

.field private static final MASK_SENDER_ADDRESSING:I = 0x8

.field private static final MASK_SENDER_NAME:I = 0x4

.field private static final MASK_SENT:I = 0x2000

.field private static final MASK_SIZE:I = 0x80

.field private static final MASK_SUBJECT:I = 0x1

.field private static final MASK_TEXT:I = 0x200

.field private static final MASK_TYPE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentEmail"

.field private static final V:Z


# instance fields
.field private final mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private final mBaseUri:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mMsgListingVersion:I

.field private mRemoteFeatureMask:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .param p3, "mas"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1, v2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    .line 123
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mMessageVersion:Ljava/lang/String;

    .line 125
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mRemoteFeatureMask:I

    .line 126
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mMsgListingVersion:I

    .line 193
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mContext:Landroid/content/Context;

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 195
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 197
    const-string/jumbo v0, "BluetoothMapContentEmail"

    const-string/jumbo v1, "getContentResolver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mBaseUri:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 191
    :goto_0
    return-void

    .line 204
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mBaseUri:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    goto :goto_0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 210
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 711
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    .line 712
    .local v0, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 713
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 714
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 715
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 716
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 717
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setReplytoAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 718
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 719
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V

    .line 721
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 722
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 723
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 724
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 725
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 726
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 727
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 728
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 729
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setCursorIndex(I)V

    .line 730
    return-object v0

    .line 720
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 974
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 976
    .local v0, "msgType":I
    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "emailSelected msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 979
    return v5

    .line 981
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 982
    return v5

    .line 984
    :cond_1
    return v4
.end method

.method private extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;)V
    .locals 17
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    .prologue
    .line 1412
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractEmailAddresses with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    const/4 v15, 0x0

    .line 1416
    .local v15, "tempEmail":Ljava/lang/String;
    const-string/jumbo v2, "com.android.email.provider"

    .line 1415
    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1417
    .local v3, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1417
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1419
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1420
    const/4 v13, 0x0

    .line 1421
    .local v13, "senderName":Ljava/lang/String;
    const-string/jumbo v2, "fromList"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "senderName":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 1423
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " senderName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_1
    const-string/jumbo v2, "\u0002"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1425
    const-string/jumbo v2, "\u0002"

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1426
    .local v14, "senderStr":[Ljava/lang/String;
    if-eqz v14, :cond_5

    array-length v2, v14

    if-lez v2, :cond_5

    .line 1427
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " senderStr[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_2
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " senderStr[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1430
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    .line 1431
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "from addressing is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v14, v5

    .line 1432
    const/16 v6, 0x3c

    .line 1431
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1432
    const/4 v6, 0x0

    aget-object v6, v14, v6

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1431
    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_4
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v4, 0x0

    aget-object v4, v14, v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1434
    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1433
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v14    # "senderStr":[Ljava/lang/String;
    :cond_5
    :goto_0
    const/4 v12, 0x0

    .line 1453
    .local v12, "recipientName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1454
    .local v10, "multiRecepients":Ljava/lang/String;
    const-string/jumbo v2, "toList"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "recipientName":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 1456
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recipientName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_6
    const-string/jumbo v2, "\u0002"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1458
    const-string/jumbo v2, "\u0002"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1459
    .local v11, "recepientStr":[Ljava/lang/String;
    if-eqz v11, :cond_8

    array-length v2, v11

    if-lez v2, :cond_8

    .line 1460
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_7

    .line 1461
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recepientStr[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recepientStr[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_7
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1465
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    .end local v10    # "multiRecepients":Ljava/lang/String;
    .end local v11    # "recepientStr":[Ljava/lang/String;
    .end local v15    # "tempEmail":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    .line 1519
    .local v12, "recipientName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1520
    .restart local v10    # "multiRecepients":Ljava/lang/String;
    const-string/jumbo v2, "ccList"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "recipientName":Ljava/lang/String;
    if-eqz v12, :cond_b

    .line 1522
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recipientName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_9
    const-string/jumbo v2, "^B"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1524
    const-string/jumbo v2, "^B"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1525
    .restart local v11    # "recepientStr":[Ljava/lang/String;
    if-eqz v11, :cond_b

    array-length v2, v11

    if-lez v2, :cond_b

    .line 1526
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_a

    .line 1527
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recepientStr[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " recepientStr[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_a
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1531
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    .end local v10    # "multiRecepients":Ljava/lang/String;
    .end local v11    # "recepientStr":[Ljava/lang/String;
    .end local v12    # "recipientName":Ljava/lang/String;
    .end local v13    # "senderName":Ljava/lang/String;
    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    .line 1578
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_c
    return-void

    .line 1436
    .restart local v13    # "senderName":Ljava/lang/String;
    .restart local v14    # "senderStr":[Ljava/lang/String;
    .restart local v15    # "tempEmail":Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1440
    .end local v14    # "senderStr":[Ljava/lang/String;
    :cond_e
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " senderStr is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_f
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1442
    const/16 v2, 0x3c

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_11

    const/16 v2, 0x3e

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_11

    .line 1443
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "from addressing is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1444
    const/16 v5, 0x3c

    .line 1443
    invoke-virtual {v13, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1444
    const/16 v6, 0x3e

    invoke-virtual {v13, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1443
    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_10
    const/16 v2, 0x3c

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1446
    const/16 v4, 0x3e

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1445
    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1448
    :cond_11
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1467
    .restart local v10    # "multiRecepients":Ljava/lang/String;
    .restart local v12    # "recipientName":Ljava/lang/String;
    :cond_12
    const-string/jumbo v2, "\u0001"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1468
    const/4 v2, 0x1

    const/16 v4, 0x3b

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 1469
    .local v10, "multiRecepients":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1470
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_13

    .line 1471
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_13
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-direct {v9, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    .local v9, "emailId":Ljava/util/StringTokenizer;
    :cond_14
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1476
    const/4 v4, 0x0

    .line 1475
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1477
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1479
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1481
    .end local v9    # "emailId":Ljava/util/StringTokenizer;
    .local v10, "multiRecepients":Ljava/lang/String;
    :cond_15
    const-string/jumbo v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1482
    const-string/jumbo v2, ", \""

    const-string/jumbo v4, "; \""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1483
    .local v10, "multiRecepients":Ljava/lang/String;
    const-string/jumbo v2, ", "

    const-string/jumbo v4, "; "

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1484
    const-string/jumbo v2, ","

    const-string/jumbo v4, ";"

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1485
    if-eqz v10, :cond_8

    .line 1486
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_16

    .line 1487
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_16
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-direct {v9, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .end local v15    # "tempEmail":Ljava/lang/String;
    .restart local v9    # "emailId":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1492
    .local v15, "tempEmail":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1494
    const/16 v2, 0x3c

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_17

    .line 1495
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1496
    const/16 v5, 0x3c

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1497
    const/16 v6, 0x3e

    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1496
    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1495
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/16 v2, 0x3c

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1499
    const/16 v4, 0x3e

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1498
    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 1501
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1506
    .end local v9    # "emailId":Ljava/util/StringTokenizer;
    .local v10, "multiRecepients":Ljava/lang/String;
    .local v15, "tempEmail":Ljava/lang/String;
    :cond_18
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1508
    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    const/16 v2, 0x3e

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    .line 1509
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "to addressing is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1510
    const/16 v5, 0x3c

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3e

    invoke-virtual {v12, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1509
    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_19
    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1512
    const/16 v4, 0x3e

    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1511
    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1514
    :cond_1a
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1533
    .end local v15    # "tempEmail":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v2, "\u0001"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1534
    const/4 v2, 0x1

    const/16 v4, 0x3b

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 1535
    .local v10, "multiRecepients":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 1536
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1c

    .line 1537
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_1c
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-direct {v9, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    .restart local v9    # "emailId":Ljava/util/StringTokenizer;
    :cond_1d
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1542
    const/4 v4, 0x0

    .line 1541
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1543
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1545
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1547
    .end local v9    # "emailId":Ljava/util/StringTokenizer;
    .local v10, "multiRecepients":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1548
    const-string/jumbo v2, ", \""

    const-string/jumbo v4, "; \""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1549
    .local v10, "multiRecepients":Ljava/lang/String;
    const-string/jumbo v2, ", "

    const-string/jumbo v4, "; "

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1550
    const-string/jumbo v2, ","

    const-string/jumbo v4, ";"

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1552
    if-eqz v10, :cond_b

    .line 1553
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1f

    .line 1554
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_1f
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-direct {v9, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .restart local v9    # "emailId":Ljava/util/StringTokenizer;
    :goto_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1559
    .local v15, "tempEmail":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1560
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 1564
    .end local v9    # "emailId":Ljava/util/StringTokenizer;
    .end local v15    # "tempEmail":Ljava/lang/String;
    .local v10, "multiRecepients":Ljava/lang/String;
    :cond_20
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Setting ::Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_21
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V

    .line 1566
    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_23

    const/16 v2, 0x3e

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_23

    .line 1567
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CC addressing is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1568
    const/16 v5, 0x3c

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3e

    invoke-virtual {v12, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1567
    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_22
    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1570
    const/16 v4, 0x3e

    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1569
    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1572
    :cond_23
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;)V
    .locals 27
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    .prologue
    .line 1615
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractEmailParts with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_0
    const-string/jumbo v16, ""

    .line 1618
    .local v16, "emailBody":Ljava/lang/String;
    const-string/jumbo v2, "com.android.email.provider"

    .line 1617
    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageBodyUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1620
    .local v3, "uriAddress":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1622
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 1623
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_BODY_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1624
    const-string/jumbo v5, "messageKey=?"

    .line 1625
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x0

    aput-object v7, v6, v26

    const/4 v7, 0x0

    .line 1622
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1630
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_9

    .line 1631
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, "cursor not null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1633
    const-string/jumbo v2, "textContentUri"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1635
    .local v25, "textContentURI":Ljava/lang/String;
    const-string/jumbo v2, "htmlContentUri"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1637
    .local v18, "htmlContentURI":Ljava/lang/String;
    if-nez v25, :cond_2

    if-eqz v18, :cond_d

    .line 1638
    :cond_2
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_3

    .line 1639
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " EMAIL BODY textURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " EMAIL BODY htmlURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_3
    const/16 v17, 0x0

    .line 1644
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v25, :cond_4

    .line 1646
    :try_start_1
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " TRY EMAIL BODY textURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 1652
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_1
    if-nez v17, :cond_c

    .line 1653
    if-eqz v18, :cond_b

    .line 1656
    :try_start_2
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " TRY EMAIL BODY htmlURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    .line 1663
    :cond_5
    :goto_2
    const/16 v19, 0x0

    .line 1664
    .local v19, "msgBody":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 1665
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->readEmailBodyForMessageFd(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;

    move-result-object v19

    .line 1669
    .end local v19    # "msgBody":Ljava/lang/String;
    :goto_3
    if-eqz v19, :cond_6

    .line 1670
    const-string/jumbo v2, "(?s)(<title>)(.*?)(</title>)"

    const-string/jumbo v4, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1671
    .local v19, "msgBody":Ljava/lang/String;
    const-string/jumbo v2, "(?s)(<style type=\"text/css\".*?>)(.*?)(</style>)"

    const-string/jumbo v4, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1672
    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    .line 1673
    .local v20, "msgText":Ljava/lang/CharSequence;
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1674
    const-string/jumbo v2, "(?s)(<!--)(.*?)(-->)"

    const-string/jumbo v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1677
    const-string/jumbo v2, "(?s)(\\r)"

    const-string/jumbo v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1678
    const-string/jumbo v2, "(?s)(\\n)"

    const-string/jumbo v4, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1687
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v20    # "msgText":Ljava/lang/CharSequence;
    :cond_6
    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setEmailBody(Ljava/lang/String;)V

    .line 1689
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 1690
    .local v23, "partId":Ljava/lang/Long;
    const-string/jumbo v9, "Content-Type: text/plain; charset=\"UTF-8\""

    .line 1691
    .local v9, "contentType":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1692
    .local v21, "name":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1694
    .local v24, "text":Ljava/lang/String;
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "     _id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1695
    const-string/jumbo v5, "\n     ct : "

    .line 1694
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1696
    const-string/jumbo v5, "\n     partname : "

    .line 1694
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v22

    .line 1699
    .local v22, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    move-object/from16 v0, v22

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 1691
    const/4 v2, 0x0

    .line 1700
    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    .line 1703
    if-eqz v16, :cond_7

    .line 1704
    :try_start_3
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1705
    const-string/jumbo v2, "utf-8"

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1718
    :cond_7
    :goto_5
    if-eqz v17, :cond_8

    .line 1719
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1725
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v18    # "htmlContentURI":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v23    # "partId":Ljava/lang/Long;
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "textContentURI":Ljava/lang/String;
    :cond_8
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1613
    :cond_9
    return-void

    .line 1626
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 1628
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " EMAIL BODY QUERY FAILDED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1648
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "htmlContentURI":Ljava/lang/String;
    .restart local v25    # "textContentURI":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1649
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1660
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v14

    .line 1661
    .local v14, "e":Ljava/lang/NullPointerException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1658
    .end local v14    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v10

    .line 1659
    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1667
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .local v19, "msgBody":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, " FETCH Email BODY File HTML URI FAILED"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1681
    .end local v19    # "msgBody":Ljava/lang/String;
    :cond_b
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, " FETCH Email BODY File HTML URI FAILED"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1684
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->readEmailBodyForMessageFd(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 1711
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v23    # "partId":Ljava/lang/Long;
    .restart local v24    # "text":Ljava/lang/String;
    :catch_4
    move-exception v12

    .line 1712
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, "extractEmailParts"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1713
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1714
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 1715
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v2

    throw v2

    .line 1707
    :catch_5
    move-exception v15

    .line 1708
    .local v15, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, "extractEmailParts"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1710
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 1720
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 1722
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v23    # "partId":Ljava/lang/Long;
    .end local v24    # "text":Ljava/lang/String;
    :cond_d
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, " FETCH Email BODY File URI FAILED"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 23
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .prologue
    .line 1319
    const/4 v4, 0x0

    .line 1320
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v5, "selection":Ljava/lang/String;
    new-instance v22, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v22, "uriStr":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1324
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1326
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 1329
    .local v20, "partId":Ljava/lang/Long;
    const-string/jumbo v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1330
    .local v13, "contentType":Ljava/lang/String;
    const-string/jumbo v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1331
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1332
    .local v10, "charset":Ljava/lang/String;
    const-string/jumbo v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1333
    .local v17, "filename":Ljava/lang/String;
    const-string/jumbo v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1334
    .local v21, "text":Ljava/lang/String;
    const-string/jumbo v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1335
    .local v16, "fd":Ljava/lang/Integer;
    const-string/jumbo v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1336
    .local v11, "cid":Ljava/lang/String;
    const-string/jumbo v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1337
    .local v12, "cl":Ljava/lang/String;
    const-string/jumbo v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1339
    .local v9, "cdisp":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1340
    const-string/jumbo v7, "\n     ct : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1341
    const-string/jumbo v7, "\n     partname : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1342
    const-string/jumbo v7, "\n     charset : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1343
    const-string/jumbo v7, "\n     filename : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1344
    const-string/jumbo v7, "\n     text : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1345
    const-string/jumbo v7, "\n     fd : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1346
    const-string/jumbo v7, "\n     cid : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1347
    const-string/jumbo v7, "\n     cl : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    const-string/jumbo v7, "\n     cdisp : "

    .line 1339
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v19

    .line 1351
    .local v19, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 1352
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    .line 1353
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 1354
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 1355
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1358
    if-eqz v21, :cond_5

    .line 1359
    :try_start_1
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1360
    const-string/jumbo v2, "utf-8"

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 1380
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1381
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1385
    .end local v9    # "cdisp":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v12    # "cl":Ljava/lang/String;
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v16    # "fd":Ljava/lang/Integer;
    .end local v17    # "filename":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v20    # "partId":Ljava/lang/Long;
    .end local v21    # "text":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1315
    :cond_4
    return-void

    .line 1363
    .restart local v9    # "cdisp":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v12    # "cl":Ljava/lang/String;
    .restart local v13    # "contentType":Ljava/lang/String;
    .restart local v16    # "fd":Ljava/lang/Integer;
    .restart local v17    # "filename":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v20    # "partId":Ljava/lang/Long;
    .restart local v21    # "text":Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v2

    .line 1362
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1364
    if-eqz v10, :cond_2

    .line 1366
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1365
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1369
    :catch_0
    move-exception v15

    .line 1370
    .local v15, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1372
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1377
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1384
    .end local v9    # "cdisp":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v12    # "cl":Ljava/lang/String;
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v16    # "fd":Ljava/lang/Integer;
    .end local v17    # "filename":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v20    # "partId":Ljava/lang/Long;
    .end local v21    # "text":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 1385
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_6
    throw v2

    .line 1373
    .restart local v9    # "cdisp":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v12    # "cl":Ljava/lang/String;
    .restart local v13    # "contentType":Ljava/lang/String;
    .restart local v16    # "fd":Ljava/lang/Integer;
    .restart local v17    # "filename":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v20    # "partId":Ljava/lang/Long;
    .restart local v21    # "text":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1374
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 1376
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "threadId"    # I

    .prologue
    .line 1260
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1261
    const-string/jumbo v0, "DELETED"

    return-object v0

    .line 1263
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1275
    const-string/jumbo v0, ""

    return-object v0

    .line 1265
    :pswitch_0
    const-string/jumbo v0, "INBOX"

    return-object v0

    .line 1267
    :pswitch_1
    const-string/jumbo v0, "SENT"

    return-object v0

    .line 1269
    :pswitch_2
    const-string/jumbo v0, "DRAFT"

    return-object v0

    .line 1273
    :pswitch_3
    const-string/jumbo v0, "OUTBOX"

    return-object v0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 481
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "toAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "ccAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "bccAddress":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    .line 487
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 488
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_2

    .line 489
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "toAddress count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, "i":I
    const/4 v3, 0x1

    .line 492
    .local v3, "first":Z
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 493
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ToAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v4

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "email":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const/4 v3, 0x0

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 503
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    if-eqz v1, :cond_7

    .line 507
    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 508
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_6

    .line 509
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ccAddress count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v4, 0x0

    .line 511
    .restart local v4    # "i":I
    const/4 v3, 0x1

    .line 512
    .restart local v3    # "first":Z
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_6

    .line 513
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ccAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v4

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_4
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2    # "email":Ljava/lang/String;
    if-nez v3, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/4 v3, 0x0

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 521
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 522
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    if-eqz v0, :cond_a

    .line 526
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 527
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_a

    .line 528
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bccAddress count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v4, 0x0

    .line 530
    .restart local v4    # "i":I
    const/4 v3, 0x1

    .line 531
    .restart local v3    # "first":Z
    :goto_2
    array-length v8, v7

    if-ge v4, v8, :cond_a

    .line 532
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bccAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v4

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_8
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "email":Ljava/lang/String;
    if-nez v3, :cond_9

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_9
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v3, 0x0

    .line 537
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 541
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 416
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "toAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "ccAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "bccAddress":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    .line 421
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 422
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_2

    .line 423
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "toName count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, "i":I
    const/4 v2, 0x1

    .line 426
    .local v2, "first":Z
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 427
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ToName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v3

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const/4 v2, 0x0

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 436
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    if-eqz v1, :cond_7

    .line 440
    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 441
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_6

    .line 442
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ccName count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x0

    .line 444
    .restart local v3    # "i":I
    const/4 v2, 0x1

    .line 445
    .restart local v2    # "first":Z
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_6

    .line 446
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ccName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v3

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 448
    .restart local v4    # "name":Ljava/lang/String;
    if-nez v2, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v2, 0x0

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 455
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    if-eqz v0, :cond_a

    .line 459
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 460
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_a

    .line 461
    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bccName count= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v3, 0x0

    .line 463
    .restart local v3    # "i":I
    const/4 v2, 0x1

    .line 464
    .restart local v2    # "first":Z
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_a

    .line 465
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BluetoothMapContentEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bccName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v3

    invoke-virtual {v10}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_8
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 467
    .restart local v4    # "name":Ljava/lang/String;
    if-nez v2, :cond_9

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const/4 v2, 0x0

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 474
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getType: for filterMsgType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 393
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 395
    .end local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    return-object v0
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 787
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x1

    return v0

    .line 790
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, "res":Z
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "orig":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 757
    const-string/jumbo v5, "*"

    const-string/jumbo v6, ".*"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ".*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 759
    iget v5, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 762
    const-string/jumbo v5, "displayName"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 764
    .local v0, "displayNameIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "fromList"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, "originatorEmail":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 768
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 769
    const-string/jumbo v5, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "match originator name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v4, 0x1

    .line 773
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 774
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 775
    const-string/jumbo v5, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "match originator email = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v4, 0x1

    .line 783
    .end local v0    # "displayNameIndex":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "originatorEmail":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 781
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, "res":Z
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "recip":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 737
    const-string/jumbo v3, "*"

    const-string/jumbo v4, ".*"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 740
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    const/4 v2, 0x1

    .line 750
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 748
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readEmailBodyForMessageFd(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v3, "email":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1588
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, -0x1

    .line 1589
    .local v6, "len":I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    .local v5, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 1591
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1592
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Email part = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1595
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    move-object v4, v5

    .line 1596
    .end local v5    # "is":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "BluetoothMapContentEmail"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1601
    if-eqz v4, :cond_1

    .line 1602
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1605
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1601
    .restart local v0    # "buffer":[B
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v5, :cond_3

    .line 1602
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1603
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .line 1597
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 1598
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string/jumbo v7, "BluetoothMapContentEmail"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1601
    if-eqz v4, :cond_1

    .line 1602
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1603
    :catch_3
    move-exception v1

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1599
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    .line 1601
    :goto_5
    if-eqz v4, :cond_4

    .line 1602
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1599
    :cond_4
    :goto_6
    throw v7

    .line 1603
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1599
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1595
    .local v4, "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1597
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private readRawDataPart(Landroid/net/Uri;J)[B
    .locals 12
    .param p1, "contentPartUri"    # Landroid/net/Uri;
    .param p2, "partid"    # J

    .prologue
    .line 1285
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1287
    .local v7, "uriAddress":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1288
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1289
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    .line 1290
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 1291
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 1294
    .local v6, "retVal":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1295
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1296
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 1297
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1300
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 1302
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v9, "BluetoothMapContentEmail"

    const-string/jumbo v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    .line 1305
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    .line 1307
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "retVal":[B
    :goto_1
    return-object v6

    .line 1299
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "retVal":[B
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1304
    .local v6, "retVal":[B
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    .line 1305
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1303
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    .local v6, "retVal":[B
    :catchall_0
    move-exception v9

    .line 1304
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    .line 1305
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->close(Ljava/io/Closeable;)V

    .line 1303
    throw v9
.end method

.method private setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 257
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v10, 0x400

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_4

    .line 258
    const/4 v9, 0x0

    .line 259
    .local v9, "size":I
    const/4 v7, 0x0

    .line 260
    .local v7, "attachmentMimeTypes":Ljava/lang/String;
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 261
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 264
    .local v6, "attachment":I
    const-string/jumbo v0, "com.android.email.provider"

    .line 263
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailAttachmentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, "attchmntUri":Landroid/net/Uri;
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attchURI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 266
    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterMessagekey(J)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "whereAttch":Ljava/lang/String;
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "whereAttch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " handle: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 268
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 271
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 272
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 270
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 273
    .local v8, "emailAttachmentCursor":Landroid/database/Cursor;
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " size messages."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p3, v8}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->setEmailAttachmentColumns(Landroid/database/Cursor;)V

    .line 275
    if-eqz v8, :cond_1

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 279
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    .line 281
    .local v8, "emailAttachmentCursor":Landroid/database/Cursor;
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v8    # "emailAttachmentCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    if-nez v9, :cond_2

    .line 284
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in message database, attachment size reported as: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v4, " Changing size to 1"

    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v9, 0x1

    .line 291
    .end local v1    # "attchmntUri":Landroid/net/Uri;
    .end local v3    # "whereAttch":Ljava/lang/String;
    .end local v6    # "attachment":I
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAttachmentSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string/jumbo v4, "setAttachmentMimeTypes: "

    .line 291
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    invoke-virtual {p1, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    .line 256
    .end local v7    # "attachmentMimeTypes":Ljava/lang/String;
    .end local v9    # "size":I
    :cond_4
    return-void
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 669
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 670
    const-wide/16 v0, 0x0

    .line 671
    .local v0, "date":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 672
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 674
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    .line 668
    .end local v0    # "date":J
    :cond_1
    return-void
.end method

.method private setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 401
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "folderType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 404
    .local v0, "folderId":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 407
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFolderType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setFolderType(Ljava/lang/String;)V

    .line 400
    .end local v0    # "folderId":I
    .end local v1    # "folderType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 701
    const-wide/16 v0, -0x1

    .line 702
    .local v0, "handle":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 703
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 705
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(J)V

    .line 700
    return-void
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 311
    const-string/jumbo v0, "no"

    .line 312
    .local v0, "priority":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 313
    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 546
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 547
    const-string/jumbo v0, "no"

    .line 548
    .local v0, "protect":Ljava/lang/String;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProtected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    .line 545
    .end local v0    # "protect":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "read":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 240
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 241
    :cond_0
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColRead:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 243
    :cond_1
    const/4 v1, 0x0

    .line 245
    .local v1, "setread":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    if-ne v0, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(ZZ)V

    .line 237
    return-void

    :cond_3
    move v2, v4

    .line 246
    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 630
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 631
    const-string/jumbo v0, "complete"

    .line 632
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setReceptionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    .line 629
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 555
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "address":Ljava/lang/String;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 559
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecipientAddressing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    if-nez v0, :cond_2

    .line 563
    const-string/jumbo v0, ""

    .line 564
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    .line 554
    :cond_3
    return-void
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 570
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "name":Ljava/lang/String;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 574
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecipientName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    if-nez v0, :cond_2

    .line 578
    const-string/jumbo v0, ""

    .line 579
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    .line 569
    :cond_3
    return-void
.end method

.method private setReplytoAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 616
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x8000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "address":Ljava/lang/String;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 619
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColReplyTo:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 621
    const-string/jumbo v0, ""

    .line 623
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setReplytoAddressing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReplytoAddressing(Ljava/lang/String;)V

    .line 615
    :cond_1
    return-void
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 585
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    .line 586
    const-string/jumbo v0, ""

    .line 588
    .local v0, "address":Ljava/lang/String;
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 589
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "nameEmail":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 591
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v7, v6

    if-eqz v7, :cond_2

    .line 592
    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Originator count= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "i":I
    const/4 v2, 0x1

    .line 595
    .local v2, "first":Z
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    .line 596
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SenderAddress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    .line 598
    .local v1, "emails":[Ljava/lang/String;
    aget-object v7, v6, v3

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    .line 599
    aget-object v7, v6, v3

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    const/4 v2, 0x0

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "emails":[Ljava/lang/String;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameEmail":Ljava/lang/String;
    .end local v6    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSenderAddressing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_3
    if-nez v0, :cond_4

    .line 609
    const-string/jumbo v0, ""

    .line 610
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;)V

    .line 584
    .end local v0    # "address":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 639
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    .line 640
    const-string/jumbo v3, ""

    .line 641
    .local v3, "name":Ljava/lang/String;
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 642
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "nameEmail":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 644
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v7, v6

    if-eqz v7, :cond_2

    .line 645
    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Originator count= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, "i":I
    const/4 v1, 0x1

    .line 648
    .local v1, "first":Z
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 649
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "senderName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 651
    .local v0, "emails":[Ljava/lang/String;
    aget-object v7, v6, v2

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 652
    aget-object v7, v6, v2

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, "nameIn":Ljava/lang/String;
    if-nez v1, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    const/4 v1, 0x0

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "emails":[Ljava/lang/String;
    .end local v1    # "first":Z
    .end local v2    # "i":I
    .end local v4    # "nameEmail":Ljava/lang/String;
    .end local v5    # "nameIn":Ljava/lang/String;
    .end local v6    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "BluetoothMapContentEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSenderName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3
    if-nez v3, :cond_4

    .line 662
    const-string/jumbo v3, ""

    .line 663
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    .line 638
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 7
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v6, 0x2

    .line 218
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "msgType":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    if-eq v2, v6, :cond_0

    .line 221
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 224
    :cond_1
    const/4 v1, 0x0

    .line 225
    .local v1, "sent":Ljava/lang/String;
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    if-ne v2, v6, :cond_4

    .line 226
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 227
    const-string/jumbo v1, "yes"

    .line 231
    .local v1, "sent":Ljava/lang/String;
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    .line 217
    .end local v0    # "msgType":I
    .end local v1    # "sent":Ljava/lang/String;
    :cond_3
    return-void

    .line 229
    .restart local v0    # "msgType":I
    .local v1, "sent":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "no"

    .local v1, "sent":Ljava/lang/String;
    goto :goto_0
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 19
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 320
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 321
    const/16 v16, 0x0

    .line 322
    .local v16, "size":I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 323
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 326
    .local v14, "msgId":J
    const-string/jumbo v2, "com.android.email.provider"

    .line 325
    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageBodyUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 327
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 328
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_BODY_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 329
    const-string/jumbo v5, "messageKey=?"

    .line 330
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v6, v18

    const/4 v7, 0x0

    .line 327
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 331
    .local v9, "cr":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    const/4 v12, 0x0

    .line 334
    .local v12, "fd":Landroid/os/ParcelFileDescriptor;
    const-string/jumbo v2, "textContentUri"

    .line 333
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 335
    .local v17, "textContentURI":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 337
    :try_start_0
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " TRY EMAIL BODY textURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 343
    .end local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 345
    const-string/jumbo v2, "htmlContentUri"

    .line 344
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 347
    .local v13, "htmlContentURI":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 349
    :try_start_1
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " TRY EMAIL BODY htmlURI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 356
    .end local v13    # "htmlContentURI":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    .line 358
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v16

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getAttachmentSize()I

    move-result v8

    .line 361
    .local v8, "attachmentSize":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 362
    add-int v16, v16, v8

    .line 365
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 373
    .end local v8    # "attachmentSize":I
    .end local v17    # "textContentURI":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    .line 374
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v3    # "uriAddress":Landroid/net/Uri;
    .end local v9    # "cr":Landroid/database/Cursor;
    .end local v14    # "msgId":J
    :cond_4
    if-gtz v16, :cond_5

    .line 380
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in message database, size reported as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 381
    const-string/jumbo v5, " Changing size to 1"

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v16, 0x1

    .line 384
    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    .line 319
    .end local v16    # "size":I
    :cond_7
    return-void

    .line 339
    .restart local v3    # "uriAddress":Landroid/net/Uri;
    .restart local v9    # "cr":Landroid/database/Cursor;
    .restart local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "msgId":J
    .restart local v16    # "size":I
    .restart local v17    # "textContentURI":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 340
    .local v10, "ex":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 351
    .end local v10    # "ex":Ljava/io/FileNotFoundException;
    .end local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "htmlContentURI":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 352
    .restart local v10    # "ex":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 366
    .end local v10    # "ex":Ljava/io/FileNotFoundException;
    .end local v13    # "htmlContentURI":Ljava/lang/String;
    .restart local v8    # "attachmentSize":I
    :catch_2
    move-exception v11

    .line 367
    .local v11, "ex":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentEmail"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 370
    .end local v8    # "attachmentSize":I
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_8
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, "MessageSize Email NOT AVAILABLE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 680
    const-string/jumbo v1, ""

    .line 681
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v0

    .line 682
    .local v0, "subLength":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 683
    const/16 v0, 0x100

    .line 685
    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 686
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 687
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMessageColSubject:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 690
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSubject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    .line 679
    :cond_4
    return-void

    .line 691
    :cond_5
    if-nez v1, :cond_2

    .line 692
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 299
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 300
    const-string/jumbo v0, ""

    .line 301
    .local v0, "hasText":Ljava/lang/String;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 302
    const-string/jumbo v0, "yes"

    .line 304
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    .line 298
    .end local v0    # "hasText":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;
    .param p2, "emailAddr"    # Ljava/lang/String;
    .param p3, "incoming"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1391
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVCardFromEmailAddress, emailAdress is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/4 v0, 0x0

    .local v0, "contactId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1393
    .local v1, "contactName":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v7

    .line 1394
    .local v3, "phoneNumbers":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    .line 1398
    .local v2, "emailAddresses":[Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 1399
    aput-object p2, v2, v7

    .line 1400
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding addOriginator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_0
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1390
    :goto_0
    return-void

    .line 1405
    :cond_1
    aput-object p2, v2, v7

    .line 1406
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding Receipient "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_2
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 946
    const-string/jumbo v1, ""

    .line 947
    .local v1, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "msgHandleWhere":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
    :cond_0
    :goto_0
    return-object v1

    .line 960
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setWhereFilterAccountKey(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 810
    const-string/jumbo v0, ""

    .line 811
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    return-object v0
.end method

.method private setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 817
    const-string/jumbo v0, ""

    .line 818
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    const-string/jumbo v0, "1=1"

    .line 827
    :cond_0
    :goto_0
    return-object v0

    .line 821
    :cond_1
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterAccountKey(J)Ljava/lang/String;

    move-result-object v0

    .line 824
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterFolderTypeEmail(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeEmail(J)Ljava/lang/String;
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 798
    const-string/jumbo v0, ""

    .line 799
    .local v0, "where":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mailboxKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    return-object v0

    .line 803
    :cond_0
    const-string/jumbo v1, "BluetoothMapContentEmail"

    const-string/jumbo v2, "setWhereFilterFolderTypeEmail: not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid folder ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 928
    const-string/jumbo v3, ""

    .line 929
    .local v3, "where":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 930
    .local v0, "id":J
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandleString()Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "msgHandle":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 932
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    .line 933
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 936
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 937
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 938
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 941
    :cond_2
    return-object v3
.end method

.method private setWhereFilterMessagekey(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 884
    const-string/jumbo v0, ""

    .line 885
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    return-object v0
.end method

.method private setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 890
    const-string/jumbo v1, ""

    .line 891
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 894
    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND fromList LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    const-string/jumbo v3, "%\'"

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    :cond_0
    return-object v1
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 848
    const-string/jumbo v4, ""

    .line 850
    .local v4, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 851
    iget v5, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 852
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 853
    .local v3, "time":Landroid/text/format/Time;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 854
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 856
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " AND timeStamp >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 858
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 857
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 865
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "time":Landroid/text/format/Time;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 866
    iget v5, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 867
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 868
    .restart local v3    # "time":Landroid/text/format/Time;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 869
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 871
    .restart local v0    # "date":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 872
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND timeStamp < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 873
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 872
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 880
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "time":Landroid/text/format/Time;
    :cond_1
    :goto_1
    return-object v4

    .line 859
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "time":Landroid/text/format/Time;
    :catch_0
    move-exception v1

    .line 860
    .local v1, "e":Landroid/util/TimeFormatException;
    const-string/jumbo v5, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad formatted FilterPeriodEnd, Ignore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v8

    .line 860
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    .end local v1    # "e":Landroid/util/TimeFormatException;
    :catch_1
    move-exception v1

    .line 875
    .restart local v1    # "e":Landroid/util/TimeFormatException;
    const-string/jumbo v5, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad formatted FilterPeriodEnd, Ignore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 876
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v8

    .line 875
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 902
    const-string/jumbo v1, ""

    .line 903
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    .line 904
    .local v0, "pri":I
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 908
    :cond_0
    return-object v1
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    .prologue
    .line 831
    const-string/jumbo v0, ""

    .line 832
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 833
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 834
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 835
    const-string/jumbo v0, " AND flagRead= 0"

    .line 838
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 839
    const-string/jumbo v0, " AND flagRead= 1"

    .line 844
    :cond_1
    return-object v0
.end method

.method private setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 912
    const-string/jumbo v1, ""

    .line 913
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "recip":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 917
    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND (toList LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    const-string/jumbo v3, "%\' OR "

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    const-string/jumbo v3, "ccList"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    const-string/jumbo v3, " LIKE \'%"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    const-string/jumbo v3, "%\' OR "

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    const-string/jumbo v3, "bccList"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    const-string/jumbo v3, " LIKE \'%"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    const-string/jumbo v3, "%\' )"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 18
    .param p1, "parentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-nez v2, :cond_0

    .line 1005
    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v4, "Failed to acquire provider for NULL account"

    invoke-direct {v2, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1008
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildMailboxUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1009
    .local v3, "emailFolderUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v8

    .line 1010
    .local v8, "accountId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accountKey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1011
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    const-wide/16 v16, -0x1

    cmp-long v2, v6, v16

    if-nez v2, :cond_2

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND (parentServerId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1013
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    .line 1012
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1013
    const-string/jumbo v4, " OR "

    .line 1012
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1014
    const-string/jumbo v4, "parentServerId"

    .line 1012
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1014
    const-string/jumbo v4, " ISNULL )"

    .line 1012
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1019
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 1020
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MAILBOX_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1019
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1022
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1023
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1024
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1026
    const-string/jumbo v2, "displayName"

    .line 1025
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1027
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1028
    .local v12, "id":J
    const-string/jumbo v2, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addEmailFolders(): id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " Name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v14

    .line 1030
    .local v14, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1036
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v14    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_0
    move-exception v2

    .line 1037
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_1
    throw v2

    .line 1016
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND parentServerId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1017
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    .line 1016
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1034
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string/jumbo v2, "BluetoothMapContentEmail"

    const-string/jumbo v4, "addEmailFolders(): no elements found"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_5
    return-void
.end method

.method public getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 27
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "currentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1740
    if-eqz p3, :cond_0

    .line 1741
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TYPE_MESSAGE (GET): Attachment = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1742
    const-string/jumbo v8, ", Charset = "

    .line 1741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1742
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    .line 1741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1743
    const-string/jumbo v8, ", FractionRequest = "

    .line 1741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1743
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v8

    .line 1741
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    if-nez v4, :cond_1

    .line 1749
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL charset not UTF-8"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1751
    :cond_1
    new-instance v22, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    invoke-direct/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;-><init>()V

    .line 1752
    .local v22, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;
    const-string/jumbo v4, "com.android.email.provider"

    invoke-static {v4}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1754
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1755
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1754
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1757
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_f

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_f

    .line 1760
    const/16 v21, 0x0

    .line 1761
    .local v21, "is":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 1764
    .local v14, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v18

    .line 1765
    .local v18, "fractionRequest":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_3

    .line 1767
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_2

    .line 1768
    if-nez v18, :cond_5

    const-string/jumbo v19, "FIRST"

    .line 1769
    .local v19, "fractionStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEmailMessage - FractionRequest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1770
    const-string/jumbo v8, " - send compete message"

    .line 1769
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    .end local v19    # "fractionStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "flagLoaded"

    .line 1773
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1775
    const/4 v6, 0x1

    .line 1773
    if-ne v4, v6, :cond_3

    .line 1777
    const-string/jumbo v4, "BluetoothMapContentEmail"

    const-string/jumbo v6, "getEmailMessage - receptionState not COMPLETE -  Not Implemented!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_3
    const-string/jumbo v4, "flagRead"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1783
    .local v24, "read":I
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_6

    .line 1784
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setStatus(Z)V

    .line 1789
    :goto_1
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setVersionString(Ljava/lang/String;)V

    .line 1791
    const-string/jumbo v4, "Content-Type: text/plain; charset=\"UTF-8\""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setContentType(Ljava/lang/String;)V

    .line 1792
    const-string/jumbo v4, "timeStamp"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setDate(J)V

    .line 1794
    const-string/jumbo v4, "subject"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setSubject(Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v4, "mailboxKey"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1799
    .local v16, "folderId":J
    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v15

    .line 1800
    .local v15, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setCompleteFolder(Ljava/lang/String;)V

    .line 1803
    const-string/jumbo v4, "toList"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1805
    .local v23, "nameEmail":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v25

    .line 1806
    .local v25, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v25

    array-length v4, v0

    if-eqz v4, :cond_9

    .line 1807
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Recipient count= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/16 v20, 0x0

    .line 1809
    .local v20, "i":I
    :goto_2
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_9

    .line 1810
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Recipient = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v25, v20

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_4
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    .line 1812
    .local v10, "emails":[Ljava/lang/String;
    aget-object v4, v25, v20

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v10, v6

    .line 1813
    aget-object v4, v25, v20

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1814
    .local v7, "name":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v22

    move-object v8, v7

    invoke-virtual/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1815
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1768
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "emails":[Ljava/lang/String;
    .end local v15    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v16    # "folderId":J
    .end local v20    # "i":I
    .end local v23    # "nameEmail":Ljava/lang/String;
    .end local v24    # "read":I
    .end local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string/jumbo v19, "NEXT"

    .restart local v19    # "fractionStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 1786
    .end local v19    # "fractionStr":Ljava/lang/String;
    .restart local v24    # "read":I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setStatus(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1835
    .end local v18    # "fractionRequest":I
    .end local v24    # "read":I
    :catchall_0
    move-exception v4

    .line 1836
    if-eqz v13, :cond_7

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1835
    :cond_7
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1851
    .end local v14    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    .line 1852
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1851
    :cond_8
    throw v4

    .line 1820
    .restart local v14    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v16    # "folderId":J
    .restart local v18    # "fractionRequest":I
    .restart local v21    # "is":Ljava/io/FileInputStream;
    .restart local v23    # "nameEmail":Ljava/lang/String;
    .restart local v24    # "read":I
    .restart local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_9
    :try_start_3
    const-string/jumbo v4, "fromList"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1822
    invoke-static/range {v23 .. v23}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v25

    .line 1823
    move-object/from16 v0, v25

    array-length v4, v0

    if-eqz v4, :cond_b

    .line 1824
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Originator count= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/16 v20, 0x0

    .line 1826
    .restart local v20    # "i":I
    :goto_3
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_b

    .line 1827
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Originator = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v25, v20

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_a
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    .line 1829
    .restart local v10    # "emails":[Ljava/lang/String;
    aget-object v4, v25, v20

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v10, v6

    .line 1830
    aget-object v4, v25, v20

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1831
    .restart local v7    # "name":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v22

    move-object v8, v7

    invoke-virtual/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1832
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1836
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "emails":[Ljava/lang/String;
    .end local v20    # "i":I
    :cond_b
    if-eqz v13, :cond_c

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1842
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->setIncludeAttachments(Z)V

    .line 1845
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;)V

    .line 1848
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;)V

    .line 1849
    invoke-virtual/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->encodeEmail()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 1852
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1849
    :cond_d
    return-object v4

    .line 1842
    :cond_e
    const/4 v4, 0x1

    goto :goto_4

    .line 1852
    .end local v14    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v16    # "folderId":J
    .end local v18    # "fractionRequest":I
    .end local v21    # "is":Ljava/io/FileInputStream;
    .end local v23    # "nameEmail":Ljava/lang/String;
    .end local v24    # "read":I
    .end local v25    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_f
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1854
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL handle not found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 26
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1059
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListing: messageType = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 1065
    .local v10, "bmList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v24, -0x1

    cmp-long v4, v8, v24

    if-eqz v4, :cond_0

    .line 1066
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v24, 0x0

    cmp-long v4, v8, v24

    if-nez v4, :cond_1

    .line 1067
    :cond_0
    const-wide v8, 0xffffffffL

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 1068
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListing(): appParameterMask is zero or not present, changing to all enabled by default: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1069
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    .line 1068
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "folderElement hasSmsMmsContent = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1072
    const-string/jumbo v8, " folderElement.hasEmailContent = "

    .line 1071
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v8

    .line 1071
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1073
    const-string/jumbo v8, " folderElement.hasImContent = "

    .line 1071
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v8

    .line 1071
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_2
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)V

    .line 1077
    .local v15, "fi":Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    const/4 v14, 0x0

    .line 1078
    .local v14, "emailCursor":Landroid/database/Cursor;
    const-string/jumbo v16, ""

    .line 1079
    .local v16, "limit":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v11

    .line 1080
    .local v11, "countNum":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v19

    .line 1081
    .local v19, "offsetNum":I
    if-ltz v11, :cond_3

    const/high16 v4, 0x10000

    if-le v11, v4, :cond_4

    .line 1083
    :cond_3
    const/16 v11, 0x400

    .line 1085
    :cond_4
    if-ltz v19, :cond_5

    const/high16 v4, 0x10000

    move/from16 v0, v19

    if-le v0, v4, :cond_6

    .line 1086
    :cond_5
    const/16 v19, 0x0

    .line 1088
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v6, v11, v19

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1090
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1091
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0x1b

    if-ne v4, v6, :cond_7

    .line 1097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " OFFSET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1098
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Email Limit => "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/16 v19, 0x0

    .line 1101
    :cond_7
    const/4 v4, 0x2

    iput v4, v15, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    .line 1102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, "where":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND flagLoaded IN (2,1)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " order by timeStamp desc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1108
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v15, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " where: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string/jumbo v4, "com.android.email.provider"

    .line 1109
    invoke-static {v4}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1112
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1113
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1112
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1114
    .local v14, "emailCursor":Landroid/database/Cursor;
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "emailUri "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-eqz v14, :cond_a

    .line 1116
    const/4 v12, 0x0

    .line 1118
    .local v12, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v15, v14}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->setEmailMessageColumns(Landroid/database/Cursor;)V

    .line 1119
    const-string/jumbo v4, "BluetoothMapContentEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " email messages."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v12    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1121
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v4, :cond_8

    invoke-static {v14}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 1122
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v12

    .line 1123
    .local v12, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v10, v12}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1166
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v7    # "where":Ljava/lang/String;
    .end local v12    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v14    # "emailCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 1167
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1166
    :cond_9
    throw v4

    .line 1130
    :cond_a
    :try_start_1
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v10, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 1132
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getList()Ljava/util/List;

    move-result-object v17

    .line 1133
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .line 1134
    .local v18, "listSize":I
    const/16 v20, 0x0

    .line 1135
    .local v20, "tmpCursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .end local v20    # "tmpCursor":Landroid/database/Cursor;
    .local v22, "x":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 1136
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 1140
    .local v13, "ele":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    .line 1141
    .local v21, "tmpType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    if-eqz v14, :cond_b

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1142
    move-object/from16 v20, v14

    .line 1143
    .local v20, "tmpCursor":Landroid/database/Cursor;
    const/4 v4, 0x2

    iput v4, v15, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    .line 1145
    .end local v20    # "tmpCursor":Landroid/database/Cursor;
    :cond_b
    if-eqz v20, :cond_c

    .line 1146
    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getCursorIndex()I

    move-result v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1149
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1150
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1151
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1152
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1156
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1160
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mMsgListingVersion:I

    const/16 v6, 0xa

    if-le v4, v6, :cond_c

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 1167
    .end local v13    # "ele":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v21    # "tmpType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_d
    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1170
    :cond_e
    const-string/jumbo v4, "BluetoothMapContentEmail"

    const-string/jumbo v6, "messagelisting end"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-object v10
.end method

.method public msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 12
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1220
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgListingHasUnread: folder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v7, 0x0

    .line 1224
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)V

    .line 1226
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    .line 1227
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    .line 1228
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND flagRead=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
    const-string/jumbo v0, "com.android.email.provider"

    .line 1233
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1235
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 1236
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1237
    const-string/jumbo v5, "timeStamp DESC"

    .line 1236
    const/4 v4, 0x0

    .line 1235
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1239
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1240
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x0

    .line 1243
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1248
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgListingHasUnread: numUnread = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    if-lez v7, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1242
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1243
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1242
    :cond_2
    throw v0

    .line 1249
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 1182
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msgListingSize: folder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v7, 0x0

    .line 1186
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmail;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;)V

    .line 1188
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;->mMsgType:I

    .line 1190
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContentEmail$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    const-string/jumbo v0, "com.android.email.provider"

    .line 1192
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1194
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mResolver:Landroid/content/ContentResolver;

    .line 1195
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1196
    const-string/jumbo v5, "timeStamp DESC"

    .line 1194
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1199
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1200
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x0

    .line 1203
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1208
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string/jumbo v0, "BluetoothMapContentEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgListingSize: size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v7

    .line 1202
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1203
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_2
    throw v0
.end method

.method public msgUpdate()V
    .locals 6

    .prologue
    .line 1042
    const-string/jumbo v3, "BluetoothMapContentEmail"

    const-string/jumbo v4, "Message Update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v0

    .line 1044
    .local v0, "accountId":J
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Account id for Inbox Update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1046
    .local v2, "emailIn":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string/jumbo v3, "org.codeaurora.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1048
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method
