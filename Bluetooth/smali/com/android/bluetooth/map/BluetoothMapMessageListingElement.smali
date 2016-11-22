.class public Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListingElement"

.field private static final V:Z


# instance fields
.field private mAttachmentMimeTypes:Ljava/lang/String;

.field private mAttachmentSize:I

.field private mCpHandle:J

.field private mCursorIndex:I

.field private mDateTime:J

.field private mDeliveryStatus:Ljava/lang/String;

.field private mFolderType:Ljava/lang/String;

.field private mMsgTypeAppParamSet:Z

.field private mPriority:Ljava/lang/String;

.field private mProtect:Ljava/lang/String;

.field private mRead:Z

.field private mReceptionStatus:Ljava/lang/String;

.field private mRecipientAddressing:Ljava/lang/String;

.field private mRecipientName:Ljava/lang/String;

.field private mReplytoAddressing:Ljava/lang/String;

.field private mReportRead:Z

.field private mSenderAddressing:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSent:Ljava/lang/String;

.field private mSize:I

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "BluetoothMap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->V:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 38
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 39
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 40
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 46
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    .line 47
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 48
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 52
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 54
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 62
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I
    .locals 4
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 262
    const/4 v0, -0x1

    return v0

    .line 264
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 8
    .param p1, "xmlMsgElement"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "includeThreadId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x100

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 274
    const-string/jumbo v2, "msg"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const-string/jumbo v2, "handle"

    .line 276
    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v4, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "stripped":Ljava/lang/String;
    const-string/jumbo v2, "subject"

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-interface {p1, v6, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    .end local v0    # "stripped":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 283
    const-string/jumbo v1, "datetime"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 285
    const-string/jumbo v1, "sender_name"

    .line 286
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 288
    const-string/jumbo v1, "sender_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 290
    const-string/jumbo v1, "replyto_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 292
    const-string/jumbo v1, "recipient_name"

    .line 293
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 295
    const-string/jumbo v1, "recipient_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_7
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v1, :cond_8

    .line 298
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    if-eq v1, v7, :cond_9

    .line 300
    const-string/jumbo v1, "size"

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 302
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 304
    const-string/jumbo v1, "reception_status"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 306
    const-string/jumbo v1, "delivery_status"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    :cond_c
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    if-eq v1, v7, :cond_d

    .line 308
    const-string/jumbo v1, "attachment_size"

    .line 309
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 311
    const-string/jumbo v1, "attachment_mime_types"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    :cond_e
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 313
    const-string/jumbo v1, "priority"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    :cond_f
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    if-eqz v1, :cond_10

    .line 315
    const-string/jumbo v1, "read"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 317
    const-string/jumbo v1, "sent"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_11
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 319
    const-string/jumbo v1, "protected"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    :cond_12
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 321
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    :cond_13
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    .line 323
    const-string/jumbo v1, "conversation_name"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    :cond_14
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 325
    const-string/jumbo v1, "folder_type"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_15
    const-string/jumbo v1, "msg"

    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    return-void
.end method

.method public getAttachmentMimeTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentSize()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return v0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    return-wide v0
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 89
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeliveryStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    return-wide v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getProtect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "no"

    goto :goto_0
.end method

.method public getReadBool()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    return v0
.end method

.method public getReceptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public setAttachmentMimeTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachmentMimeTypes"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setAttachmentSize(I)V
    .locals 0
    .param p1, "attachmentSize"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 189
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 0
    .param p1, "cursorIndex"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    .line 68
    return-void
.end method

.method public setDateTime(J)V
    .locals 1
    .param p1, "dateTime"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 92
    return-void
.end method

.method public setDeliveryStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryStatus"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderType"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setHandle(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 76
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setProtect(Ljava/lang/String;)V
    .locals 0
    .param p1, "protect"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setRead(ZZ)V
    .locals 0
    .param p1, "read"    # Z
    .param p2, "reportRead"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 217
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 215
    return-void
.end method

.method public setReceptionStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "receptionStatus"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setRecipientAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientAddressing"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setReplytoAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "replytoAddressing"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSenderAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderAddressing"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 157
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 3
    .param p1, "threadId"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 237
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 236
    :cond_0
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p2, "appParamSet"    # Z

    .prologue
    .line 149
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    .line 150
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 148
    return-void
.end method
