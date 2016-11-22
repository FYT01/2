.class public Lcom/android/bluetooth/map/BluetoothMapAppParams;
.super Ljava/lang/Object;
.source "BluetoothMapAppParams.java"


# static fields
.field private static final ATTACHMENT:I = 0xa

.field private static final ATTACHMENT_LEN:I = 0x1

.field private static final CHARSET:I = 0x14

.field private static final CHARSET_LEN:I = 0x1

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field private static final CHAT_STATE:I = 0x1f

.field private static final CHAT_STATE_CONVO_ID:I = 0x24

.field private static final CHAT_STATE_CONVO_ID_LEN:I = 0x10

.field private static final CHAT_STATE_LEN:I = 0x1

.field private static final CONVO_LISTING_SIZE:I = 0x21

.field private static final CONVO_LISTING_SIZE_LEN:I = 0x2

.field private static final CONVO_LIST_VER_COUNTER:I = 0x1b

.field private static final CONVO_LIST_VER_COUNTER_LEN:I = 0x10

.field private static final CONVO_PARAMETER_MASK:I = 0x28

.field private static final CONVO_PARAMETER_MASK_LEN:I = 0x4

.field private static final DATABASE_INDETIFIER:I = 0x1a

.field private static final DATABASE_INDETIFIER_LEN:I = 0x10

.field private static final FILTER_CONVO_ID:I = 0x20

.field private static final FILTER_CONVO_ID_LEN:I = 0x20

.field private static final FILTER_MESSAGE_HANDLE:I = 0x26

.field private static final FILTER_MESSAGE_HANDLE_LEN:I = 0x10

.field private static final FILTER_MESSAGE_TYPE:I = 0x3

.field private static final FILTER_MESSAGE_TYPE_LEN:I = 0x1

.field public static final FILTER_MSG_TYPE_MASK:I = 0x1f

.field public static final FILTER_NO_EMAIL:I = 0x4

.field public static final FILTER_NO_IM:I = 0x10

.field public static final FILTER_NO_MMS:I = 0x8

.field public static final FILTER_NO_SMS_CDMA:I = 0x2

.field public static final FILTER_NO_SMS_GSM:I = 0x1

.field private static final FILTER_ORIGINATOR:I = 0x8

.field private static final FILTER_PERIOD_BEGIN:I = 0x4

.field private static final FILTER_PERIOD_END:I = 0x5

.field private static final FILTER_PRESENCE:I = 0x22

.field private static final FILTER_PRESENCE_LEN:I = 0x1

.field private static final FILTER_PRIORITY:I = 0x9

.field private static final FILTER_PRIORITY_LEN:I = 0x1

.field private static final FILTER_READ_STATUS:I = 0x6

.field private static final FILTER_READ_STATUS_LEN:I = 0x1

.field private static final FILTER_RECIPIENT:I = 0x7

.field private static final FILTER_UID_PRESENT:I = 0x23

.field private static final FILTER_UID_PRESENT_LEN:I = 0x1

.field private static final FOLDER_LISTING_SIZE:I = 0x11

.field private static final FOLDER_LISTING_SIZE_LEN:I = 0x2

.field private static final FOLDER_VER_COUNTER:I = 0x25

.field private static final FOLDER_VER_COUNTER_LEN:I = 0x10

.field private static final FRACTION_DELIVER:I = 0x16

.field public static final FRACTION_DELIVER_LAST:I = 0x1

.field private static final FRACTION_DELIVER_LEN:I = 0x1

.field public static final FRACTION_DELIVER_MORE:I = 0x0

.field private static final FRACTION_REQUEST:I = 0x15

.field public static final FRACTION_REQUEST_FIRST:I = 0x0

.field private static final FRACTION_REQUEST_LEN:I = 0x1

.field public static final FRACTION_REQUEST_NEXT:I = 0x1

.field public static final INVALID_VALUE_PARAMETER:I = -0x1

.field private static final LAST_ACTIVITY:I = 0x1e

.field private static final MAS_INSTANCE_ID:I = 0xf

.field private static final MAS_INSTANCE_ID_LEN:I = 0x1

.field private static final MAX_LIST_COUNT:I = 0x1

.field private static final MAX_LIST_COUNT_LEN:I = 0x2

.field private static final MESSAGE_LISTING_SIZE:I = 0x12

.field private static final MESSAGE_LISTING_SIZE_LEN:I = 0x2

.field private static final MSE_TIME:I = 0x19

.field private static final NEW_MESSAGE:I = 0xd

.field private static final NEW_MESSAGE_LEN:I = 0x1

.field private static final NOTIFICATION_FILTER:I = 0x27

.field private static final NOTIFICATION_FILTER_LEN:I = 0x4

.field private static final NOTIFICATION_STATUS:I = 0xe

.field private static final NOTIFICATION_STATUS_LEN:I = 0x1

.field public static final NOTIFICATION_STATUS_NO:I = 0x0

.field public static final NOTIFICATION_STATUS_YES:I = 0x1

.field private static final PARAMETER_MASK:I = 0x10

.field private static final PARAMETER_MASK_LEN:I = 0x4

.field private static final PRESENCE_AVAILABLE:I = 0x1c

.field private static final PRESENCE_AVAILABLE_LEN:I = 0x1

.field private static final PRESENCE_TEXT:I = 0x1d

.field private static final RETRY:I = 0xc

.field private static final RETRY_LEN:I = 0x1

.field private static final START_OFFSET:I = 0x2

.field private static final START_OFFSET_LEN:I = 0x2

.field private static final STATUS_INDICATOR:I = 0x17

.field public static final STATUS_INDICATOR_DELETED:I = 0x1

.field private static final STATUS_INDICATOR_LEN:I = 0x1

.field public static final STATUS_INDICATOR_READ:I = 0x0

.field private static final STATUS_VALUE:I = 0x18

.field private static final STATUS_VALUE_LEN:I = 0x1

.field public static final STATUS_VALUE_NO:I = 0x0

.field public static final STATUS_VALUE_YES:I = 0x1

.field private static final SUBJECT_LENGTH:I = 0x13

.field private static final SUBJECT_LENGTH_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppParams"

.field private static final TRANSPARENT:I = 0xb

.field private static final TRANSPARENT_LEN:I = 0x1


# instance fields
.field private mAttachment:I

.field private mCharset:I

.field private mChatState:I

.field private mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mConvoListingSize:I

.field private mConvoListingVerCounterHigh:J

.field private mConvoListingVerCounterLow:J

.field private mConvoParameterMask:J

.field private mDatabaseIdentifierHigh:J

.field private mDatabaseIdentifierLow:J

.field private mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mFilterMessageType:I

.field private mFilterMsgHandle:J

.field private mFilterOriginator:Ljava/lang/String;

.field private mFilterPeriodBegin:J

.field private mFilterPeriodEnd:J

.field private mFilterPresence:I

.field private mFilterPriority:I

.field private mFilterReadStatus:I

.field private mFilterRecipient:Ljava/lang/String;

.field private mFilterUidPresent:I

.field private mFolderListingSize:I

.field private mFolderVerCounterHigh:J

.field private mFolderVerCounterLow:J

.field private mFractionDeliver:I

.field private mFractionRequest:I

.field private mLastActivity:J

.field private mMasInstanceId:I

.field private mMaxListCount:I

.field private mMessageListingSize:I

.field private mMseTime:J

.field private mNewMessage:I

.field private mNotificationFilter:J

.field private mNotificationStatus:I

.field private mParameterMask:J

.field private mPresenceAvailability:I

.field private mPresenceStatus:Ljava/lang/String;

.field private mRetry:I

.field private mStartOffset:I

.field private mStatusIndicator:I

.field private mStatusValue:I

.field private mSubjectLength:I

.field private mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 136
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 137
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 139
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 140
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 141
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 142
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 144
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 145
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 146
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 147
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 148
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 149
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 150
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 151
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 152
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 153
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 154
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 155
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 156
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 157
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 158
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 159
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 160
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 161
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 162
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 164
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 165
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 166
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 167
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 168
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 169
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 170
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 171
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 172
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 173
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 174
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 175
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 176
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 177
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 178
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    .line 179
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 187
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 136
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 137
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 139
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 140
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 141
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 142
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 144
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 145
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 146
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 147
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 148
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 149
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 150
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 151
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 152
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 153
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 154
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 155
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 156
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 157
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 158
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 159
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 160
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 161
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 162
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 164
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 165
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 166
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 167
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 168
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 169
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 170
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 171
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 172
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 173
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 174
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 175
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 176
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 177
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 178
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    .line 179
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 209
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->ParseParams([B)V

    .line 208
    return-void
.end method

.method private ParseParams([B)V
    .locals 14
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x10

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 226
    const/4 v1, 0x0

    .line 228
    .local v1, "i":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_26

    .line 231
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    .line 232
    .local v3, "tagId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p1, v2

    and-int/lit16 v4, v5, 0xff

    .line 233
    .local v4, "tagLength":I
    packed-switch v3, :pswitch_data_0

    .line 553
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown TagId received ( 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 554
    const-string/jumbo v7, "), skipping..."

    .line 553
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_1
    :pswitch_0
    add-int/2addr v1, v4

    goto :goto_0

    .line 235
    :pswitch_1
    if-eq v4, v11, :cond_0

    .line 236
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAX_LIST_COUNT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, " expected: "

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    goto :goto_1

    .line 243
    :pswitch_2
    if-eq v4, v11, :cond_1

    .line 244
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "START_OFFSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    goto :goto_1

    .line 251
    :pswitch_3
    if-eq v4, v10, :cond_2

    .line 252
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_MESSAGE_TYPE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 253
    const-string/jumbo v7, " expected: "

    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 255
    :cond_2
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1f

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto/16 :goto_1

    .line 259
    :pswitch_4
    if-eqz v4, :cond_3

    .line 260
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :cond_3
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PERIOD_BEGIN: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 263
    const-string/jumbo v7, " expected to be more than 0"

    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 267
    :pswitch_5
    if-eqz v4, :cond_4

    .line 268
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :cond_4
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PERIOD_END: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 271
    const-string/jumbo v7, " expected to be more than 0"

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 275
    :pswitch_6
    if-eq v4, v10, :cond_5

    .line 276
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_READ_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 277
    const-string/jumbo v7, " expected: "

    .line 276
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 279
    :cond_5
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    goto/16 :goto_1

    .line 283
    :pswitch_7
    if-eqz v4, :cond_6

    .line 284
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterRecipient(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_6
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_RECIPIENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    const-string/jumbo v7, " expected to be more than 0"

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 291
    :pswitch_8
    if-eqz v4, :cond_7

    .line 292
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterOriginator(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    :cond_7
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_ORIGINATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 295
    const-string/jumbo v7, " expected to be more than 0"

    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 299
    :pswitch_9
    if-eq v4, v10, :cond_8

    .line 300
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PRIORITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 301
    const-string/jumbo v7, " expected: "

    .line 300
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :cond_8
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPriority(I)V

    goto/16 :goto_1

    .line 307
    :pswitch_a
    if-eq v4, v10, :cond_9

    .line 308
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ATTACHMENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    :cond_9
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setAttachment(I)V

    goto/16 :goto_1

    .line 315
    :pswitch_b
    if-eq v4, v10, :cond_a

    .line 316
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TRANSPARENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    :cond_a
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setTransparent(I)V

    goto/16 :goto_1

    .line 323
    :pswitch_c
    if-eq v4, v10, :cond_b

    .line 324
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RETRY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 327
    :cond_b
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setRetry(I)V

    goto/16 :goto_1

    .line 331
    :pswitch_d
    if-eq v4, v10, :cond_c

    .line 332
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NEW_MESSAGE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 335
    :cond_c
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    goto/16 :goto_1

    .line 339
    :pswitch_e
    if-eq v4, v10, :cond_d

    .line 340
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NOTIFICATION_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 341
    const-string/jumbo v7, " expected: "

    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 343
    :cond_d
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationStatus(I)V

    goto/16 :goto_1

    .line 347
    :pswitch_f
    if-eq v4, v13, :cond_e

    .line 348
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NOTIFICATION_FILTER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 349
    const-string/jumbo v7, " expected: "

    .line 348
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 351
    :cond_e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationFilter(J)V

    goto/16 :goto_1

    .line 355
    :pswitch_10
    if-eq v4, v10, :cond_f

    .line 356
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAS_INSTANCE_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    const-string/jumbo v7, " expected: "

    .line 356
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 359
    :cond_f
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    goto/16 :goto_1

    .line 363
    :pswitch_11
    if-eq v4, v13, :cond_10

    .line 364
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    const-string/jumbo v7, " expected: "

    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :cond_10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    goto/16 :goto_1

    .line 371
    :pswitch_12
    if-eq v4, v11, :cond_11

    .line 372
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FOLDER_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 373
    const-string/jumbo v7, " expected: "

    .line 372
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 375
    :cond_11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    goto/16 :goto_1

    .line 379
    :pswitch_13
    if-eq v4, v11, :cond_12

    .line 380
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    const-string/jumbo v7, " expected: "

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 383
    :cond_12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    goto/16 :goto_1

    .line 387
    :pswitch_14
    if-eq v4, v10, :cond_13

    .line 388
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SUBJECT_LENGTH: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 389
    const-string/jumbo v7, " expected: "

    .line 388
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    :cond_13
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V

    goto/16 :goto_1

    .line 395
    :pswitch_15
    if-eq v4, v10, :cond_14

    .line 396
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHARSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 399
    :cond_14
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setCharset(I)V

    goto/16 :goto_1

    .line 403
    :pswitch_16
    if-eq v4, v10, :cond_15

    .line 404
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FRACTION_REQUEST: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 405
    const-string/jumbo v7, " expected: "

    .line 404
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    :cond_15
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionRequest(I)V

    goto/16 :goto_1

    .line 411
    :pswitch_17
    if-eq v4, v10, :cond_16

    .line 412
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FRACTION_DELIVER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    const-string/jumbo v7, " expected: "

    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 415
    :cond_16
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    goto/16 :goto_1

    .line 419
    :pswitch_18
    if-eq v4, v10, :cond_17

    .line 420
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STATUS_INDICATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 421
    const-string/jumbo v7, " expected: "

    .line 420
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 423
    :cond_17
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusIndicator(I)V

    goto/16 :goto_1

    .line 427
    :pswitch_19
    if-eq v4, v10, :cond_18

    .line 428
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STATUS_VALUER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 431
    :cond_18
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusValue(I)V

    goto/16 :goto_1

    .line 435
    :pswitch_1a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 438
    :pswitch_1b
    if-eq v4, v12, :cond_19

    .line 439
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DATABASE_IDENTIFIER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    const-string/jumbo v7, " expected: "

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 442
    :cond_19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 443
    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 442
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    goto/16 :goto_1

    .line 447
    :pswitch_1c
    if-eq v4, v12, :cond_1a

    .line 448
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CONVO_LIST_VER_COUNTER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 449
    const-string/jumbo v7, " expected: "

    .line 448
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 451
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 452
    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 451
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    goto/16 :goto_1

    .line 456
    :pswitch_1d
    if-eq v4, v10, :cond_1b

    .line 457
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PRESENCE_AVAILABLE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    const-string/jumbo v7, " expected: "

    .line 457
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    :cond_1b
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceAvailability(I)V

    goto/16 :goto_1

    .line 464
    :pswitch_1e
    if-eqz v4, :cond_1c

    .line 465
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    :cond_1c
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PRESENCE_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 468
    const-string/jumbo v7, " expected to be more than 0"

    .line 467
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 471
    :pswitch_1f
    if-eqz v4, :cond_1d

    .line 472
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setLastActivity(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    :cond_1d
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LAST_ACTIVITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 475
    const-string/jumbo v7, " expected to be more than 0"

    .line 474
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 478
    :pswitch_20
    if-eq v4, v10, :cond_1e

    .line 479
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 480
    const-string/jumbo v7, " expected: "

    .line 479
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 482
    :cond_1e
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatState(I)V

    goto/16 :goto_1

    .line 486
    :pswitch_21
    if-eqz v4, :cond_1f

    const/16 v5, 0x20

    if-gt v4, v5, :cond_1f

    .line 487
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterConvoId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :cond_1f
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_CONVO_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 490
    const-string/jumbo v7, " expected: "

    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 490
    const/16 v7, 0x20

    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 494
    :pswitch_22
    if-eq v4, v11, :cond_20

    .line 495
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 499
    :cond_20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    goto/16 :goto_1

    .line 503
    :pswitch_23
    if-eq v4, v10, :cond_21

    .line 504
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PRESENCE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 505
    const-string/jumbo v7, " expected: "

    .line 504
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 507
    :cond_21
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPresence(I)V

    goto/16 :goto_1

    .line 511
    :pswitch_24
    if-eq v4, v10, :cond_22

    .line 512
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_UID_PRESENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    const-string/jumbo v7, " expected: "

    .line 512
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 515
    :cond_22
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterUidPresent(I)V

    goto/16 :goto_1

    .line 519
    :pswitch_25
    if-eq v4, v12, :cond_23

    .line 520
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE_CONVO_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 521
    const-string/jumbo v7, " expected: "

    .line 520
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 524
    :cond_23
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 525
    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 524
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatStateConvoId(JJ)V

    .line 526
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE_CONVO_ID: convo id MSB="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 527
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 528
    const-string/jumbo v7, ", LSB(+8)="

    .line 526
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 528
    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 535
    :pswitch_26
    if-eqz v4, :cond_24

    if-gt v4, v12, :cond_24

    .line 536
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMsgHandle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 538
    :cond_24
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_MESSAGE_HANDLE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 539
    const-string/jumbo v7, " expected: "

    .line 538
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 544
    :pswitch_27
    if-eq v4, v13, :cond_25

    .line 545
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CONVO_PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 546
    const-string/jumbo v7, " expected: "

    .line 545
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 548
    :cond_25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    goto/16 :goto_1

    .line 225
    .end local v3    # "tagId":I
    .end local v4    # "tagLength":I
    :cond_26
    return-void

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_f
        :pswitch_27
    .end packed-switch
.end method

.method private getParamMaxLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 571
    const/16 v0, 0x4c

    .line 572
    .local v0, "length":I
    add-int/lit8 v0, v0, 0x61

    .line 573
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0xad

    .line 574
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 575
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 580
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    :goto_3
    add-int/2addr v0, v2

    .line 583
    return v0

    :cond_3
    move v1, v3

    .line 573
    goto :goto_0

    :cond_4
    move v1, v3

    .line 574
    goto :goto_1

    :cond_5
    move v1, v3

    .line 579
    goto :goto_2

    :cond_6
    move v2, v3

    .line 582
    goto :goto_3
.end method


# virtual methods
.method public EncodeParams()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 594
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParamMaxLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 595
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 598
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 599
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 600
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 604
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 605
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 606
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 609
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 610
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 611
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 614
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 615
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 616
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 618
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 619
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 623
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 624
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 625
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 626
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 628
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 629
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 630
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 631
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 633
    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 634
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 635
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 636
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 638
    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    if-eq v2, v4, :cond_8

    .line 639
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 641
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 643
    :cond_8
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 644
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 645
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 646
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 648
    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    if-eq v2, v4, :cond_a

    .line 649
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 650
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 651
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    if-eq v2, v4, :cond_b

    .line 654
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 655
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 656
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 658
    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    if-eq v2, v4, :cond_c

    .line 659
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 661
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 663
    :cond_c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    if-eq v2, v4, :cond_d

    .line 664
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 665
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 666
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 668
    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e

    .line 669
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 670
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 671
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 673
    :cond_e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    if-eq v2, v4, :cond_f

    .line 674
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 675
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 676
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 678
    :cond_f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    .line 679
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 680
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 681
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 683
    :cond_10
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    if-eq v2, v4, :cond_11

    .line 684
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 685
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 686
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 688
    :cond_11
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    if-eq v2, v4, :cond_12

    .line 689
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 690
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 693
    :cond_12
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    if-eq v2, v4, :cond_13

    .line 694
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 695
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 696
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 698
    :cond_13
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    if-eq v2, v4, :cond_14

    .line 699
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 701
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 703
    :cond_14
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 704
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 705
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 706
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 708
    :cond_15
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 709
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 710
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 713
    :cond_16
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    if-eq v2, v4, :cond_17

    .line 714
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 715
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 716
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 718
    :cond_17
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    if-eq v2, v4, :cond_18

    .line 719
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 720
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 721
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 723
    :cond_18
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_19

    .line 724
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 725
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 726
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 729
    :cond_19
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 730
    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 731
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 734
    :cond_1a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 735
    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 736
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 739
    :cond_1b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v2

    if-eq v2, v4, :cond_1c

    .line 740
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 741
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 742
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 744
    :cond_1c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 745
    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 746
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 749
    :cond_1d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e

    .line 750
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 752
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 754
    :cond_1e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v2

    if-eq v2, v4, :cond_1f

    .line 755
    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 756
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 757
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 759
    :cond_1f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 760
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 761
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 762
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 763
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 765
    :cond_20
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v2

    if-eq v2, v4, :cond_21

    .line 766
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 767
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 768
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 770
    :cond_21
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v2

    if-eq v2, v4, :cond_22

    .line 771
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 773
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 775
    :cond_22
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v2

    if-eq v2, v4, :cond_23

    .line 776
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 777
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 778
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 780
    :cond_23
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 781
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 782
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 783
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 784
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 786
    :cond_24
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v2

    if-eqz v2, :cond_25

    .line 787
    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 788
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 789
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 791
    :cond_25
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_26

    .line 792
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 793
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 794
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 796
    :cond_26
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_27

    .line 797
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 798
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 799
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 803
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 804
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 803
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 805
    .local v1, "retBuf":[B
    return-object v1
.end method

.method public getAttachment()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    return v0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    return v0
.end method

.method public getChatState()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    return v0
.end method

.method public getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getChatStateConvoIdByteArray()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 998
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v1, :cond_0

    .line 999
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1000
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1001
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1002
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 1003
    .end local v0    # "ret":Ljava/nio/ByteBuffer;
    :cond_0
    return-object v2
.end method

.method public getChatStateConvoIdString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "str":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1009
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public getConvoListingSize()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    return v0
.end method

.method public getConvoListingVerCounter()[B
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 969
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 970
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 971
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 972
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 973
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 974
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 975
    .end local v0    # "ret":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConvoParameterMask()J
    .locals 2

    .prologue
    .line 1220
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    return-wide v0
.end method

.method public getDatabaseIdentifier()[B
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 954
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 955
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 956
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 957
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 958
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 959
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 960
    .end local v0    # "ret":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getFilterConvoIdString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFilterLastActivityBegin()J
    .locals 2

    .prologue
    .line 859
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterLastActivityBeginString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 862
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 863
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 864
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterLastActivityEnd()J
    .locals 2

    .prologue
    .line 879
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterLastActivityEndString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 883
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 884
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 885
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterMessageType()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    return v0
.end method

.method public getFilterMsgHandle()J
    .locals 2

    .prologue
    .line 1025
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    return-wide v0
.end method

.method public getFilterMsgHandleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "str":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1031
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFilterOriginator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPeriodBegin()J
    .locals 2

    .prologue
    .line 839
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterPeriodBeginString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 843
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 844
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 845
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPeriodEnd()J
    .locals 2

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterPeriodEndString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 898
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 900
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPresence()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    return v0
.end method

.method public getFilterPriority()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    return v0
.end method

.method public getFilterReadStatus()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    return v0
.end method

.method public getFilterRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterUidPresent()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    return v0
.end method

.method public getFolderListingSize()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    return v0
.end method

.method public getFolderVerCounter()[B
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 984
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 985
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 986
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 987
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 988
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 989
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 990
    .end local v0    # "ret":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFractionDeliver()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    return v0
.end method

.method public getFractionRequest()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    return v0
.end method

.method public getLastActivity()J
    .locals 2

    .prologue
    .line 1090
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1093
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1095
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMasInstanceId()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    return v0
.end method

.method public getMaxListCount()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    return v0
.end method

.method public getMessageListingSize()I
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    return v0
.end method

.method public getMseTime()J
    .locals 2

    .prologue
    .line 1309
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-wide v0
.end method

.method public getMseTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1313
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1315
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNewMessage()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    return v0
.end method

.method public getNotificationFilter()J
    .locals 2

    .prologue
    .line 1183
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    return-wide v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    return v0
.end method

.method public getParameterMask()J
    .locals 2

    .prologue
    .line 1204
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    return-wide v0
.end method

.method public getPresenceAvailability()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    return v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    return v0
.end method

.method public getStatusIndicator()I
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    return v0
.end method

.method public getStatusValue()I
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    return v0
.end method

.method public getSubjectLength()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    return v0
.end method

.method public getTransparent()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    return v0
.end method

.method public setAttachment(I)V
    .locals 2
    .param p1, "attachment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1137
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 1136
    return-void
.end method

.method public setCharset(I)V
    .locals 3
    .param p1, "charset"    # I

    .prologue
    .line 1263
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", valid range is 0x0000 to 0x0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 1262
    return-void
.end method

.method public setChatState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1080
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1081
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 1079
    return-void
.end method

.method public setChatStateConvoId(JJ)V
    .locals 1
    .param p1, "idHigh"    # J
    .param p3, "idLow"    # J

    .prologue
    .line 1013
    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 1012
    return-void
.end method

.method public setConvoListingSize(I)V
    .locals 2
    .param p1, "convoListingSize"    # I

    .prologue
    .line 1248
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 1249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 1247
    return-void
.end method

.method public setConvoListingVerCounter(JJ)V
    .locals 1
    .param p1, "countLow"    # J
    .param p3, "countHigh"    # J

    .prologue
    .line 964
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 965
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 963
    return-void
.end method

.method public setConvoParameterMask(J)V
    .locals 3
    .param p1, "parameterMask"    # J

    .prologue
    .line 1214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 1213
    return-void
.end method

.method public setDatabaseIdentifier(JJ)V
    .locals 1
    .param p1, "idHigh"    # J
    .param p3, "idLow"    # J

    .prologue
    .line 949
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 950
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 948
    return-void
.end method

.method public setFilterConvoId(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1072
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "BluetoothMapAppParams"

    const-string/jumbo v2, "Error creating long from id string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFilterLastActivityBegin(J)V
    .locals 1
    .param p1, "filterPeriodBegin"    # J

    .prologue
    .line 867
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 866
    return-void
.end method

.method public setFilterLastActivityBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodBegin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 872
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 873
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 870
    return-void
.end method

.method public setFilterLastActivityEnd(J)V
    .locals 1
    .param p1, "filterPeriodEnd"    # J

    .prologue
    .line 889
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 888
    return-void
.end method

.method public setFilterLastActivityEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 909
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 910
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 907
    return-void
.end method

.method public setFilterMessageType(I)V
    .locals 2
    .param p1, "filterMessageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 833
    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x001F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 832
    return-void
.end method

.method public setFilterMsgHandle(Ljava/lang/String;)V
    .locals 4
    .param p1, "handle"    # Ljava/lang/String;

    .prologue
    .line 1018
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    return-void

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "BluetoothMapAppParams"

    const-string/jumbo v2, "Error creating long from handle string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFilterOriginator(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterOriginator"    # Ljava/lang/String;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public setFilterPeriodBegin(J)V
    .locals 1
    .param p1, "filterPeriodBegin"    # J

    .prologue
    .line 849
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 848
    return-void
.end method

.method public setFilterPeriodBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodBegin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 854
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 855
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 852
    return-void
.end method

.method public setFilterPeriodEnd(J)V
    .locals 1
    .param p1, "filterPeriodEnd"    # J

    .prologue
    .line 904
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 903
    return-void
.end method

.method public setFilterPeriodEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 893
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 894
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 895
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 892
    return-void
.end method

.method public setFilterPresence(I)V
    .locals 2
    .param p1, "presence"    # I

    .prologue
    .line 1114
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 1115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 1113
    return-void
.end method

.method public setFilterPriority(I)V
    .locals 2
    .param p1, "filterPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 943
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 942
    return-void
.end method

.method public setFilterReadStatus(I)V
    .locals 2
    .param p1, "filterReadStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 917
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 916
    return-void
.end method

.method public setFilterRecipient(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterRecipient"    # Ljava/lang/String;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setFilterUidPresent(I)V
    .locals 2
    .param p1, "present"    # I

    .prologue
    .line 1041
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1042
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 1040
    return-void
.end method

.method public setFolderListingSize(I)V
    .locals 2
    .param p1, "folderListingSize"    # I

    .prologue
    .line 1228
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 1227
    return-void
.end method

.method public setFolderVerCounter(JJ)V
    .locals 1
    .param p1, "countLow"    # J
    .param p3, "countHigh"    # J

    .prologue
    .line 979
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 980
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 978
    return-void
.end method

.method public setFractionDeliver(I)V
    .locals 2
    .param p1, "fractionDeliver"    # I

    .prologue
    .line 1283
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 1282
    return-void
.end method

.method public setFractionRequest(I)V
    .locals 2
    .param p1, "fractionRequest"    # I

    .prologue
    .line 1273
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 1272
    return-void
.end method

.method public setLastActivity(J)V
    .locals 1
    .param p1, "last"    # J

    .prologue
    .line 1098
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 1097
    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "lastActivity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1101
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1103
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 1100
    return-void
.end method

.method public setMasInstanceId(I)V
    .locals 2
    .param p1, "masInstanceId"    # I

    .prologue
    .line 1198
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 1197
    return-void
.end method

.method public setMaxListCount(I)V
    .locals 2
    .param p1, "maxListCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 813
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 812
    return-void
.end method

.method public setMessageListingSize(I)V
    .locals 2
    .param p1, "messageListingSize"    # I

    .prologue
    .line 1238
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 1237
    return-void
.end method

.method public setMseTime(J)V
    .locals 1
    .param p1, "mseTime"    # J

    .prologue
    .line 1319
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 1318
    return-void
.end method

.method public setMseTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "mseTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1325
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 1322
    return-void
.end method

.method public setNewMessage(I)V
    .locals 2
    .param p1, "newMessage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1167
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 1166
    return-void
.end method

.method public setNotificationFilter(J)V
    .locals 3
    .param p1, "notificationFilter"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1187
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1189
    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFFL"

    .line 1188
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 1186
    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 2
    .param p1, "notificationStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1177
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 1176
    return-void
.end method

.method public setParameterMask(J)V
    .locals 3
    .param p1, "parameterMask"    # J

    .prologue
    .line 1208
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 1207
    return-void
.end method

.method public setPresenceAvailability(I)V
    .locals 2
    .param p1, "availability"    # I

    .prologue
    .line 1120
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 1119
    return-void
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 1106
    return-void
.end method

.method public setRetry(I)V
    .locals 2
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1157
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 1156
    return-void
.end method

.method public setStartOffset(I)V
    .locals 2
    .param p1, "startOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 823
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 822
    return-void
.end method

.method public setStatusIndicator(I)V
    .locals 2
    .param p1, "statusIndicator"    # I

    .prologue
    .line 1293
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 1292
    return-void
.end method

.method public setStatusValue(I)V
    .locals 2
    .param p1, "statusValue"    # I

    .prologue
    .line 1303
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 1302
    return-void
.end method

.method public setSubjectLength(I)V
    .locals 2
    .param p1, "subjectLength"    # I

    .prologue
    .line 1253
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 1252
    return-void
.end method

.method public setTransparent(I)V
    .locals 2
    .param p1, "transparent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1147
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 1146
    return-void
.end method
