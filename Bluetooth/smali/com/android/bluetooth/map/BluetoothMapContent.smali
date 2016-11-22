.class public Lcom/android/bluetooth/map/BluetoothMapContent;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    }
.end annotation


# static fields
.field private static synthetic -com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I = null

.field public static final CONVO_PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field public static final CONVO_PARAMETER_MASK_DEFAULT:J = 0xe1L

.field private static final CONVO_PARAM_MASK_CONVO_LAST_ACTIVITY:I = 0x2

.field private static final CONVO_PARAM_MASK_CONVO_NAME:I = 0x1

.field private static final CONVO_PARAM_MASK_CONVO_READ_STATUS:I = 0x4

.field private static final CONVO_PARAM_MASK_CONVO_SUMMARY:I = 0x10

.field private static final CONVO_PARAM_MASK_CONVO_VERSION_COUNTER:I = 0x8

.field private static final CONVO_PARAM_MASK_PARTTICIPANTS:I = 0x20

.field private static final CONVO_PARAM_MASK_PART_CHAT_STATE:I = 0x100

.field private static final CONVO_PARAM_MASK_PART_DISP_NAME:I = 0x80

.field private static final CONVO_PARAM_MASK_PART_LAST_ACTIVITY:I = 0x200

.field private static final CONVO_PARAM_MASK_PART_NAME:I = 0x800

.field private static final CONVO_PARAM_MASK_PART_PRESENCE:I = 0x1000

.field private static final CONVO_PARAM_MASK_PART_PRESENCE_TEXT:I = 0x2000

.field private static final CONVO_PARAM_MASK_PART_PRIORITY:I = 0x4000

.field private static final CONVO_PARAM_MASK_PART_UCI:I = 0x40

.field private static final CONVO_PARAM_MASK_PART_X_BT_UID:I = 0x400

.field private static final CONVO_VERSION_PROJECTION:[Ljava/lang/String;

.field private static final D:Z = true

.field private static final FILTER_READ_STATUS_ALL:I = 0x0

.field private static final FILTER_READ_STATUS_READ_ONLY:I = 0x2

.field private static final FILTER_READ_STATUS_UNREAD_ONLY:I = 0x1

.field private static final HONDA_CARKIT:Ljava/lang/String; = "64:D4:BD"

.field public static final INSERT_ADDRES_TOKEN:Ljava/lang/String; = "insert-address-token"

.field public static final MAP_MESSAGE_CHARSET_NATIVE:I = 0x0

.field public static final MAP_MESSAGE_CHARSET_UTF8:I = 0x1

.field private static final MASK_ATTACHMENT_MIME:I = 0x400000

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

.field public static final MMS_BCC:I = 0x81

.field public static final MMS_CC:I = 0x82

.field static final MMS_CONVO_PROJECTION:[Ljava/lang/String;

.field public static final MMS_FROM:I = 0x89

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_SMS_THREAD_COL_DATE:I

.field private static final MMS_SMS_THREAD_COL_ID:I

.field private static final MMS_SMS_THREAD_COL_READ:I

.field private static final MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET_CS:I

.field private static final MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

.field public static final MMS_TO:I = 0x97

.field public static final PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field public static final PARAMETER_MASK_DEFAULT:J = 0x5ebL

.field static final SMS_CONVO_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContent"

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
.method private static synthetic -getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 71
    const-string/jumbo v1, "BluetoothMap"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    .line 156
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 157
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    .line 158
    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    .line 159
    const-string/jumbo v2, "address"

    aput-object v2, v1, v4

    .line 160
    const-string/jumbo v2, "body"

    aput-object v2, v1, v7

    .line 161
    const-string/jumbo v2, "date"

    aput-object v2, v1, v8

    .line 162
    const-string/jumbo v2, "read"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 163
    const-string/jumbo v2, "type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 164
    const-string/jumbo v2, "status"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 165
    const-string/jumbo v2, "locked"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 166
    const-string/jumbo v2, "error_code"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 156
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 169
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    .line 170
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    .line 171
    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    .line 172
    const-string/jumbo v2, "m_id"

    aput-object v2, v1, v4

    .line 173
    const-string/jumbo v2, "m_size"

    aput-object v2, v1, v7

    .line 174
    const-string/jumbo v2, "sub"

    aput-object v2, v1, v8

    .line 175
    const-string/jumbo v2, "ct_t"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 176
    const-string/jumbo v2, "text_only"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 177
    const-string/jumbo v2, "date"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 178
    const-string/jumbo v2, "date_sent"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 179
    const-string/jumbo v2, "read"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 180
    const-string/jumbo v2, "msg_box"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 181
    const-string/jumbo v2, "st"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 182
    const-string/jumbo v2, "pri"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 169
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    .line 185
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    .line 186
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    .line 187
    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    .line 188
    const-string/jumbo v2, "address"

    aput-object v2, v1, v4

    .line 189
    const-string/jumbo v2, "date"

    aput-object v2, v1, v7

    .line 190
    const-string/jumbo v2, "read"

    aput-object v2, v1, v8

    .line 191
    const-string/jumbo v2, "type"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 192
    const-string/jumbo v2, "status"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 193
    const-string/jumbo v2, "locked"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 194
    const-string/jumbo v2, "error_code"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 185
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_CONVO_PROJECTION:[Ljava/lang/String;

    .line 197
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    .line 198
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    .line 199
    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    .line 200
    const-string/jumbo v2, "m_id"

    aput-object v2, v1, v4

    .line 201
    const-string/jumbo v2, "m_size"

    aput-object v2, v1, v7

    .line 202
    const-string/jumbo v2, "sub"

    aput-object v2, v1, v8

    .line 203
    const-string/jumbo v2, "ct_t"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 204
    const-string/jumbo v2, "text_only"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 205
    const-string/jumbo v2, "date"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 206
    const-string/jumbo v2, "date_sent"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 207
    const-string/jumbo v2, "read"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 208
    const-string/jumbo v2, "msg_box"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 209
    const-string/jumbo v2, "st"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 210
    const-string/jumbo v2, "pri"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 211
    const-string/jumbo v2, "address"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 197
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_CONVO_PROJECTION:[Ljava/lang/String;

    .line 215
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 216
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    .line 217
    const-string/jumbo v2, "date"

    aput-object v2, v1, v6

    .line 218
    const-string/jumbo v2, "snippet"

    aput-object v2, v1, v4

    .line 219
    const-string/jumbo v2, "snippet_cs"

    aput-object v2, v1, v7

    .line 220
    const-string/jumbo v2, "read"

    aput-object v2, v1, v8

    .line 221
    const-string/jumbo v2, "recipient_ids"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 215
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    .line 224
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 226
    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v5

    .line 227
    const-string/jumbo v2, "thread_name"

    aput-object v2, v1, v6

    .line 228
    const-string/jumbo v2, "read_status"

    aput-object v2, v1, v4

    .line 229
    const-string/jumbo v2, "last_thread_activity"

    aput-object v2, v1, v7

    .line 230
    const-string/jumbo v2, "convo_summary"

    aput-object v2, v1, v8

    .line 224
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    .line 244
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "projection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    .line 246
    const-string/jumbo v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    .line 247
    const-string/jumbo v1, "snippet"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    .line 248
    const-string/jumbo v1, "snippet_cs"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    .line 249
    const-string/jumbo v1, "read"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    .line 250
    const-string/jumbo v1, "recipient_ids"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .param p3, "mas"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    .line 153
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    .line 154
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    .line 441
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 442
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 443
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 444
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 445
    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "getContentResolver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    if-eqz p2, :cond_1

    .line 449
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

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    .line 450
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 440
    :goto_0
    return-void

    .line 452
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    .line 453
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    goto :goto_0
.end method

.method private addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 18
    .param p1, "convoElement"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .param p2, "contacts"    # Lcom/android/bluetooth/map/SmsMmsContacts;
    .param p3, "idsStr"    # Ljava/lang/String;
    .param p4, "recipientFilter"    # Ljava/lang/String;
    .param p5, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 3184
    invoke-virtual/range {p5 .. p5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 3185
    .local v14, "parameterMask":I
    const/4 v6, 0x0

    .line 3186
    .local v6, "foundContact":Z
    const-string/jumbo v15, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3187
    .local v10, "ids":[Ljava/lang/String;
    array-length v15, v10

    new-array v11, v15, [J

    .line 3188
    .local v11, "longIds":[J
    if-eqz p4, :cond_0

    .line 3189
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 3192
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v10

    if-ge v7, v15, :cond_4

    .line 3195
    :try_start_0
    aget-object v15, v10, v7

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 3196
    .local v12, "longId":J
    aput-wide v12, v11, v7

    .line 3197
    if-nez p4, :cond_2

    .line 3199
    const/4 v6, 0x1

    .line 3192
    .end local v12    # "longId":J
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3202
    .restart local v12    # "longId":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v12, v13}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    .line 3203
    .local v2, "addr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v15, v1}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v3

    .line 3211
    .local v3, "contact":Lcom/android/bluetooth/map/MapContact;
    const-string/jumbo v15, "BluetoothMapContent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    if-eqz v3, :cond_3

    .line 3213
    const-string/jumbo v15, "BluetoothMapContent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  contact name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  X-BT-UID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3214
    invoke-virtual {v3}, Lcom/android/bluetooth/map/MapContact;->getXBtUid()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v17

    .line 3213
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3217
    :cond_3
    if-eqz v3, :cond_1

    .line 3220
    const/4 v6, 0x1

    goto :goto_1

    .line 3227
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "contact":Lcom/android/bluetooth/map/MapContact;
    .end local v12    # "longId":J
    :cond_4
    if-eqz v6, :cond_b

    .line 3228
    const/4 v6, 0x0

    .line 3229
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    aget-wide v8, v11, v15

    .line 3230
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    .line 3231
    .restart local v2    # "addr":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 3229
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3236
    :cond_5
    const/4 v6, 0x1

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v3

    .line 3239
    .restart local v3    # "contact":Lcom/android/bluetooth/map/MapContact;
    if-nez v3, :cond_8

    .line 3241
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 3242
    .local v4, "contactElement":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    and-int/lit16 v0, v14, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 3243
    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    .line 3245
    :cond_6
    and-int/lit8 v17, v14, 0x40

    if-eqz v17, :cond_7

    .line 3246
    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    .line 3262
    :cond_7
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    goto :goto_3

    .line 3249
    .end local v4    # "contactElement":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    :cond_8
    invoke-static {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromMapContact(Lcom/android/bluetooth/map/MapContact;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v4

    .line 3252
    .restart local v4    # "contactElement":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_9

    .line 3253
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    .line 3255
    :cond_9
    and-int/lit16 v0, v14, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 3256
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    .line 3258
    :cond_a
    and-int/lit16 v0, v14, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 3259
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    goto :goto_4

    .line 3265
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "contact":Lcom/android/bluetooth/map/MapContact;
    .end local v4    # "contactElement":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .end local v8    # "id":J
    :cond_b
    return v6

    .line 3221
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v10, 0x0

    .line 3123
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 3124
    .local v2, "newUri":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v4

    .line 3125
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3126
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3127
    const-string/jumbo v5, "*"

    const-string/jumbo v8, "%"

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 3128
    const-string/jumbo v5, "org_sub_str"

    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3130
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v6

    .line 3131
    .local v6, "time":J
    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    .line 3132
    const-string/jumbo v5, "t_begin"

    .line 3133
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 3132
    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3135
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v6

    .line 3136
    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 3137
    const-string/jumbo v5, "t_end"

    .line 3138
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 3137
    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3140
    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v3

    .line 3141
    .local v3, "readStatus":I
    if-lez v3, :cond_3

    .line 3142
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 3144
    const-string/jumbo v5, "read"

    .line 3145
    const-string/jumbo v8, "false"

    .line 3144
    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3155
    :cond_3
    :goto_0
    const-wide/16 v0, -0x1

    .line 3156
    .local v0, "convoId":J
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3157
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    .line 3159
    :cond_4
    cmp-long v5, v0, v10

    if-lez v5, :cond_5

    .line 3160
    const-string/jumbo v5, "thread_id"

    .line 3161
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 3160
    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3163
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 3146
    .end local v0    # "convoId":J
    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 3148
    const-string/jumbo v5, "read"

    .line 3149
    const-string/jumbo v8, "true"

    .line 3148
    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 458
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1284
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 1285
    .local v0, "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1286
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1288
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setCursorIndex(I)V

    .line 1289
    return-object v0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1270
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    .line 1271
    .local v0, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1272
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1273
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

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

    .line 1274
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1278
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setCursorIndex(I)V

    .line 1279
    return-object v0

    .line 1273
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

    .line 1991
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1993
    .local v0, "msgType":I
    const-string/jumbo v1, "BluetoothMapContent"

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

    .line 1995
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1996
    return v5

    .line 1998
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 1999
    return v5

    .line 2001
    :cond_1
    return v4
.end method

.method private extractIMParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 19
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .prologue
    .line 3615
    const/4 v4, 0x0

    .line 3616
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3617
    .local v5, "selection":Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3618
    const-string/jumbo v6, "Message"

    .line 3617
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3618
    const-string/jumbo v6, "/"

    .line 3617
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3618
    const-string/jumbo v6, "/part"

    .line 3617
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3619
    .local v18, "uriStr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3621
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3623
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3626
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3625
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 3628
    .local v16, "partId":Ljava/lang/Long;
    const-string/jumbo v2, "charset"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3627
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3630
    .local v10, "charset":Ljava/lang/String;
    const-string/jumbo v2, "filename"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3629
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3632
    .local v14, "filename":Ljava/lang/String;
    const-string/jumbo v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3631
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3634
    .local v17, "text":Ljava/lang/String;
    const-string/jumbo v2, "raw_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3633
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3636
    .local v8, "body":Ljava/lang/String;
    const-string/jumbo v2, "cid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3635
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3638
    .local v11, "cid":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3639
    const-string/jumbo v7, "\n     charset : "

    .line 3638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3640
    const-string/jumbo v7, "\n     filename : "

    .line 3638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3641
    const-string/jumbo v7, "\n     text : "

    .line 3638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3642
    const-string/jumbo v7, "\n     cid : "

    .line 3638
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v15

    .line 3645
    .local v15, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    iput-object v11, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3647
    :try_start_1
    const-string/jumbo v2, "yes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3648
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3649
    const-string/jumbo v2, "utf-8"

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3667
    :cond_2
    :goto_0
    :try_start_2
    iput-object v14, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 3668
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 3671
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v16    # "partId":Ljava/lang/Long;
    .end local v17    # "text":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3674
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    .line 3611
    return-void

    .line 3651
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v16    # "partId":Ljava/lang/Long;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3652
    const-string/jumbo v6, "Part"

    .line 3651
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3652
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3651
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3653
    if-eqz v10, :cond_2

    .line 3655
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3654
    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3657
    :catch_0
    move-exception v13

    .line 3658
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractIMParts"

    invoke-static {v2, v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3659
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3660
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3665
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3670
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v16    # "partId":Ljava/lang/Long;
    .end local v17    # "text":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 3671
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3670
    :cond_6
    throw v2

    .line 3661
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v14    # "filename":Ljava/lang/String;
    .restart local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v16    # "partId":Ljava/lang/Long;
    .restart local v17    # "text":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 3662
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractIMParts"

    invoke-static {v2, v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3663
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3664
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .prologue
    const/4 v4, 0x0

    .line 3454
    const/4 v2, 0x0

    .line 3455
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3456
    .local v3, "selection":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "/addr"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v10, "uriStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3458
    .local v1, "uriAddress":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 3460
    .local v8, "contactName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3462
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3464
    .end local v8    # "contactName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3465
    .local v6, "address":Ljava/lang/String;
    const-string/jumbo v0, "insert-address-token"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3488
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3491
    .end local v6    # "address":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3453
    :cond_2
    return-void

    .line 3467
    .restart local v6    # "address":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3468
    .local v9, "type":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3482
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 3483
    .local v8, "contactName":Ljava/lang/String;
    invoke-virtual {p3, v8, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addBcc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3490
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    .line 3491
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3490
    :cond_4
    throw v0

    .line 3470
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/Integer;
    :sswitch_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 3471
    .restart local v8    # "contactName":Ljava/lang/String;
    invoke-virtual {p3, v8, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3474
    .end local v8    # "contactName":Ljava/lang/String;
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 3475
    .restart local v8    # "contactName":Ljava/lang/String;
    invoke-virtual {p3, v8, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3478
    .end local v8    # "contactName":Ljava/lang/String;
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 3479
    .restart local v8    # "contactName":Ljava/lang/String;
    invoke-virtual {p3, v8, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addCc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3468
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_3
        0x89 -> :sswitch_1
        0x97 -> :sswitch_2
    .end sparse-switch
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 23
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .prologue
    .line 3537
    const/4 v4, 0x0

    .line 3538
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

    .line 3539
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

    .line 3540
    .local v22, "uriStr":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3542
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3544
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3546
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 3547
    .local v20, "partId":Ljava/lang/Long;
    const-string/jumbo v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3548
    .local v13, "contentType":Ljava/lang/String;
    const-string/jumbo v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3549
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3550
    .local v10, "charset":Ljava/lang/String;
    const-string/jumbo v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3551
    .local v17, "filename":Ljava/lang/String;
    const-string/jumbo v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3552
    .local v21, "text":Ljava/lang/String;
    const-string/jumbo v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3553
    .local v16, "fd":Ljava/lang/Integer;
    const-string/jumbo v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3554
    .local v11, "cid":Ljava/lang/String;
    const-string/jumbo v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3555
    .local v12, "cl":Ljava/lang/String;
    const-string/jumbo v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3557
    .local v9, "cdisp":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3558
    const-string/jumbo v7, "\n     ct : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3559
    const-string/jumbo v7, "\n     partname : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3560
    const-string/jumbo v7, "\n     charset : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3561
    const-string/jumbo v7, "\n     filename : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3562
    const-string/jumbo v7, "\n     text : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3563
    const-string/jumbo v7, "\n     fd : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3564
    const-string/jumbo v7, "\n     cid : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3565
    const-string/jumbo v7, "\n     cl : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3566
    const-string/jumbo v7, "\n     cdisp : "

    .line 3557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v19

    .line 3569
    .local v19, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 3570
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    .line 3571
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 3572
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 3573
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3576
    if-eqz v21, :cond_5

    .line 3577
    :try_start_1
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3578
    const-string/jumbo v2, "utf-8"

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3597
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 3598
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3599
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3603
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

    .line 3533
    :cond_4
    return-void

    .line 3581
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

    invoke-direct {v0, v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v2

    .line 3580
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3582
    if-eqz v10, :cond_2

    .line 3584
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 3583
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3587
    :catch_0
    move-exception v15

    .line 3588
    .local v15, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3589
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3590
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3595
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3602
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

    .line 3603
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3602
    :cond_6
    throw v2

    .line 3591
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

    .line 3592
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3593
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3594
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 11
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 1389
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " AND type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v3, "selection":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/addr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1392
    .local v1, "uriAddress":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1393
    .local v6, "addr":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "address"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 1394
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1396
    .local v7, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1397
    .local v7, "c":Landroid/database/Cursor;
    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1398
    .local v8, "colIndex":I
    if-eqz v7, :cond_0

    .line 1399
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1401
    .local v6, "addr":Ljava/lang/String;
    const-string/jumbo v0, "insert-address-token"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    const-string/jumbo v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    .end local v6    # "addr":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1409
    :cond_1
    return-object v6

    .line 1406
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "colIndex":I
    :catchall_0
    move-exception v0

    .line 1407
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1406
    :cond_2
    throw v0
.end method

.method public static getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 17
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "threadId"    # I

    .prologue
    .line 1327
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "recipient_ids"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 1335
    .local v3, "RECIPIENT_ID_PROJECTION":[Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "canonical-addresses"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 1337
    .local v16, "sAllCanonical":Landroid/net/Uri;
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "simple"

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1338
    .local v2, "sAllThreadsUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1339
    .local v11, "cr":Landroid/database/Cursor;
    const-string/jumbo v13, ""

    .line 1340
    .local v13, "recipientAddress":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1341
    .local v14, "recipientIds":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1342
    .local v4, "whereClause":Ljava/lang/String;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "whereClause is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1345
    .local v11, "cr":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1347
    .local v14, "recipientIds":Ljava/lang/String;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cursor.getCount(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "recipientIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1348
    const-string/jumbo v6, "selection: "

    .line 1347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    .end local v14    # "recipientIds":Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_2

    .line 1352
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1353
    const/4 v11, 0x0

    .line 1356
    .end local v11    # "cr":Landroid/database/Cursor;
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recipientIds with spaces: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_3
    if-eqz v14, :cond_b

    .line 1358
    const/4 v15, 0x0

    .line 1359
    .local v15, "recipients":[Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1360
    const-string/jumbo v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1361
    .local v15, "recipients":[Ljava/lang/String;
    const/4 v1, 0x0

    array-length v5, v15

    :goto_0
    if-ge v1, v5, :cond_6

    aget-object v12, v15, v1

    .line 1362
    .local v12, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1364
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1350
    .end local v12    # "id":Ljava/lang/String;
    .end local v15    # "recipients":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1351
    if-eqz v11, :cond_5

    .line 1352
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1353
    const/4 v11, 0x0

    .line 1350
    :cond_5
    throw v1

    .line 1366
    .restart local v15    # "recipients":[Ljava/lang/String;
    :cond_6
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "whereClause is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_7
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object v8, v4

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1369
    .restart local v11    # "cr":Landroid/database/Cursor;
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1372
    :cond_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1374
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1375
    const-string/jumbo v5, "address"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1374
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1376
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_8

    .line 1379
    :cond_a
    if-eqz v11, :cond_b

    .line 1380
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1384
    .end local v11    # "cr":Landroid/database/Cursor;
    .end local v15    # "recipients":[Ljava/lang/String;
    :cond_b
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Final recipientAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_c
    return-object v13

    .line 1378
    .restart local v15    # "recipients":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 1379
    if-eqz v11, :cond_d

    .line 1380
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1378
    :cond_d
    throw v1
.end method

.method public static getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x1

    .line 1295
    const/4 v8, 0x0

    .line 1297
    .local v8, "name":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    return-object v8

    .line 1301
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1302
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1301
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1304
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v9

    .line 1305
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "in_visible_group=1"

    .line 1306
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "display_name ASC"

    .line 1307
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1309
    .local v6, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1310
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1311
    const-string/jumbo v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1312
    .local v7, "colIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_1

    .line 1313
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1314
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1318
    .end local v7    # "colIndex":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_2
    return-object v8

    .line 1317
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1318
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1317
    :cond_3
    throw v0
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "threadId"    # I

    .prologue
    .line 3275
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3276
    const-string/jumbo v0, "DELETED"

    return-object v0

    .line 3278
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3290
    const-string/jumbo v0, ""

    return-object v0

    .line 3280
    :pswitch_0
    const-string/jumbo v0, "INBOX"

    return-object v0

    .line 3282
    :pswitch_1
    const-string/jumbo v0, "SENT"

    return-object v0

    .line 3284
    :pswitch_2
    const-string/jumbo v0, "DRAFT"

    return-object v0

    .line 3288
    :pswitch_3
    const-string/jumbo v0, "OUTBOX"

    return-object v0

    .line 3278
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

.method private getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 869
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, "toAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "ccAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "bccAddress":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    .line 875
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 876
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_2

    .line 877
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 878
    const/4 v4, 0x0

    .line 879
    .local v4, "i":I
    const/4 v3, 0x1

    .line 880
    .local v3, "first":Z
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 881
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 882
    :cond_0
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "email":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const/4 v3, 0x0

    .line 886
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 890
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 891
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    if-eqz v1, :cond_7

    .line 895
    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 896
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_6

    .line 897
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 898
    const/4 v4, 0x0

    .line 899
    .restart local v4    # "i":I
    const/4 v3, 0x1

    .line 900
    .restart local v3    # "first":Z
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_6

    .line 901
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 902
    :cond_4
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 903
    .restart local v2    # "email":Ljava/lang/String;
    if-nez v3, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/4 v3, 0x0

    .line 906
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 909
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 910
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    if-eqz v0, :cond_a

    .line 914
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 915
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_a

    .line 916
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 917
    const/4 v4, 0x0

    .line 918
    .restart local v4    # "i":I
    const/4 v3, 0x1

    .line 919
    .restart local v3    # "first":Z
    :goto_2
    array-length v8, v7

    if-ge v4, v8, :cond_a

    .line 920
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 921
    :cond_8
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 922
    .restart local v2    # "email":Ljava/lang/String;
    if-nez v3, :cond_9

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_9
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const/4 v3, 0x0

    .line 925
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 929
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 802
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "toAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "ccAddress":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "bccAddress":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    .line 808
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 809
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_2

    .line 810
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 811
    const/4 v3, 0x0

    .line 812
    .local v3, "i":I
    const/4 v2, 0x1

    .line 813
    .local v2, "first":Z
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 814
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 815
    :cond_0
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const/4 v2, 0x0

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 824
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    if-eqz v1, :cond_7

    .line 828
    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 829
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_6

    .line 830
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 831
    const/4 v3, 0x0

    .line 832
    .restart local v3    # "i":I
    const/4 v2, 0x1

    .line 833
    .restart local v2    # "first":Z
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_6

    .line 834
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 835
    :cond_4
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 836
    .restart local v4    # "name":Ljava/lang/String;
    if-nez v2, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const/4 v2, 0x0

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 842
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 843
    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    if-eqz v0, :cond_a

    .line 847
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 848
    .restart local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-eqz v8, :cond_a

    .line 849
    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 850
    const/4 v3, 0x0

    .line 851
    .restart local v3    # "i":I
    const/4 v2, 0x1

    .line 852
    .restart local v2    # "first":Z
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_a

    .line 853
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BluetoothMapContent"

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

    .line 854
    :cond_8
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 855
    .restart local v4    # "name":Ljava/lang/String;
    if-nez v2, :cond_9

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const/4 v2, 0x0

    .line 858
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 862
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 11
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1195
    const-string/jumbo v9, ""

    .line 1196
    .local v9, "text":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v3, "selection":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/part"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v10, "uriStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uriAddress":Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 1200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1203
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1205
    :cond_0
    const-string/jumbo v0, "ct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1206
    .local v7, "ct":Ljava/lang/String;
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    const-string/jumbo v0, "text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1208
    .local v8, "part":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1212
    .end local v8    # "part":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    .end local v7    # "ct":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1218
    :cond_3
    return-object v9

    .line 1214
    :catchall_0
    move-exception v0

    .line 1215
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1214
    :cond_4
    throw v0
.end method

.method private getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const/4 v4, 0x2

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getType: for filterMsgType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_5

    .line 729
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getType: phoneType for SMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    if-ne v1, v4, :cond_4

    .line 731
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 742
    .end local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapContent"

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

    .line 744
    :cond_3
    return-object v0

    .line 733
    .restart local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_4
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_0

    .line 735
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 736
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_0

    .line 737
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v4, :cond_7

    .line 738
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_0

    .line 739
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_7
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 740
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_0
.end method

.method private imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2012
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 2014
    .local v0, "msgType":I
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imSelected msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2017
    return v5

    .line 2019
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    .line 2020
    return v5

    .line 2022
    :cond_1
    return v4
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1577
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    const/4 v0, 0x1

    return v0

    .line 1580
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1558
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1560
    const-string/jumbo v2, "*"

    const-string/jumbo v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_0

    .line 1563
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1573
    :goto_0
    return v1

    .line 1564
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1565
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 1567
    .end local v1    # "res":Z
    :cond_1
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchOriginator: Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v1, 0x0

    .local v1, "res":Z
    goto :goto_0

    .line 1571
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 1498
    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1499
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x89

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 1500
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1501
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1502
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchOriginatorMms: match originator phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    const/4 v4, 0x1

    .line 1516
    .local v4, "res":Z
    :goto_0
    return v4

    .line 1505
    .end local v4    # "res":Z
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1507
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchOriginatorMms: match originator name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1510
    .end local v4    # "res":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1514
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 1521
    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1522
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 1523
    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1524
    .local v2, "phone":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1525
    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1526
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchOriginatorSms: match originator phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    const/4 v3, 0x1

    .line 1553
    .local v3, "res":Z
    :goto_0
    return v3

    .line 1529
    .end local v3    # "res":Z
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1531
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchOriginatorSms: match originator name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1534
    .end local v3    # "res":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1538
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1541
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_5
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 1542
    .restart local v2    # "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 1543
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1544
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchOriginatorSms: match originator phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1546
    .end local v3    # "res":Z
    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1547
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchOriginatorSms: match originator name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_8
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1550
    .end local v3    # "res":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1478
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "recip":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1480
    const-string/jumbo v2, "*"

    const-string/jumbo v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_0

    .line 1483
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1493
    :goto_0
    return v1

    .line 1484
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1485
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 1487
    .end local v1    # "res":Z
    :cond_1
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchRecipient: Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v1, 0x0

    .local v1, "res":Z
    goto :goto_0

    .line 1491
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 1418
    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1419
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 1420
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1421
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1422
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchRecipientMms: match recipient phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_0
    const/4 v4, 0x1

    .line 1436
    .local v4, "res":Z
    :goto_0
    return v4

    .line 1425
    .end local v4    # "res":Z
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1427
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchRecipientMms: match recipient name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1430
    .end local v4    # "res":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1434
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 1441
    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1442
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 1443
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 1444
    .local v2, "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 1445
    .local v1, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1446
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchRecipientSms: match recipient phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    const/4 v3, 0x1

    .line 1473
    .end local v1    # "name":Ljava/lang/String;
    .local v3, "res":Z
    :goto_0
    return v3

    .line 1448
    .end local v3    # "res":Z
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1449
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchRecipientSms: match recipient name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1452
    .end local v3    # "res":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1455
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_4
    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1456
    .restart local v2    # "phone":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 1457
    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1458
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchRecipientSms: match recipient phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_5
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1461
    .end local v3    # "res":Z
    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1462
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1463
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchRecipientSms: match recipient name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_7
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1466
    .end local v3    # "res":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1470
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0
.end method

.method private mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1970
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1972
    .local v0, "msgType":I
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mmsSelected msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1975
    return v5

    .line 1977
    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 1978
    return v5

    .line 1980
    :cond_1
    return v4
.end method

.method private populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 14
    .param p1, "ele"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .param p2, "tmpCursor"    # Landroid/database/Cursor;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 3043
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3045
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v10

    long-to-int v3, v10

    .line 3046
    .local v3, "parameterMask":I
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3049
    .local v6, "threadId":J
    const-wide/16 v10, 0x2

    invoke-virtual {p1, v10, v11, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3051
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 3052
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    .line 3055
    :cond_0
    const/4 v4, 0x0

    .line 3056
    .local v4, "reportRead":Z
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_1

    .line 3057
    const/4 v4, 0x1

    .line 3059
    :cond_1
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v10, v5, :cond_f

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1, v5, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 3061
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3062
    .local v8, "timestamp":J
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_10

    .line 3063
    invoke-virtual {p1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 3070
    :goto_1
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_2

    .line 3071
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 3073
    :cond_2
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_3

    .line 3074
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    .line 3078
    :cond_3
    and-int/lit8 v5, v3, 0x20

    if-eqz v5, :cond_e

    .line 3080
    :cond_4
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 3081
    .local v2, "c":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_5

    .line 3082
    new-instance v5, Lcom/android/bluetooth/SignedLongLong;

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    .line 3084
    :cond_5
    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_6

    .line 3085
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    .line 3087
    :cond_6
    and-int/lit16 v5, v3, 0x1000

    if-eqz v5, :cond_7

    .line 3088
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    .line 3090
    :cond_7
    and-int/lit16 v5, v3, 0x2000

    if-eqz v5, :cond_8

    .line 3091
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    .line 3093
    :cond_8
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_9

    .line 3094
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPriority(I)V

    .line 3096
    :cond_9
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_a

    .line 3097
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    .line 3099
    :cond_a
    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_b

    .line 3100
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    .line 3102
    :cond_b
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_c

    .line 3103
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 3105
    :cond_c
    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_d

    .line 3106
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    .line 3108
    :cond_d
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    .line 3109
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3110
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-eqz v5, :cond_4

    .line 3042
    .end local v2    # "c":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    :cond_e
    return-void

    .line 3059
    .end local v8    # "timestamp":J
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3066
    .restart local v8    # "timestamp":J
    :cond_10
    const-wide/16 v10, -0x1

    invoke-virtual {p1, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    goto/16 :goto_1
.end method

.method private populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V
    .locals 18
    .param p1, "ele"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .param p2, "smsMmsCursor"    # Landroid/database/Cursor;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "contacts"    # Lcom/android/bluetooth/map/SmsMmsContacts;

    .prologue
    .line 2981
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2983
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v4

    long-to-int v12, v4

    .line 2988
    .local v12, "parameterMask":I
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2987
    const-wide/16 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 2990
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2991
    const/4 v13, 0x1

    .line 2992
    .local v13, "read":Z
    :goto_0
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    .line 2993
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 2998
    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_7

    .line 2999
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3000
    .local v16, "timeStamp":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 3006
    .end local v16    # "timeStamp":J
    :goto_2
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_0

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 3010
    :cond_0
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1

    .line 3011
    const-string/jumbo v4, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    .line 3014
    :cond_1
    and-int/lit8 v4, v12, 0x10

    if-eqz v4, :cond_3

    .line 3015
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3016
    .local v14, "summary":Ljava/lang/String;
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3017
    .local v10, "cs":Ljava/lang/String;
    if-eqz v14, :cond_2

    if-eqz v10, :cond_2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3023
    :cond_2
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    .line 3026
    .end local v10    # "cs":Ljava/lang/String;
    .end local v14    # "summary":Ljava/lang/String;
    :cond_3
    and-int/lit8 v4, v12, 0x20

    if-eqz v4, :cond_4

    .line 3027
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3030
    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3031
    .local v7, "idsStr":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    .line 2980
    .end local v7    # "idsStr":Ljava/lang/String;
    :cond_4
    return-void

    .line 2991
    .end local v13    # "read":Z
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "read":Z
    goto :goto_0

    .line 2995
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    goto :goto_1

    .line 3003
    :cond_7
    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    goto :goto_2

    .line 3020
    .restart local v10    # "cs":Ljava/lang/String;
    .restart local v14    # "summary":Ljava/lang/String;
    :cond_8
    :try_start_0
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v15, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "summary":Ljava/lang/String;
    .local v15, "summary":Ljava/lang/String;
    move-object v14, v15

    .end local v15    # "summary":Ljava/lang/String;
    .restart local v14    # "summary":Ljava/lang/String;
    goto :goto_3

    .line 3021
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_3
.end method

.method private readRawDataPart(Landroid/net/Uri;J)[B
    .locals 12
    .param p1, "contentPartUri"    # Landroid/net/Uri;
    .param p2, "partid"    # J

    .prologue
    .line 3503
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

    .line 3504
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 3505
    .local v7, "uriAddress":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 3506
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3507
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    .line 3508
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 3509
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 3512
    .local v6, "retVal":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3513
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 3514
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 3515
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3518
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 3520
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v9, "BluetoothMapContent"

    const-string/jumbo v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3522
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3523
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3525
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "retVal":[B
    :goto_1
    return-object v6

    .line 3517
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

    .line 3522
    .local v6, "retVal":[B
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3523
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 3521
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    .local v6, "retVal":[B
    :catchall_0
    move-exception v9

    .line 3522
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3523
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3521
    throw v9
.end method

.method private setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 593
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, "size":I
    const/4 v1, 0x0

    .line 596
    .local v1, "attachmentMimeTypes":Ljava/lang/String;
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 597
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 598
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 599
    if-gtz v2, :cond_0

    .line 603
    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in message database, size reported as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    const-string/jumbo v5, " Changing size to 1"

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x1

    .line 629
    .end local v1    # "attachmentMimeTypes":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAttachmentSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 630
    const-string/jumbo v5, "setAttachmentMimeTypes: "

    .line 629
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    .line 633
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 634
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/32 v6, 0x400000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 635
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentMimeTypes(Ljava/lang/String;)V

    .line 592
    .end local v2    # "size":I
    :cond_2
    return-void

    .line 609
    .restart local v1    # "attachmentMimeTypes":Ljava/lang/String;
    .restart local v2    # "size":I
    :cond_3
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 610
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 611
    .local v0, "attachment":I
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 612
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    .line 613
    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in message database, attachment size reported as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 614
    const-string/jumbo v5, " Changing size to 1"

    .line 613
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 619
    .end local v0    # "attachment":I
    :cond_4
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 620
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 621
    .restart local v0    # "attachment":I
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 622
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    .line 623
    const/4 v2, 0x1

    .line 626
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "attachmentMimeTypes":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private setConvoRead(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "setread":Ljava/lang/String;
    const/4 v0, 0x0

    .line 554
    .local v0, "read":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 557
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

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

    .line 558
    :cond_0
    if-ne v0, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 551
    return-void

    :cond_1
    move v2, v4

    .line 558
    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "selection"    # Ljava/lang/StringBuilder;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;",
            "Lcom/android/bluetooth/map/BluetoothMapAppParams;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v6, -0x1

    .line 1895
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1898
    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1899
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1900
    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    :cond_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1903
    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    :cond_2
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 1909
    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1910
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v4

    .line 1909
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1912
    :cond_3
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 1913
    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1914
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v4

    .line 1913
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1918
    :cond_4
    const-wide/16 v0, -0x1

    .line 1919
    .local v0, "convoId":J
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1920
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    .line 1922
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 1923
    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1924
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    .end local v0    # "convoId":J
    :cond_6
    return-void
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1155
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1156
    const-wide/16 v0, 0x0

    .line 1157
    .local v0, "date":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_2

    .line 1158
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1174
    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    .line 1154
    .end local v0    # "date":J
    :cond_1
    return-void

    .line 1159
    .restart local v0    # "date":J
    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1162
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    goto :goto_0

    .line 1170
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1171
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1172
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 679
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 680
    const-string/jumbo v0, "delivered"

    .line 682
    .local v0, "deliveryStatus":Ljava/lang/String;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 683
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 684
    :cond_0
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeliveryStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDeliveryStatus(Ljava/lang/String;)V

    .line 678
    .end local v0    # "deliveryStatus":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 4
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 2027
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2028
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 2030
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 2031
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 2032
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phone type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2033
    const-string/jumbo v3, " phone num = "

    .line 2032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2033
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 2032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2034
    const-string/jumbo v3, " phone alpha tag = "

    .line 2032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2034
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 2032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    return-void
.end method

.method private setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 748
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "folderType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 751
    .local v0, "folderId":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_8

    .line 752
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 753
    if-ne v0, v6, :cond_3

    .line 754
    const-string/jumbo v1, "INBOX"

    .line 792
    .end local v1    # "folderType":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

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

    .line 793
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setFolderType(Ljava/lang/String;)V

    .line 747
    .end local v0    # "folderId":I
    :cond_2
    return-void

    .line 755
    .restart local v0    # "folderId":I
    .restart local v1    # "folderType":Ljava/lang/String;
    :cond_3
    if-ne v0, v7, :cond_4

    .line 756
    const-string/jumbo v1, "SENT"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 757
    .local v1, "folderType":Ljava/lang/String;
    :cond_4
    if-ne v0, v8, :cond_5

    .line 758
    const-string/jumbo v1, "DRAFT"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 759
    .local v1, "folderType":Ljava/lang/String;
    :cond_5
    if-eq v0, v9, :cond_6

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 760
    :cond_6
    const-string/jumbo v1, "OUTBOX"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 759
    .local v1, "folderType":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    .line 762
    const-string/jumbo v1, "DELETED"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 763
    .local v1, "folderType":Ljava/lang/String;
    :cond_8
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v6, :cond_d

    .line 764
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 765
    if-ne v0, v6, :cond_9

    .line 766
    const-string/jumbo v1, "INBOX"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 767
    .local v1, "folderType":Ljava/lang/String;
    :cond_9
    if-ne v0, v7, :cond_a

    .line 768
    const-string/jumbo v1, "SENT"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 769
    .local v1, "folderType":Ljava/lang/String;
    :cond_a
    if-ne v0, v8, :cond_b

    .line 770
    const-string/jumbo v1, "DRAFT"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 771
    .local v1, "folderType":Ljava/lang/String;
    :cond_b
    if-ne v0, v9, :cond_c

    .line 772
    const-string/jumbo v1, "OUTBOX"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 774
    .local v1, "folderType":Ljava/lang/String;
    :cond_c
    const-string/jumbo v1, "DELETED"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 775
    .local v1, "folderType":Ljava/lang/String;
    :cond_d
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v7, :cond_0

    .line 777
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v8, :cond_0

    .line 778
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 779
    int-to-long v2, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 780
    const-string/jumbo v1, "INBOX"

    .local v1, "folderType":Ljava/lang/String;
    goto :goto_0

    .line 781
    .local v1, "folderType":Ljava/lang/String;
    :cond_e
    int-to-long v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 782
    const-string/jumbo v1, "SENT"

    .local v1, "folderType":Ljava/lang/String;
    goto/16 :goto_0

    .line 783
    .local v1, "folderType":Ljava/lang/String;
    :cond_f
    int-to-long v2, v0

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 784
    const-string/jumbo v1, "DRAFT"

    .local v1, "folderType":Ljava/lang/String;
    goto/16 :goto_0

    .line 785
    .local v1, "folderType":Ljava/lang/String;
    :cond_10
    int-to-long v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 786
    const-string/jumbo v1, "OUTBOX"

    .local v1, "folderType":Ljava/lang/String;
    goto/16 :goto_0

    .line 787
    .local v1, "folderType":Ljava/lang/String;
    :cond_11
    int-to-long v2, v0

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 788
    const-string/jumbo v1, "DELETED"

    .local v1, "folderType":Ljava/lang/String;
    goto/16 :goto_0

    .line 790
    .local v1, "folderType":Ljava/lang/String;
    :cond_12
    const-string/jumbo v1, "OTHER"

    .local v1, "folderType":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1255
    const-wide/16 v0, -0x1

    .line 1256
    .local v0, "handle":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_2

    .line 1257
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1264
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

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

    .line 1265
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(J)V

    .line 1254
    return-void

    .line 1258
    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1259
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 1260
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1261
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1262
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1181
    const-wide/16 v0, 0x0

    .line 1182
    .local v0, "date":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eqz v2, :cond_0

    .line 1183
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1184
    :cond_0
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1189
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 1190
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDateTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_2
    return-void

    .line 1185
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1186
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1187
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v8, 0x1

    .line 563
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x800

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 564
    const-string/jumbo v2, "no"

    .line 565
    .local v2, "priority":Ljava/lang/String;
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 566
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 567
    :cond_0
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 568
    .local v0, "highPriority":I
    if-ne v0, v8, :cond_1

    .line 569
    const-string/jumbo v2, "yes"

    .line 572
    .end local v0    # "highPriority":I
    :cond_1
    const/4 v1, 0x0

    .line 573
    .local v1, "pri":I
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v3, v8, :cond_2

    .line 574
    const-string/jumbo v3, "pri"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 576
    :cond_2
    const/16 v3, 0x82

    if-ne v1, v3, :cond_3

    .line 577
    const-string/jumbo v2, "yes"

    .line 579
    :cond_3
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPriority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    .line 562
    .end local v1    # "pri":I
    .end local v2    # "priority":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 464
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 465
    const-string/jumbo v1, "no"

    .line 466
    .local v1, "protect":Ljava/lang/String;
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 467
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 468
    :cond_0
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 469
    .local v0, "flagProtected":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 470
    const-string/jumbo v1, "yes"

    .line 473
    .end local v0    # "flagProtected":I
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProtected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    .line 463
    .end local v1    # "protect":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "read":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_2

    .line 538
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 545
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 547
    .local v1, "setread":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

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

    .line 548
    :cond_1
    if-ne v0, v3, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(ZZ)V

    .line 535
    return-void

    .line 539
    .end local v1    # "setread":Ljava/lang/String;
    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v3, :cond_3

    .line 540
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 541
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    .line 542
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 543
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .restart local v1    # "setread":Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 548
    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 670
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 671
    const-string/jumbo v0, "complete"

    .line 672
    .local v0, "status":Ljava/lang/String;
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContent"

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

    .line 673
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    .line 669
    .end local v0    # "status":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v10, 0x1

    .line 934
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "address":Ljava/lang/String;
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v6, :cond_5

    .line 937
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 938
    .local v1, "msgType":I
    if-ne v1, v10, :cond_4

    .line 939
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 943
    .local v0, "address":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 945
    const-string/jumbo v6, "thread_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 946
    .local v4, "threadIdInd":I
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 947
    .local v5, "threadIdStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 948
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "threadId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " adress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "msgType":I
    .end local v4    # "threadIdInd":I
    .end local v5    # "threadIdStr":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRecipientAddressing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1
    if-nez v0, :cond_2

    .line 959
    const-string/jumbo v0, ""

    .line 960
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    .line 933
    :cond_3
    return-void

    .line 941
    .local v0, "address":Ljava/lang/String;
    .restart local v1    # "msgType":I
    :cond_4
    const-string/jumbo v6, "address"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 950
    .end local v1    # "msgType":I
    .local v0, "address":Ljava/lang/String;
    :cond_5
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v6, v10, :cond_6

    .line 951
    const-string/jumbo v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 952
    .local v2, "id":J
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v7, 0x97

    invoke-static {v6, v2, v3, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_1

    .line 953
    .end local v2    # "id":J
    .local v0, "address":Ljava/lang/String;
    :cond_6
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 955
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_1
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v10, 0x1

    .line 966
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x10

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 967
    const/4 v3, 0x0

    .line 968
    .local v3, "name":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v5, :cond_6

    .line 969
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 970
    .local v2, "msgType":I
    if-eq v2, v10, :cond_5

    .line 971
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "phone":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 991
    .end local v2    # "msgType":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "phone":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRecipientName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_1
    if-nez v3, :cond_2

    .line 993
    const-string/jumbo v3, ""

    .line 994
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    .line 965
    :cond_3
    return-void

    .line 973
    .restart local v2    # "msgType":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "phone":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    goto :goto_0

    .line 975
    .end local v4    # "phone":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :cond_5
    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .local v3, "name":Ljava/lang/String;
    goto :goto_0

    .line 977
    .end local v2    # "msgType":I
    .local v3, "name":Ljava/lang/String;
    :cond_6
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v5, v10, :cond_8

    .line 978
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 980
    .local v0, "id":J
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 981
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v4

    .line 985
    .restart local v4    # "phone":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 986
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    goto :goto_0

    .line 983
    .end local v4    # "phone":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "phone":Ljava/lang/String;
    goto :goto_1

    .line 987
    .end local v0    # "id":J
    .end local v4    # "phone":Ljava/lang/String;
    :cond_8
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 989
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 23
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1000
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 1001
    const-string/jumbo v8, ""

    .line 1003
    .local v8, "address":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_8

    .line 1004
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1005
    .local v18, "msgType":I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 1006
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1010
    .local v21, "tempAddress":Ljava/lang/String;
    :goto_0
    if-nez v21, :cond_5

    .line 1075
    .end local v18    # "msgType":I
    .end local v21    # "tempAddress":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSenderAddressing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_1
    if-nez v8, :cond_2

    .line 1077
    const-string/jumbo v8, ""

    .line 1078
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;)V

    .line 999
    .end local v8    # "address":Ljava/lang/String;
    :cond_3
    return-void

    .line 1008
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v18    # "msgType":I
    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    move-object/from16 v21, v0

    .restart local v21    # "tempAddress":Ljava/lang/String;
    goto :goto_0

    .line 1014
    :cond_5
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1020
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    const-string/jumbo v4, "[0-9]*[a-zA-Z]+[0-9]*"

    .line 1020
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1023
    .local v9, "alpha":Ljava/lang/Boolean;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_7

    .line 1024
    :cond_6
    :goto_2
    move-object/from16 v8, v21

    goto :goto_1

    .line 1023
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1027
    .end local v9    # "alpha":Ljava/lang/Boolean;
    .end local v18    # "msgType":I
    .end local v21    # "tempAddress":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 1028
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1029
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v21

    .line 1030
    .restart local v21    # "tempAddress":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1031
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 1032
    :cond_9
    move-object/from16 v8, v21

    goto/16 :goto_1

    .line 1034
    .end local v16    # "id":J
    .end local v21    # "tempAddress":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 1036
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1037
    .local v20, "nameEmail":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v22

    .line 1038
    .local v22, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v22

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1039
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Originator count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v15, 0x0

    .line 1041
    .local v15, "i":I
    const/4 v14, 0x1

    .line 1042
    .local v14, "first":Z
    :goto_3
    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v15, v2, :cond_0

    .line 1043
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SenderAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v22, v15

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_b
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 1045
    .local v13, "emails":[Ljava/lang/String;
    aget-object v2, v22, v15

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v13, v4

    .line 1046
    aget-object v2, v22, v15

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1047
    .local v19, "name":Ljava/lang/String;
    if-nez v14, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1048
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1049
    const/4 v14, 0x0

    .line 1050
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1053
    .end local v13    # "emails":[Ljava/lang/String;
    .end local v14    # "first":Z
    .end local v15    # "i":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "nameEmail":Ljava/lang/String;
    .end local v22    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_d
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 1055
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1058
    .local v10, "contact_id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ConvoContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1059
    .local v3, "contactsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 1060
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convo_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1062
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1059
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1065
    .local v12, "contacts":Landroid/database/Cursor;
    if-eqz v12, :cond_e

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1068
    const-string/jumbo v2, "x_bt_uci"

    .line 1067
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1066
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1071
    :cond_e
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1070
    :catchall_0
    move-exception v2

    .line 1071
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_f
    throw v2
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 22
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1084
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 1085
    const-string/jumbo v17, ""

    .line 1086
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_6

    .line 1087
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1088
    .local v16, "msgType":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 1089
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1090
    .local v20, "phone":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1143
    .end local v16    # "msgType":I
    .end local v20    # "phone":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSenderName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_1
    if-nez v17, :cond_2

    .line 1145
    const-string/jumbo v17, ""

    .line 1146
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    .line 1083
    .end local v17    # "name":Ljava/lang/String;
    :cond_3
    return-void

    .line 1091
    .restart local v16    # "msgType":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v20    # "phone":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 1093
    .end local v20    # "phone":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    .line 1095
    .end local v16    # "msgType":I
    :cond_6
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 1096
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1098
    .local v14, "id":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v14, v15, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v20

    .line 1103
    .restart local v20    # "phone":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 1101
    .end local v20    # "phone":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "phone":Ljava/lang/String;
    goto :goto_1

    .line 1105
    .end local v14    # "id":J
    .end local v20    # "phone":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    .line 1107
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1108
    .local v18, "nameEmail":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v21

    .line 1109
    .local v21, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v21

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1110
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Originator count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v13, 0x0

    .line 1112
    .local v13, "i":I
    const/4 v12, 0x1

    .line 1113
    .local v12, "first":Z
    :goto_2
    move-object/from16 v0, v21

    array-length v2, v0

    if-ge v13, v2, :cond_0

    .line 1114
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "senderName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v21, v13

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_9
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 1116
    .local v11, "emails":[Ljava/lang/String;
    aget-object v2, v21, v13

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v11, v4

    .line 1117
    aget-object v2, v21, v13

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1118
    .local v19, "nameIn":Ljava/lang/String;
    if-nez v12, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1119
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1120
    const/4 v12, 0x0

    .line 1121
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1124
    .end local v11    # "emails":[Ljava/lang/String;
    .end local v12    # "first":Z
    .end local v13    # "i":I
    .end local v18    # "nameEmail":Ljava/lang/String;
    .end local v19    # "nameIn":Ljava/lang/String;
    .end local v21    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 1126
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1127
    .local v8, "contact_id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ConvoContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1128
    .local v3, "contactsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 1129
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convo_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1131
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1128
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1134
    .local v10, "contacts":Landroid/database/Cursor;
    if-eqz v10, :cond_c

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1137
    const-string/jumbo v2, "name"

    .line 1136
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1135
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1140
    :cond_c
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1139
    :catchall_0
    move-exception v2

    .line 1140
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1139
    :cond_d
    throw v2
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 7
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v6, 0x2

    .line 513
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "msgType":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_3

    .line 516
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 523
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 524
    .local v1, "sent":Ljava/lang/String;
    if-ne v0, v6, :cond_6

    .line 525
    const-string/jumbo v1, "yes"

    .line 529
    .local v1, "sent":Ljava/lang/String;
    :goto_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

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

    .line 530
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    .line 512
    .end local v0    # "msgType":I
    .end local v1    # "sent":Ljava/lang/String;
    :cond_2
    return-void

    .line 517
    .restart local v0    # "msgType":I
    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 518
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 519
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v6, :cond_5

    .line 520
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 521
    :cond_5
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 527
    .local v1, "sent":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "no"

    .local v1, "sent":Ljava/lang/String;
    goto :goto_1
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 693
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "size":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_4

    .line 696
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 712
    .end local v1    # "subject":Ljava/lang/String;
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 716
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in message database, size reported as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 717
    const-string/jumbo v4, " Changing size to 1"

    .line 716
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v0, 0x1

    .line 720
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    .line 692
    .end local v0    # "size":I
    :cond_3
    return-void

    .line 698
    .restart local v0    # "size":I
    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 699
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 701
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 702
    .restart local v1    # "subject":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 704
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 706
    :cond_6
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 708
    .end local v1    # "subject":Ljava/lang/String;
    :cond_7
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 709
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 710
    :cond_8
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v8, 0x0

    .line 1223
    const-string/jumbo v3, ""

    .line 1224
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    .line 1225
    .local v2, "subLength":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1226
    const/16 v2, 0x100

    .line 1228
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "64:D4:BD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1229
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 1230
    :cond_1
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_6

    .line 1231
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1243
    :cond_2
    :goto_0
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_a

    .line 1244
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1248
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSubject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    .line 1222
    :cond_5
    return-void

    .line 1232
    :cond_6
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1233
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1234
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1236
    :cond_7
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1237
    .local v0, "id":J
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1239
    .end local v0    # "id":J
    :cond_8
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 1240
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1241
    :cond_9
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1245
    :cond_a
    if-nez v3, :cond_3

    .line 1246
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v10, 0x1

    .line 642
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 643
    const-string/jumbo v0, ""

    .line 644
    .local v0, "hasText":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v5, :cond_3

    .line 645
    const-string/jumbo v0, "yes"

    .line 663
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    .line 641
    .end local v0    # "hasText":Ljava/lang/String;
    :cond_2
    return-void

    .line 646
    .restart local v0    # "hasText":Ljava/lang/String;
    :cond_3
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v5, v10, :cond_6

    .line 647
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 648
    .local v4, "textOnly":I
    if-ne v4, v10, :cond_4

    .line 649
    const-string/jumbo v0, "yes"

    goto :goto_0

    .line 651
    :cond_4
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 652
    .local v2, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 654
    const-string/jumbo v0, "yes"

    goto :goto_0

    .line 656
    :cond_5
    const-string/jumbo v0, "no"

    goto :goto_0

    .line 659
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "textOnly":I
    :cond_6
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    .line 660
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 661
    :cond_7
    const-string/jumbo v0, "yes"

    goto :goto_0
.end method

.method private setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 480
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/32 v6, 0x40000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 481
    const-wide/16 v0, 0x0

    .line 482
    .local v0, "threadId":J
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 483
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v3, :cond_2

    .line 484
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 493
    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 494
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setThreadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "threadId":J
    .end local v2    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1
    return-void

    .line 485
    .restart local v0    # "threadId":J
    .restart local v2    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_2
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 486
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 487
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 488
    :cond_3
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 489
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 490
    :cond_4
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 491
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 501
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 502
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 503
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "threadName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadName(Ljava/lang/String;)V

    .line 505
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadName: "

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

    .line 499
    .end local v0    # "threadName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .param p1, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "incoming"    # Z

    .prologue
    .line 3319
    const/4 v14, 0x0

    .local v14, "contactId":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3320
    .local v15, "contactName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3322
    .local v21, "phoneNumbers":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3323
    return-object v15

    .line 3329
    :cond_0
    const/4 v1, 0x0

    aput-object p2, v21, v1

    .line 3330
    const/16 v17, 0x0

    .line 3334
    .local v17, "emailAddresses":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 3335
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3333
    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3337
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "display_name"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 3338
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v4, "in_visible_group=1"

    .line 3339
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v6, "_id ASC"

    .line 3342
    .local v6, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3344
    .local v20, "p":Landroid/database/Cursor;
    if-eqz v20, :cond_1

    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3345
    const-string/jumbo v1, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3346
    .local v14, "contactId":Ljava/lang/String;
    const-string/jumbo v1, "display_name"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 3349
    .end local v14    # "contactId":Ljava/lang/String;
    .end local v15    # "contactName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3352
    if-eqz v14, :cond_8

    .line 3353
    const/16 v22, 0x0

    .line 3356
    .local v22, "q":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 3357
    const-string/jumbo v10, "contact_id = ?"

    .line 3358
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v11, v1

    .line 3356
    const/4 v9, 0x0

    .line 3359
    const/4 v12, 0x0

    .line 3356
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 3360
    .local v22, "q":Landroid/database/Cursor;
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3361
    const/16 v18, 0x0

    .line 3362
    .local v18, "i":I
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v11, "emailAddresses":[Ljava/lang/String;
    move/from16 v19, v18

    .line 3365
    .end local v17    # "emailAddresses":[Ljava/lang/String;
    .end local v18    # "i":I
    .local v19, "i":I
    :goto_0
    :try_start_2
    const-string/jumbo v1, "data1"

    .line 3364
    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3366
    .local v16, "emailAddress":Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    aput-object v16, v11, v19

    .line 3367
    if-eqz v22, :cond_3

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v19, v18

    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_0

    .line 3348
    .end local v11    # "emailAddresses":[Ljava/lang/String;
    .end local v16    # "emailAddress":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v22    # "q":Landroid/database/Cursor;
    .restart local v15    # "contactName":Ljava/lang/String;
    .restart local v17    # "emailAddresses":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 3349
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3348
    throw v1

    .end local v15    # "contactName":Ljava/lang/String;
    .restart local v22    # "q":Landroid/database/Cursor;
    :cond_2
    move-object/from16 v11, v17

    .line 3370
    .end local v17    # "emailAddresses":[Ljava/lang/String;
    .restart local v11    # "emailAddresses":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3374
    .end local v22    # "q":Landroid/database/Cursor;
    :goto_2
    if-eqz p3, :cond_5

    .line 3375
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding originator for phone:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v9, v15

    move-object/from16 v10, v21

    invoke-virtual/range {v7 .. v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3383
    :goto_3
    return-object v15

    .line 3369
    .end local v11    # "emailAddresses":[Ljava/lang/String;
    .restart local v17    # "emailAddresses":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object/from16 v11, v17

    .line 3370
    .end local v17    # "emailAddresses":[Ljava/lang/String;
    .restart local v11    # "emailAddresses":[Ljava/lang/String;
    :goto_4
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3369
    throw v1

    .line 3379
    :cond_5
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding recipient for phone:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v9, v15

    move-object/from16 v10, v21

    invoke-virtual/range {v7 .. v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 3369
    .restart local v22    # "q":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    goto :goto_4

    .end local v11    # "emailAddresses":[Ljava/lang/String;
    .restart local v17    # "emailAddresses":[Ljava/lang/String;
    :cond_7
    move-object/from16 v11, v17

    .restart local v11    # "emailAddresses":[Ljava/lang/String;
    goto :goto_1

    .end local v11    # "emailAddresses":[Ljava/lang/String;
    .end local v22    # "q":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v11, v17

    .restart local v11    # "emailAddresses":[Ljava/lang/String;
    goto :goto_2
.end method

.method private setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1865
    const-string/jumbo v1, ""

    .line 1866
    .local v1, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1868
    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    .local v0, "msgHandleWhere":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1874
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1878
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1882
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1887
    :goto_0
    return-object v1

    .line 1884
    :cond_2
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

.method private setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1646
    const-string/jumbo v0, ""

    .line 1647
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    const-string/jumbo v0, "1=1"

    .line 1660
    :cond_0
    :goto_0
    return-object v0

    .line 1650
    :cond_1
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    .line 1651
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1652
    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1653
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1654
    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1655
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeEmail(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1656
    :cond_4
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1657
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeIm(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeEmail(J)Ljava/lang/String;
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 1623
    const-string/jumbo v0, ""

    .line 1624
    .local v0, "where":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "folder_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1630
    return-object v0

    .line 1627
    :cond_0
    const-string/jumbo v1, "BluetoothMapContent"

    const-string/jumbo v2, "setWhereFilterFolderTypeEmail: not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid folder ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setWhereFilterFolderTypeIm(J)Ljava/lang/String;
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 1634
    const-string/jumbo v0, ""

    .line 1635
    .local v0, "where":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "folder_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1641
    return-object v0

    .line 1638
    :cond_0
    const-string/jumbo v1, "BluetoothMapContent"

    const-string/jumbo v2, "setWhereFilterFolderTypeIm: not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid folder ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1606
    const-string/jumbo v0, ""

    .line 1607
    .local v0, "where":Ljava/lang/String;
    const-string/jumbo v1, "INBOX"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    const-string/jumbo v0, "msg_box = 1 AND thread_id <> -1"

    .line 1619
    :cond_0
    :goto_0
    return-object v0

    .line 1609
    :cond_1
    const-string/jumbo v1, "OUTBOX"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1610
    const-string/jumbo v0, "msg_box = 4 AND thread_id <> -1"

    goto :goto_0

    .line 1611
    :cond_2
    const-string/jumbo v1, "SENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1612
    const-string/jumbo v0, "msg_box = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1613
    :cond_3
    const-string/jumbo v1, "DRAFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1614
    const-string/jumbo v0, "msg_box = 3 AND thread_id <> -1"

    goto :goto_0

    .line 1615
    :cond_4
    const-string/jumbo v1, "DELETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    const-string/jumbo v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1588
    const-string/jumbo v0, ""

    .line 1589
    .local v0, "where":Ljava/lang/String;
    const-string/jumbo v1, "INBOX"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1590
    const-string/jumbo v0, "type = 1 AND thread_id <> -1"

    .line 1602
    :cond_0
    :goto_0
    return-object v0

    .line 1591
    :cond_1
    const-string/jumbo v1, "OUTBOX"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1592
    const-string/jumbo v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    .line 1594
    :cond_2
    const-string/jumbo v1, "SENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1595
    const-string/jumbo v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1596
    :cond_3
    const-string/jumbo v1, "DRAFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1597
    const-string/jumbo v0, "type = 3 AND thread_id <> -1"

    goto :goto_0

    .line 1598
    :cond_4
    const-string/jumbo v1, "DELETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    const-string/jumbo v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterLastActivity(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1724
    const-string/jumbo v0, ""

    .line 1725
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    .line 1726
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    .line 1737
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_5

    .line 1738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1746
    :cond_1
    :goto_1
    return-object v0

    .line 1728
    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_3

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1730
    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_4

    .line 1731
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_0

    .line 1732
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND last_thread_activity >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1733
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    .line 1732
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1739
    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_6

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1741
    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_7

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_1

    .line 1742
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND last_thread_activity < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1743
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    .line 1742
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1821
    const-string/jumbo v3, ""

    .line 1822
    .local v3, "where":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 1823
    .local v0, "id":J
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandleString()Ljava/lang/String;

    move-result-object v2

    .line 1824
    .local v2, "msgHandle":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1825
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    .line 1826
    const-string/jumbo v4, "BluetoothMapContent"

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

    .line 1828
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 1829
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_2

    .line 1830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1838
    :cond_1
    :goto_0
    return-object v3

    .line 1831
    :cond_2
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1833
    :cond_3
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1834
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1835
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1751
    const-string/jumbo v1, ""

    .line 1752
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 1755
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1756
    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND from_list LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1758
    const-string/jumbo v3, "%\'"

    .line 1757
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1760
    :cond_0
    return-object v1
.end method

.method private setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1764
    const-string/jumbo v1, ""

    .line 1765
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1769
    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND from_list LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1771
    const-string/jumbo v3, "%\'"

    .line 1770
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    :cond_0
    return-object v1
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1696
    const-string/jumbo v0, ""

    .line 1698
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    .line 1699
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    .line 1711
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_5

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1721
    :cond_1
    :goto_1
    return-object v0

    .line 1701
    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_3

    .line 1702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1703
    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_4

    .line 1704
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_0

    .line 1705
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1706
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    .line 1705
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1713
    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_6

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1715
    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_7

    .line 1716
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_1

    .line 1717
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1718
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    .line 1717
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1777
    const-string/jumbo v1, ""

    .line 1778
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    .line 1780
    .local v0, "pri":I
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v4, :cond_0

    .line 1782
    if-ne v0, v5, :cond_3

    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND pri<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1785
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    :cond_0
    :goto_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v5, :cond_1

    .line 1792
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1794
    :cond_1
    if-ne v0, v5, :cond_4

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND high_priority!=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1802
    :cond_2
    :goto_1
    return-object v1

    .line 1786
    :cond_3
    if-ne v0, v4, :cond_0

    .line 1787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1788
    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1787
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1797
    :cond_4
    if-ne v0, v4, :cond_2

    .line 1798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND high_priority=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1664
    const-string/jumbo v0, ""

    .line 1665
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1666
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    .line 1667
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1668
    const-string/jumbo v0, " AND read= 0"

    .line 1671
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1672
    const-string/jumbo v0, " AND read= 1"

    .line 1692
    :cond_1
    :goto_0
    return-object v0

    .line 1674
    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1675
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 1676
    const-string/jumbo v0, " AND read= 0"

    .line 1679
    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1680
    const-string/jumbo v0, " AND read= 1"

    goto :goto_0

    .line 1682
    :cond_4
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1683
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1684
    :cond_5
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 1685
    const-string/jumbo v0, " AND flag_read= 0"

    .line 1687
    :cond_6
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1688
    const-string/jumbo v0, " AND flag_read= 1"

    goto :goto_0
.end method

.method private setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1806
    const-string/jumbo v1, ""

    .line 1807
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "recip":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1811
    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND (to_list LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1813
    const-string/jumbo v3, "%\' OR "

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1814
    const-string/jumbo v3, "cc_list"

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1814
    const-string/jumbo v3, " LIKE \'%"

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1814
    const-string/jumbo v3, "%\' OR "

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1815
    const-string/jumbo v3, "bcc_list"

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1815
    const-string/jumbo v3, " LIKE \'%"

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1815
    const-string/jumbo v3, "%\' )"

    .line 1812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1817
    :cond_0
    return-object v1
.end method

.method private setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1842
    const-string/jumbo v3, ""

    .line 1843
    .local v3, "where":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 1844
    .local v0, "id":J
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoIdString()Ljava/lang/String;

    move-result-object v2

    .line 1845
    .local v2, "msgHandle":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1846
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1847
    const-string/jumbo v4, "BluetoothMapContent"

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

    .line 1849
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1850
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_2

    .line 1851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1860
    :cond_1
    :goto_0
    return-object v3

    .line 1852
    :cond_2
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1854
    :cond_3
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1855
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1856
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 7
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1939
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1940
    .local v0, "msgType":I
    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 1942
    .local v1, "phoneType":I
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smsSelected msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1945
    return v5

    .line 1947
    :cond_0
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_1

    .line 1949
    return v5

    .line 1951
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    .line 1952
    if-ne v1, v5, :cond_2

    .line 1953
    return v5

    .line 1955
    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    .line 1956
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1957
    return v5

    .line 1959
    :cond_3
    return v6
.end method

.method private updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ele"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .prologue
    .line 2928
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v2

    .line 2929
    .local v2, "id":J
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 2930
    .local v1, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const/4 v6, 0x0

    .line 2931
    .local v6, "listChangeDetected":Z
    const/4 v0, 0x0

    .line 2932
    .local v0, "convoChanged":Z
    if-nez v1, :cond_1

    .line 2934
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BluetoothMapContent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Added new conversation with ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .end local v1    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 2936
    .restart local v1    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const-wide/16 v10, 0x2

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 2937
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    const/4 v6, 0x1

    .line 2939
    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 2941
    :cond_1
    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2942
    .local v7, "name":Ljava/lang/String;
    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2943
    .local v4, "last_activity":J
    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 2944
    const/4 v8, 0x1

    .line 2946
    .local v8, "read":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-eqz v9, :cond_2

    .line 2947
    const/4 v0, 0x1

    .line 2948
    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 2951
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v9

    if-eq v8, v9, :cond_3

    .line 2952
    const/4 v0, 0x1

    .line 2953
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 2956
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2961
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 2962
    const/4 v6, 0x1

    .line 2963
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "BluetoothMapContent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conversation with ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " changed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_5
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    .line 2966
    :cond_6
    if-eqz v6, :cond_7

    .line 2967
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 2969
    :cond_7
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v10

    invoke-virtual {p3, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 2927
    return-void

    .line 2944
    .end local v8    # "read":Z
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "read":Z
    goto :goto_0

    .line 2957
    :cond_9
    const/4 v0, 0x1

    .line 2958
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "ele"    # Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .prologue
    .line 2883
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v2

    .line 2884
    .local v2, "id":J
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 2885
    .local v1, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const/4 v6, 0x0

    .line 2886
    .local v6, "listChangeDetected":Z
    const/4 v0, 0x0

    .line 2887
    .local v0, "convoChanged":Z
    if-nez v1, :cond_0

    .line 2889
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .end local v1    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 2890
    .restart local v1    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    const-wide/16 v8, 0x1

    invoke-virtual {v1, v8, v9, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 2892
    const/4 v6, 0x1

    .line 2893
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 2895
    :cond_0
    sget v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2896
    .local v4, "last_activity":J
    sget v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 2897
    const/4 v7, 0x1

    .line 2899
    .local v7, "read":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-eqz v8, :cond_1

    .line 2900
    const/4 v0, 0x1

    .line 2901
    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 2904
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2905
    const/4 v0, 0x1

    .line 2906
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 2909
    :cond_2
    if-eqz v0, :cond_3

    .line 2910
    const/4 v6, 0x1

    .line 2911
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    .line 2913
    :cond_3
    if-eqz v6, :cond_4

    .line 2914
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V

    .line 2916
    :cond_4
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 2882
    return-void

    .line 2897
    .end local v7    # "read":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "read":Z
    goto :goto_0
.end method


# virtual methods
.method public convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .locals 45
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "sizeOnly"    # Z

    .prologue
    .line 2456
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "convoListing:  messageType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    new-instance v21, Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    invoke-direct/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;-><init>()V

    .line 2461
    .local v21, "convoList":Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v8

    const-wide/16 v18, -0x1

    cmp-long v6, v8, v18

    if-eqz v6, :cond_0

    .line 2462
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-nez v6, :cond_1

    .line 2463
    :cond_0
    const-wide/16 v8, 0xe1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    .line 2464
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "convoListing(): appParameterMask is zero or not present, changing to default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2465
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v18

    .line 2464
    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_1
    new-instance v25, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2486
    .local v25, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2487
    const/16 v38, 0x0

    .line 2488
    .local v38, "smsMmsCursor":Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 2490
    .local v26, "imEmailCursor":Landroid/database/Cursor;
    if-eqz p2, :cond_e

    .line 2491
    const/16 v33, 0x0

    .line 2496
    .local v33, "offsetNum":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    not-int v6, v6

    and-int/lit8 v32, v6, 0x1f

    .line 2498
    .local v32, "msgTypesInclude":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    add-int v31, v6, v8

    .line 2502
    .local v31, "maxThreads":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2503
    :cond_2
    const-string/jumbo v28, ""

    .line 2504
    .local v28, "limit":Ljava/lang/String;
    if-nez p2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 2505
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2507
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2509
    :cond_3
    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "date DESC"

    move-object/from16 v0, v39

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2510
    .local v39, "sortOrder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_4

    .line 2511
    and-int/lit8 v6, v32, -0x4

    or-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_4

    .line 2514
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 2516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2517
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS Limit => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const/16 v33, 0x0

    .line 2520
    :cond_4
    new-instance v36, Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    move-object/from16 v0, v36

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2521
    .local v36, "selection":Ljava/lang/StringBuilder;
    new-instance v37, Ljava/util/ArrayList;

    const/16 v6, 0xc

    move-object/from16 v0, v37

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2522
    .local v37, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "1=1 "

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2524
    const/4 v10, 0x0

    .line 2525
    .local v10, "args":[Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 2526
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v10, v6, [Ljava/lang/String;

    .line 2527
    .local v10, "args":[Ljava/lang/String;
    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2529
    .end local v10    # "args":[Ljava/lang/String;
    :cond_5
    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2530
    const-string/jumbo v8, "simple"

    const-string/jumbo v9, "true"

    .line 2529
    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 2531
    .local v7, "uri":Landroid/net/Uri;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Query using selection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2533
    const-string/jumbo v9, " - sortOrder: "

    .line 2532
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2533
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2532
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2536
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2535
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 2537
    .local v38, "smsMmsCursor":Landroid/database/Cursor;
    if-eqz v38, :cond_7

    .line 2539
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2540
    const-string/jumbo v9, " sms/mms conversations."

    .line 2539
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const/4 v12, 0x0

    .line 2542
    .local v12, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const/4 v6, -0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2543
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    .line 2544
    const/16 v22, 0x0

    .line 2546
    .end local v12    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v22, "count":I
    :cond_6
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2547
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v12

    .line 2548
    .local v12, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 2549
    add-int/lit8 v22, v22, 0x1

    .line 2550
    if-nez p2, :cond_6

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    .line 2578
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v22    # "count":I
    .end local v28    # "limit":Ljava/lang/String;
    .end local v36    # "selection":Ljava/lang/StringBuilder;
    .end local v37    # "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "smsMmsCursor":Landroid/database/Cursor;
    .end local v39    # "sortOrder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2579
    :cond_8
    const/16 v22, 0x0

    .line 2580
    .restart local v22    # "count":I
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2581
    const/4 v6, 0x2

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2585
    :cond_9
    :goto_2
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msgType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "Conversation"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2588
    .local v16, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 2589
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "URI with parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2592
    sget-object v17, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 2593
    const-string/jumbo v20, "last_thread_activity DESC, thread_id ASC"

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 2591
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 2596
    .local v26, "imEmailCursor":Landroid/database/Cursor;
    if-eqz v26, :cond_15

    .line 2597
    const/16 v23, 0x0

    .line 2600
    .local v23, "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-virtual/range {v25 .. v26}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    .line 2601
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    .line 2602
    .local v27, "isValid":Z
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    const-string/jumbo v9, " EMAIL/IM conversations. isValid = "

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    .end local v23    # "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    :cond_b
    if-eqz v27, :cond_15

    if-nez p2, :cond_c

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    .line 2605
    :cond_c
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2607
    .local v40, "threadId":J
    add-int/lit8 v22, v22, 0x1

    .line 2608
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v23

    .line 2609
    .local v23, "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 2612
    :goto_3
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 2613
    .local v34, "nextThreadId":J
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_d

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  threadId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " newThreadId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_d
    cmp-long v6, v34, v40

    if-nez v6, :cond_b

    .line 2618
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_14

    const/16 v27, 0x1

    .line 2617
    :goto_4
    if-eqz v27, :cond_b

    goto :goto_3

    .line 2493
    .end local v16    # "contentUri":Landroid/net/Uri;
    .end local v22    # "count":I
    .end local v23    # "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v27    # "isValid":Z
    .end local v31    # "maxThreads":I
    .end local v32    # "msgTypesInclude":I
    .end local v33    # "offsetNum":I
    .end local v34    # "nextThreadId":J
    .end local v40    # "threadId":J
    .local v26, "imEmailCursor":Landroid/database/Cursor;
    .local v38, "smsMmsCursor":Landroid/database/Cursor;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v33

    .restart local v33    # "offsetNum":I
    goto/16 :goto_0

    .line 2556
    .restart local v7    # "uri":Landroid/net/Uri;
    .local v12, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v28    # "limit":Ljava/lang/String;
    .restart local v31    # "maxThreads":I
    .restart local v32    # "msgTypesInclude":I
    .restart local v36    # "selection":Ljava/lang/StringBuilder;
    .restart local v37    # "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v38, "smsMmsCursor":Landroid/database/Cursor;
    .restart local v39    # "sortOrder":Ljava/lang/StringBuilder;
    :cond_f
    :try_start_1
    new-instance v13, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct {v13}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    .line 2557
    .end local v12    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v13, "contacts":Lcom/android/bluetooth/map/SmsMmsContacts;
    :cond_10
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2559
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v12

    .line 2561
    .local v12, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    sget v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    move-object/from16 v0, v38

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2567
    .local v14, "idsStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, p0

    move-object/from16 v16, p1

    .line 2566
    invoke-direct/range {v11 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2568
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 2569
    if-nez p2, :cond_10

    if-gtz v31, :cond_10

    goto/16 :goto_1

    .line 2582
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v13    # "contacts":Lcom/android/bluetooth/map/SmsMmsContacts;
    .end local v14    # "idsStr":Ljava/lang/String;
    .end local v28    # "limit":Ljava/lang/String;
    .end local v36    # "selection":Ljava/lang/StringBuilder;
    .end local v37    # "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "smsMmsCursor":Landroid/database/Cursor;
    .end local v39    # "sortOrder":Ljava/lang/StringBuilder;
    .restart local v22    # "count":I
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2583
    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2678
    .end local v22    # "count":I
    .end local v26    # "imEmailCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    .line 2679
    if-eqz v26, :cond_12

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_12
    if-eqz v38, :cond_13

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_13
    const-string/jumbo v8, "BluetoothMapContent"

    const-string/jumbo v9, "conversation end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    throw v6

    .line 2618
    .restart local v16    # "contentUri":Landroid/net/Uri;
    .restart local v22    # "count":I
    .restart local v23    # "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v26, "imEmailCursor":Landroid/database/Cursor;
    .restart local v27    # "isValid":Z
    .restart local v34    # "nextThreadId":J
    .restart local v40    # "threadId":J
    :cond_14
    const/16 v27, 0x0

    goto :goto_4

    .line 2623
    .end local v16    # "contentUri":Landroid/net/Uri;
    .end local v22    # "count":I
    .end local v23    # "e":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v26    # "imEmailCursor":Landroid/database/Cursor;
    .end local v27    # "isValid":Z
    .end local v34    # "nextThreadId":J
    .end local v40    # "threadId":J
    :cond_15
    :try_start_2
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Done adding conversations - list size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2624
    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v9

    .line 2623
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2628
    if-eqz p2, :cond_18

    .line 2679
    if-eqz v26, :cond_16

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_16
    if-eqz v38, :cond_17

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_17
    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "conversation end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    return-object v21

    .line 2634
    :cond_18
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->sort()V

    .line 2635
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->segment(II)V

    .line 2636
    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getList()Ljava/util/List;

    move-result-object v29

    .line 2637
    .local v29, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v30

    .line 2638
    .local v30, "listSize":I
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_19

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "List Size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_19
    const/16 v42, 0x0

    .line 2640
    .local v42, "tmpCursor":Landroid/database/Cursor;
    new-instance v13, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct {v13}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    .line 2641
    .restart local v13    # "contacts":Lcom/android/bluetooth/map/SmsMmsContacts;
    const/16 v44, 0x0

    .end local v42    # "tmpCursor":Landroid/database/Cursor;
    .local v44, "x":I
    :goto_5
    move/from16 v0, v44

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 2642
    move-object/from16 v0, v29

    move/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 2643
    .local v24, "ele":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v43

    .line 2644
    .local v43, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContent;->-getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v6

    invoke-virtual/range {v43 .. v43}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 2664
    const/16 v42, 0x0

    .line 2668
    :goto_6
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Working on cursor of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    if-eqz v42, :cond_1b

    .line 2671
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v42

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2641
    :goto_7
    add-int/lit8 v44, v44, 0x1

    goto :goto_5

    .line 2648
    :pswitch_0
    const/16 v42, 0x0

    .line 2649
    .restart local v42    # "tmpCursor":Landroid/database/Cursor;
    if-eqz v38, :cond_1a

    .line 2650
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V

    .line 2652
    :cond_1a
    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_6

    .line 2656
    .end local v42    # "tmpCursor":Landroid/database/Cursor;
    :pswitch_1
    move-object/from16 v42, v26

    .line 2657
    .local v42, "tmpCursor":Landroid/database/Cursor;
    const/4 v6, 0x2

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_6

    .line 2660
    .end local v42    # "tmpCursor":Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v42, v26

    .line 2661
    .restart local v42    # "tmpCursor":Landroid/database/Cursor;
    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_6

    .line 2674
    .end local v42    # "tmpCursor":Landroid/database/Cursor;
    :cond_1b
    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "tmpCursor is Null - something is wrong - or the message is of type SMS/MMS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 2679
    .end local v24    # "ele":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v43    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1c
    if-eqz v26, :cond_1d

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_1d
    if-eqz v38, :cond_1e

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_1e
    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "conversation end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    return-object v21

    .line 2644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 35
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "currentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 3746
    if-eqz p3, :cond_0

    .line 3747
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TYPE_MESSAGE (GET): Attachment = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3748
    const-string/jumbo v8, ", Charset = "

    .line 3747
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3748
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    .line 3747
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3749
    const-string/jumbo v8, ", FractionRequest = "

    .line 3747
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3749
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v8

    .line 3747
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    if-nez v4, :cond_1

    .line 3755
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL charset not UTF-8"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3757
    :cond_1
    new-instance v30, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-direct/range {v30 .. v30}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    .line 3758
    .local v30, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "Message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3759
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

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

    .line 3760
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3759
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3762
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_19

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_19

    .line 3765
    const/16 v28, 0x0

    .line 3766
    .local v28, "is":Ljava/io/FileInputStream;
    const/16 v21, 0x0

    .line 3769
    .local v21, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v23

    .line 3770
    .local v23, "fractionRequest":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    .line 3772
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_2

    .line 3773
    if-nez v23, :cond_5

    const-string/jumbo v26, "FIRST"

    .line 3774
    .local v26, "fractionStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEmailMessage - FractionRequest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3775
    const-string/jumbo v8, " - send compete message"

    .line 3774
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    .end local v26    # "fractionStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "reception_state"

    .line 3778
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3780
    const-string/jumbo v6, "complete"

    .line 3778
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3782
    const-string/jumbo v4, "BluetoothMapContent"

    const-string/jumbo v6, "getEmailMessage - receptionState not COMPLETE -  Not Implemented!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    :cond_3
    const-string/jumbo v4, "flag_read"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3786
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 3788
    .local v32, "read":Ljava/lang/String;
    if-eqz v32, :cond_6

    const-string/jumbo v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3789
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V

    .line 3794
    :goto_1
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setVersionString(Ljava/lang/String;)V

    .line 3798
    const-string/jumbo v4, "folder_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3797
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 3799
    .local v24, "folderId":J
    move-object/from16 v0, p4

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v22

    .line 3800
    .local v22, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-virtual/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setCompleteFolder(Ljava/lang/String;)V

    .line 3804
    const-string/jumbo v4, "to_list"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3803
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 3805
    .local v31, "nameEmail":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v33

    .line 3806
    .local v33, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v33

    array-length v4, v0

    if-eqz v4, :cond_9

    .line 3807
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Recipient count= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    const/16 v27, 0x0

    .line 3809
    .local v27, "i":I
    :goto_2
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_9

    .line 3810
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Recipient = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v33, v27

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    :cond_4
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    .line 3812
    .local v10, "emails":[Ljava/lang/String;
    aget-object v4, v33, v27

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v10, v6

    .line 3813
    aget-object v4, v33, v27

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3814
    .local v7, "name":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v30

    move-object v8, v7

    invoke-virtual/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3815
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 3773
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "emails":[Ljava/lang/String;
    .end local v22    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v24    # "folderId":J
    .end local v27    # "i":I
    .end local v31    # "nameEmail":Ljava/lang/String;
    .end local v32    # "read":Ljava/lang/String;
    .end local v33    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string/jumbo v26, "NEXT"

    .restart local v26    # "fractionStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 3791
    .end local v26    # "fractionStr":Ljava/lang/String;
    .restart local v32    # "read":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3834
    .end local v23    # "fractionRequest":I
    .end local v32    # "read":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 3835
    if-eqz v15, :cond_7

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3834
    :cond_7
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3874
    .end local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v28    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    .line 3875
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3874
    :cond_8
    throw v4

    .line 3820
    .restart local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v23    # "fractionRequest":I
    .restart local v24    # "folderId":J
    .restart local v28    # "is":Ljava/io/FileInputStream;
    .restart local v31    # "nameEmail":Ljava/lang/String;
    .restart local v32    # "read":Ljava/lang/String;
    .restart local v33    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_9
    :try_start_3
    const-string/jumbo v4, "from_list"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 3821
    invoke-static/range {v31 .. v31}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v33

    .line 3822
    move-object/from16 v0, v33

    array-length v4, v0

    if-eqz v4, :cond_b

    .line 3823
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Originator count= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    const/16 v27, 0x0

    .line 3825
    .restart local v27    # "i":I
    :goto_3
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_b

    .line 3826
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Originator = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v33, v27

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :cond_a
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    .line 3828
    .restart local v10    # "emails":[Ljava/lang/String;
    aget-object v4, v33, v27

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v10, v6

    .line 3829
    aget-object v4, v33, v27

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3830
    .restart local v7    # "name":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v30

    move-object v8, v7

    invoke-virtual/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3831
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 3835
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "emails":[Ljava/lang/String;
    .end local v27    # "i":I
    :cond_b
    if-eqz v15, :cond_c

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3838
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v4

    if-nez v4, :cond_11

    .line 3839
    const-string/jumbo v13, "/NO_ATTACHMENTS"

    .line 3840
    .local v13, "attStr":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v34

    .line 3843
    .local v34, "uri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 3845
    .local v16, "count":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "r"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    .line 3846
    .local v21, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v29, Ljava/io/FileInputStream;

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3847
    .end local v28    # "is":Ljava/io/FileInputStream;
    .local v29, "is":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3848
    .local v20, "email":Ljava/lang/StringBuilder;
    const/16 v4, 0x400

    new-array v14, v4, [B

    .line 3849
    .local v14, "buffer":[B
    :cond_d
    :goto_5
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    .line 3851
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-direct {v4, v14, v6, v0}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Email part = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3853
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v14, v9, v0}, Ljava/lang/String;-><init>([BII)V

    .line 3852
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3854
    const-string/jumbo v8, " count="

    .line 3852
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 3858
    .end local v14    # "buffer":[B
    .end local v20    # "email":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v28, v29

    .line 3859
    .end local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "is":Ljava/io/FileInputStream;
    :goto_6
    :try_start_7
    const-string/jumbo v4, "BluetoothMapContent"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3866
    if-eqz v28, :cond_e

    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3869
    :cond_e
    :goto_7
    if-eqz v21, :cond_f

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3872
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    :cond_f
    :goto_8
    :try_start_a
    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->encode()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v4

    .line 3875
    if-eqz v15, :cond_10

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3872
    :cond_10
    return-object v4

    .line 3839
    .end local v13    # "attStr":Ljava/lang/String;
    .end local v16    # "count":I
    .end local v34    # "uri":Landroid/net/Uri;
    .local v21, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v28    # "is":Ljava/io/FileInputStream;
    :cond_11
    :try_start_b
    const-string/jumbo v13, ""
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .restart local v13    # "attStr":Ljava/lang/String;
    goto/16 :goto_4

    .line 3857
    .end local v28    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "buffer":[B
    .restart local v16    # "count":I
    .restart local v20    # "email":Ljava/lang/StringBuilder;
    .local v21, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "is":Ljava/io/FileInputStream;
    .restart local v34    # "uri":Landroid/net/Uri;
    :cond_12
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setEmailBody(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 3866
    if-eqz v29, :cond_13

    :try_start_d
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3869
    :cond_13
    :goto_9
    if-eqz v21, :cond_14

    :try_start_e
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_14
    :goto_a
    move-object/from16 v28, v29

    .end local v29    # "is":Ljava/io/FileInputStream;
    .local v28, "is":Ljava/io/FileInputStream;
    goto :goto_8

    .line 3867
    .end local v28    # "is":Ljava/io/FileInputStream;
    .restart local v29    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v18

    .local v18, "e":Ljava/io/IOException;
    goto :goto_9

    .line 3870
    .end local v18    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 3862
    .end local v14    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v20    # "email":Ljava/lang/StringBuilder;
    .end local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "is":Ljava/io/FileInputStream;
    .local v28, "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v18

    .line 3863
    .end local v28    # "is":Ljava/io/FileInputStream;
    .restart local v18    # "e":Ljava/io/IOException;
    :goto_b
    :try_start_f
    const-string/jumbo v4, "BluetoothMapContent"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 3866
    if-eqz v28, :cond_15

    :try_start_10
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3869
    :cond_15
    :goto_c
    if-eqz v21, :cond_f

    :try_start_11
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    .line 3870
    :catch_4
    move-exception v18

    goto :goto_8

    .line 3867
    :catch_5
    move-exception v18

    goto :goto_c

    .line 3860
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v28    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v19

    .line 3861
    .end local v28    # "is":Ljava/io/FileInputStream;
    .local v19, "e":Ljava/lang/NullPointerException;
    :goto_d
    :try_start_12
    const-string/jumbo v4, "BluetoothMapContent"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3866
    if-eqz v28, :cond_16

    :try_start_13
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3869
    :cond_16
    :goto_e
    if-eqz v21, :cond_f

    :try_start_14
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_8

    .line 3870
    :catch_7
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 3867
    .end local v18    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_e

    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "e":Ljava/lang/NullPointerException;
    .restart local v17    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 3870
    .end local v18    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 3864
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    .line 3866
    :goto_f
    if-eqz v28, :cond_17

    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3869
    :cond_17
    :goto_10
    if-eqz v21, :cond_18

    :try_start_16
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 3864
    :cond_18
    :goto_11
    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 3867
    :catch_b
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 3870
    .end local v18    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 3875
    .end local v13    # "attStr":Ljava/lang/String;
    .end local v16    # "count":I
    .end local v18    # "e":Ljava/io/IOException;
    .end local v22    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v23    # "fractionRequest":I
    .end local v24    # "folderId":J
    .end local v31    # "nameEmail":Ljava/lang/String;
    .end local v32    # "read":Ljava/lang/String;
    .end local v33    # "tokens":[Landroid/text/util/Rfc822Token;
    .end local v34    # "uri":Landroid/net/Uri;
    :cond_19
    if-eqz v15, :cond_1a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3877
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL handle not found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3864
    .restart local v13    # "attStr":Ljava/lang/String;
    .restart local v16    # "count":I
    .restart local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v23    # "fractionRequest":I
    .restart local v24    # "folderId":J
    .restart local v29    # "is":Ljava/io/FileInputStream;
    .restart local v31    # "nameEmail":Ljava/lang/String;
    .restart local v32    # "read":Ljava/lang/String;
    .restart local v33    # "tokens":[Landroid/text/util/Rfc822Token;
    .restart local v34    # "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v4

    move-object/from16 v28, v29

    .end local v29    # "is":Ljava/io/FileInputStream;
    .local v28, "is":Ljava/io/FileInputStream;
    goto :goto_f

    .line 3858
    .end local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v28, "is":Ljava/io/FileInputStream;
    :catch_d
    move-exception v17

    .restart local v17    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_6

    .line 3860
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .end local v28    # "is":Ljava/io/FileInputStream;
    .restart local v21    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "is":Ljava/io/FileInputStream;
    :catch_e
    move-exception v19

    .restart local v19    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v28, v29

    .end local v29    # "is":Ljava/io/FileInputStream;
    .local v28, "is":Ljava/io/FileInputStream;
    goto :goto_d

    .line 3862
    .end local v19    # "e":Ljava/lang/NullPointerException;
    .end local v28    # "is":Ljava/io/FileInputStream;
    .restart local v29    # "is":Ljava/io/FileInputStream;
    :catch_f
    move-exception v18

    .restart local v18    # "e":Ljava/io/IOException;
    move-object/from16 v28, v29

    .end local v29    # "is":Ljava/io/FileInputStream;
    .restart local v28    # "is":Ljava/io/FileInputStream;
    goto :goto_b
.end method

.method public getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 29
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 3902
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    if-nez v4, :cond_0

    .line 3903
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 3904
    const-string/jumbo v6, "IM charset native not allowed for IM - must be utf-8"

    .line 3903
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3906
    :cond_0
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 3907
    .local v20, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "Message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3908
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 3909
    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_ID = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3908
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3910
    .local v16, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 3912
    .local v17, "contacts":Landroid/database/Cursor;
    if-eqz v16, :cond_b

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3913
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    .line 3918
    const-string/jumbo v4, "flag_read"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 3919
    .local v22, "read":I
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_5

    .line 3920
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    .line 3925
    :goto_0
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 3927
    .local v24, "threadId":J
    const-string/jumbo v4, "folder_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 3928
    .local v18, "folderId":J
    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p4

    .line 3929
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setCompleteFolder(Ljava/lang/String;)V

    .line 3931
    const-string/jumbo v4, "subject"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3930
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    .line 3933
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3932
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    .line 3935
    const-string/jumbo v4, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3934
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    .line 3937
    const-string/jumbo v4, "attachment_size"

    .line 3936
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8

    .line 3937
    const/4 v4, 0x0

    .line 3936
    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 3939
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    .line 3949
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v21

    .line 3951
    .local v21, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    const-string/jumbo v4, "body"

    .line 3950
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3951
    const-string/jumbo v6, "UTF-8"

    .line 3950
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3952
    const-string/jumbo v4, "utf-8"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 3953
    const-string/jumbo v4, "0"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 3954
    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 3955
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    .line 3958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ConvoContact"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 3959
    .local v7, "contactsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 3960
    sget-object v8, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 3961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "convo_id = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3962
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3959
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 3964
    .local v17, "contacts":Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3966
    const-string/jumbo v4, "name"

    .line 3965
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3967
    .local v10, "name":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    .line 3969
    .local v13, "btUid":[Ljava/lang/String;
    const-string/jumbo v4, "x_bt_uid"

    .line 3968
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v13, v6

    .line 3971
    const-string/jumbo v4, "nickname"

    .line 3970
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3972
    .local v9, "nickname":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    .line 3973
    .local v14, "btUci":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    .line 3974
    .local v15, "btOwnUci":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v15, v6

    .line 3976
    const-string/jumbo v4, "x_bt_uci"

    .line 3975
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v14, v6

    .line 3977
    const-wide/16 v26, 0x2

    cmp-long v4, v18, v26

    if-eqz v4, :cond_1

    .line 3978
    const-wide/16 v26, 0x4

    cmp-long v4, v18, v26

    if-nez v4, :cond_a

    .line 3979
    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, v20

    invoke-virtual/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3980
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator([Ljava/lang/String;[Ljava/lang/String;)V

    .line 3988
    .end local v9    # "nickname":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "btUid":[Ljava/lang/String;
    .end local v14    # "btUci":[Ljava/lang/String;
    .end local v15    # "btOwnUci":[Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 3991
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3992
    :cond_3
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 3988
    :cond_4
    return-object v4

    .line 3922
    .end local v7    # "contactsUri":Landroid/net/Uri;
    .end local v18    # "folderId":J
    .end local v21    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v24    # "threadId":J
    .local v17, "contacts":Landroid/database/Cursor;
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3990
    .end local v17    # "contacts":Landroid/database/Cursor;
    .end local v22    # "read":I
    :catchall_0
    move-exception v4

    .line 3991
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3992
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 3990
    :cond_7
    throw v4

    .line 3937
    .restart local v17    # "contacts":Landroid/database/Cursor;
    .restart local v18    # "folderId":J
    .restart local v22    # "read":I
    .restart local v24    # "threadId":J
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 3939
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 3983
    .restart local v7    # "contactsUri":Landroid/net/Uri;
    .restart local v9    # "nickname":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "btUid":[Ljava/lang/String;
    .restart local v14    # "btUci":[Ljava/lang/String;
    .restart local v15    # "btOwnUci":[Ljava/lang/String;
    .local v17, "contacts":Landroid/database/Cursor;
    .restart local v21    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, v20

    :try_start_2
    invoke-virtual/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3984
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3991
    .end local v7    # "contactsUri":Landroid/net/Uri;
    .end local v9    # "nickname":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "btUid":[Ljava/lang/String;
    .end local v14    # "btUci":[Ljava/lang/String;
    .end local v15    # "btOwnUci":[Ljava/lang/String;
    .end local v18    # "folderId":J
    .end local v21    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v22    # "read":I
    .end local v24    # "threadId":J
    .local v17, "contacts":Landroid/database/Cursor;
    :cond_b
    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3995
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "IM handle not found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B
    .locals 5
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p4, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 3296
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    .line 3297
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    .line 3298
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    .line 3299
    .local v0, "id":J
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3300
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "FRACTION_REQUEST_NEXT does not make sence as we always return the full message."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3303
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContent;->-getcom_android_bluetooth_map_BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3314
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid message handle."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3306
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMessage(JI)[B

    move-result-object v3

    return-object v3

    .line 3308
    :pswitch_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v3

    return-object v3

    .line 3310
    :pswitch_2
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object v3

    return-object v3

    .line 3312
    :pswitch_3
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object v3

    return-object v3

    .line 3303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 11
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 3688
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v0

    if-nez v0, :cond_0

    .line 3689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MMS charset native not allowed for MMS - must be utf-8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3692
    :cond_0
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 3693
    .local v7, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3695
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3697
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3698
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    .line 3701
    const-string/jumbo v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3702
    .local v9, "read":Ljava/lang/String;
    const-string/jumbo v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3703
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    .line 3707
    :goto_0
    const-string/jumbo v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3708
    .local v8, "msgBox":I
    const-string/jumbo v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3709
    .local v10, "threadId":I
    invoke-direct {p0, v8, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setFolder(Ljava/lang/String;)V

    .line 3710
    const-string/jumbo v0, "sub"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    .line 3711
    const-string/jumbo v0, "m_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    .line 3712
    const-string/jumbo v0, "ct_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setContentType(Ljava/lang/String;)V

    .line 3713
    const-string/jumbo v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    .line 3714
    const-string/jumbo v0, "text_only"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 3715
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    .line 3720
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    .line 3723
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    .line 3726
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3729
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3726
    :cond_1
    return-object v0

    .line 3705
    .end local v8    # "msgBox":I
    .end local v10    # "threadId":I
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3728
    .end local v9    # "read":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 3729
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3728
    :cond_3
    throw v0

    .line 3714
    .restart local v8    # "msgBox":I
    .restart local v9    # "read":Ljava/lang/String;
    .restart local v10    # "threadId":I
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 3715
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 3729
    .end local v8    # "msgBox":I
    .end local v9    # "read":Ljava/lang/String;
    .end local v10    # "threadId":I
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3732
    :cond_7
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    .prologue
    .line 4009
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    return v0
.end method

.method public getSmsMessage(JI)[B
    .locals 19
    .param p1, "id"    # J
    .param p3, "charset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 3391
    const-wide/16 v14, -0x1

    .line 3393
    .local v14, "time":J
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 3394
    .local v9, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 3396
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

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

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3397
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3402
    if-eqz v8, :cond_b

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3404
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c.count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 3407
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3411
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setVersionString(Ljava/lang/String;)V

    .line 3412
    const-string/jumbo v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3413
    .local v12, "read":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3414
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    .line 3418
    :goto_1
    const-string/jumbo v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 3419
    .local v17, "type":I
    const-string/jumbo v2, "thread_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 3420
    .local v13, "threadId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    .line 3422
    const-string/jumbo v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3424
    .local v10, "msgBody":Ljava/lang/String;
    const-string/jumbo v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3425
    .local v11, "phone":Ljava/lang/String;
    if-nez v11, :cond_2

    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 3427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v11

    .line 3429
    :cond_2
    const-string/jumbo v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3430
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    .line 3431
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    .line 3435
    :goto_2
    if-nez p3, :cond_a

    .line 3436
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 3437
    invoke-static {v10, v11, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    .line 3444
    :goto_3
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3447
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3444
    :cond_3
    return-object v2

    .line 3398
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "SMS handle not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3408
    :cond_5
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3409
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3446
    :catchall_0
    move-exception v2

    .line 3447
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3446
    :cond_6
    throw v2

    .line 3416
    .restart local v12    # "read":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto/16 :goto_1

    .line 3433
    .restart local v10    # "msgBody":Ljava/lang/String;
    .restart local v11    # "phone":Ljava/lang/String;
    .restart local v13    # "threadId":I
    .restart local v17    # "type":I
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_2

    .line 3440
    :cond_9
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3442
    :cond_a
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3447
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_b
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3450
    :cond_c
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v2

    return-object v2
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4013
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 30
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 2046
    const-string/jumbo v4, "BluetoothMapContent"

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

    .line 2048
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 2052
    .local v10, "bmList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v28, -0x1

    cmp-long v4, v8, v28

    if-eqz v4, :cond_0

    .line 2053
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v28, 0x0

    cmp-long v4, v8, v28

    if-nez v4, :cond_1

    .line 2054
    :cond_0
    const-wide v8, 0xffffffffL

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 2055
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListing(): appParameterMask is zero or not present, changing to All Enabled by default: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2056
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    .line 2055
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "folderElement hasSmsMmsContent = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2059
    const-string/jumbo v8, " folderElement.hasEmailContent = "

    .line 2058
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2059
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v8

    .line 2058
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2060
    const-string/jumbo v8, " folderElement.hasImContent = "

    .line 2058
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2060
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v8

    .line 2058
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_2
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2064
    .local v16, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2065
    const/16 v23, 0x0

    .line 2066
    .local v23, "smsCursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 2067
    .local v21, "mmsCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 2068
    .local v15, "emailCursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 2069
    .local v17, "imCursor":Landroid/database/Cursor;
    const-string/jumbo v18, ""

    .line 2070
    .local v18, "limit":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v12

    .line 2071
    .local v12, "countNum":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v22

    .line 2072
    .local v22, "offsetNum":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 2073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2076
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2077
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0x1d

    if-eq v4, v6, :cond_4

    .line 2081
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0x1e

    if-ne v4, v6, :cond_5

    .line 2087
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " OFFSET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2088
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SMS Limit => "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/16 v22, 0x0

    .line 2091
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2092
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_c

    .line 2093
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2094
    .local v7, "where":Ljava/lang/String;
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

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

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2096
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "date DESC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    .line 2095
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2097
    .local v23, "smsCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_c

    .line 2098
    const/4 v13, 0x0

    .line 2100
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " sms messages."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setSmsColumns(Landroid/database/Cursor;)V

    .line 2102
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :cond_6
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2103
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2104
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_7

    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2105
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v13

    .line 2106
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v10, v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2263
    .end local v7    # "where":Ljava/lang/String;
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v15    # "emailCursor":Landroid/database/Cursor;
    .end local v17    # "imCursor":Landroid/database/Cursor;
    .end local v21    # "mmsCursor":Landroid/database/Cursor;
    .end local v23    # "smsCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 2264
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2265
    :cond_8
    if-eqz v23, :cond_9

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2266
    :cond_9
    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2267
    :cond_a
    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2263
    :cond_b
    throw v4

    .line 2113
    .restart local v15    # "emailCursor":Landroid/database/Cursor;
    .restart local v17    # "imCursor":Landroid/database/Cursor;
    .restart local v21    # "mmsCursor":Landroid/database/Cursor;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2114
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0x17

    if-ne v4, v6, :cond_d

    .line 2120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " OFFSET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2121
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MMS Limit => "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/16 v22, 0x0

    .line 2124
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2126
    .restart local v7    # "where":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2127
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

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

    .line 2128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2129
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "date DESC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    .line 2128
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2130
    .local v21, "mmsCursor":Landroid/database/Cursor;
    if-eqz v21, :cond_10

    .line 2131
    const/4 v13, 0x0

    .line 2133
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMmsColumns(Landroid/database/Cursor;)V

    .line 2134
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " mms messages."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :cond_e
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2136
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2137
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_f

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2138
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v13

    .line 2139
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v10, v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_1

    .line 2146
    .end local v7    # "where":Ljava/lang/String;
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v21    # "mmsCursor":Landroid/database/Cursor;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2147
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0x1b

    if-ne v4, v6, :cond_11

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " OFFSET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2154
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Email Limit => "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const/16 v22, 0x0

    .line 2157
    :cond_11
    const/4 v4, 0x2

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2160
    .restart local v7    # "where":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2161
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

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

    .line 2162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "Message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2163
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2164
    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "date DESC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2164
    const/4 v8, 0x0

    .line 2163
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2166
    .local v15, "emailCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_13

    .line 2167
    const/4 v13, 0x0

    .line 2169
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailMessageColumns(Landroid/database/Cursor;)V

    .line 2170
    const/4 v11, 0x0

    .line 2171
    .local v11, "cnt":I
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " email messages."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2173
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_12

    invoke-static {v15}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2174
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v13

    .line 2175
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v10, v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_2

    .line 2182
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v7    # "where":Ljava/lang/String;
    .end local v11    # "cnt":I
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v15    # "emailCursor":Landroid/database/Cursor;
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2183
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v4

    const/16 v6, 0xf

    if-ne v4, v6, :cond_14

    .line 2189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " OFFSET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2190
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IM Limit => "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/16 v22, 0x0

    .line 2193
    :cond_14
    const/4 v4, 0x3

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2195
    .restart local v7    # "where":Ljava/lang/String;
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

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

    .line 2197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "Message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2198
    .restart local v5    # "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2199
    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "date DESC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    .line 2198
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2201
    .local v17, "imCursor":Landroid/database/Cursor;
    if-eqz v17, :cond_16

    .line 2202
    const/4 v13, 0x0

    .line 2204
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setImMessageColumns(Landroid/database/Cursor;)V

    .line 2205
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " im messages."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2207
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_15

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2208
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v13

    .line 2209
    .local v13, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v10, v13}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_3

    .line 2215
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v7    # "where":Ljava/lang/String;
    .end local v13    # "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v17    # "imCursor":Landroid/database/Cursor;
    :cond_16
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 2216
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v4

    move/from16 v0, v22

    invoke-virtual {v10, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 2217
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getList()Ljava/util/List;

    move-result-object v19

    .line 2218
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    .line 2219
    .local v20, "listSize":I
    const/16 v24, 0x0

    .line 2220
    .local v24, "tmpCursor":Landroid/database/Cursor;
    const/16 v26, 0x0

    .end local v24    # "tmpCursor":Landroid/database/Cursor;
    .local v26, "x":I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    .line 2221
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 2225
    .local v14, "ele":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v25

    .line 2226
    .local v25, "tmpType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    if-eqz v23, :cond_1a

    .line 2227
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2226
    if-eqz v4, :cond_1a

    .line 2228
    :cond_17
    move-object/from16 v24, v23

    .line 2229
    .local v24, "tmpCursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2240
    .end local v24    # "tmpCursor":Landroid/database/Cursor;
    :cond_18
    :goto_5
    if-eqz v24, :cond_19

    .line 2241
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getCursorIndex()I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2242
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2243
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2244
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2245
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2246
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2247
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2248
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2249
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2250
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2251
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2252
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2253
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 v6, 0xa

    if-le v4, v6, :cond_19

    .line 2256
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2257
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2258
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2259
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2220
    :cond_19
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    .line 2230
    :cond_1a
    if-eqz v21, :cond_1b

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2231
    move-object/from16 v24, v21

    .line 2232
    .restart local v24    # "tmpCursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_5

    .line 2233
    .end local v24    # "tmpCursor":Landroid/database/Cursor;
    :cond_1b
    if-eqz v15, :cond_1c

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2234
    move-object/from16 v24, v15

    .line 2235
    .restart local v24    # "tmpCursor":Landroid/database/Cursor;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_5

    .line 2236
    .end local v24    # "tmpCursor":Landroid/database/Cursor;
    :cond_1c
    if-eqz v17, :cond_18

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2237
    move-object/from16 v24, v17

    .line 2238
    .restart local v24    # "tmpCursor":Landroid/database/Cursor;
    const/4 v4, 0x3

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 2264
    .end local v14    # "ele":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v24    # "tmpCursor":Landroid/database/Cursor;
    .end local v25    # "tmpType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1d
    if-eqz v15, :cond_1e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2265
    :cond_1e
    if-eqz v23, :cond_1f

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2266
    :cond_1f
    if-eqz v21, :cond_20

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2267
    :cond_20
    if-eqz v17, :cond_21

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2271
    :cond_21
    const-string/jumbo v4, "BluetoothMapContent"

    const-string/jumbo v6, "messagelisting end"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    return-object v10
.end method

.method public msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 12
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 2365
    const-string/jumbo v0, "BluetoothMapContent"

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

    .line 2366
    const/4 v7, 0x0

    .line 2369
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2370
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2372
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2373
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2374
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2375
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND read=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2377
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2378
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 2377
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2380
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2381
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2384
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2388
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2389
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2390
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2391
    .restart local v3    # "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND read=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2393
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2394
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 2393
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2396
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2397
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v7, v0

    .line 2400
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2405
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-eqz v0, :cond_5

    .line 2406
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2407
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2408
    .restart local v3    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND flag_read=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2412
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2413
    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 2412
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2415
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2416
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    add-int/2addr v7, v0

    .line 2419
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2424
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2425
    const/4 v0, 0x3

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2426
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2427
    .restart local v3    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND flag_read=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2431
    .restart local v1    # "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2432
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2433
    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 2431
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2435
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 2436
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    add-int/2addr v7, v0

    .line 2439
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2444
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_7
    const-string/jumbo v0, "BluetoothMapContent"

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

    .line 2445
    if-lez v7, :cond_c

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2383
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 2384
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2383
    :cond_8
    throw v0

    .line 2399
    :catchall_1
    move-exception v0

    .line 2400
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2399
    :cond_9
    throw v0

    .line 2418
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    .line 2419
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2418
    :cond_a
    throw v0

    .line 2438
    :catchall_3
    move-exception v0

    .line 2439
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2438
    :cond_b
    throw v0

    .line 2445
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9
    .param p1, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 2283
    const-string/jumbo v0, "BluetoothMapContent"

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

    .line 2284
    const/4 v7, 0x0

    .line 2287
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2288
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2290
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2292
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2293
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2294
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    .line 2293
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2296
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2297
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2300
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2304
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2305
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2306
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2307
    .restart local v3    # "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2308
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    .line 2307
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2310
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2311
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v7, v0

    .line 2314
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2318
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2319
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2320
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2321
    .restart local v3    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2323
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2324
    const-string/jumbo v5, "date DESC"

    .line 2323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2326
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2327
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    add-int/2addr v7, v0

    .line 2330
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2335
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2336
    const/4 v0, 0x3

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2337
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2338
    .restart local v3    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2340
    .restart local v1    # "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2341
    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2342
    const-string/jumbo v5, "date DESC"

    .line 2340
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2344
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 2345
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    add-int/2addr v7, v0

    .line 2348
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2353
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_7
    const-string/jumbo v0, "BluetoothMapContent"

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

    .line 2354
    return v7

    .line 2299
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 2300
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2299
    :cond_8
    throw v0

    .line 2313
    :catchall_1
    move-exception v0

    .line 2314
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2313
    :cond_9
    throw v0

    .line 2329
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    .line 2330
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2329
    :cond_a
    throw v0

    .line 2347
    :catchall_3
    move-exception v0

    .line 2348
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2347
    :cond_b
    throw v0
.end method

.method refreshImEmailConvoVersions()Z
    .locals 26

    .prologue
    .line 2781
    const/16 v18, 0x0

    .line 2782
    .local v18, "listChangeDetected":Z
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2784
    .local v11, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Conversation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2786
    .local v3, "contentUri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URI with parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 2788
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    .line 2789
    const-string/jumbo v7, "last_thread_activity DESC, thread_id ASC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2787
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2793
    .local v14, "imEmailCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_11

    .line 2794
    const/4 v9, 0x0

    .line 2797
    .local v9, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    :try_start_0
    invoke-virtual {v11, v14}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    .line 2798
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    .line 2799
    .local v15, "isValid":Z
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2800
    const-string/jumbo v5, " EMAIL/IM conversations. isValid = "

    .line 2799
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2802
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2803
    .local v24, "size":I
    const/4 v8, 0x0

    .line 2805
    .local v8, "convoChanged":Z
    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2806
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v20, "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    :goto_0
    if-eqz v15, :cond_f

    .line 2807
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2809
    .local v12, "id":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-object v9, v0

    .line 2810
    .local v9, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    if-nez v9, :cond_2

    .line 2812
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2813
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v10, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const-wide/16 v6, 0x2

    :try_start_2
    invoke-virtual {v10, v6, v7, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 2814
    const/16 v18, 0x1

    .line 2815
    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v10

    .line 2817
    .end local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    :cond_2
    :try_start_3
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2818
    .local v19, "name":Ljava/lang/String;
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2819
    .local v25, "summary":Ljava/lang/String;
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2820
    .local v16, "last_activity":J
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    .line 2821
    const/16 v21, 0x1

    .line 2823
    .local v21, "read":Z
    :goto_1
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v6

    cmp-long v2, v16, v6

    if-eqz v2, :cond_3

    .line 2824
    const/4 v8, 0x1

    .line 2825
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 2828
    :cond_3
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v2

    move/from16 v0, v21

    if-eq v0, v2, :cond_4

    .line 2829
    const/4 v8, 0x1

    .line 2830
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 2833
    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2838
    :cond_5
    :goto_2
    if-eqz v25, :cond_6

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getFullSummary()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2844
    :cond_6
    :goto_3
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 2845
    .local v22, "nextThreadId":J
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " newThreadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_7
    cmp-long v2, v22, v12

    if-nez v2, :cond_8

    .line 2848
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v15, 0x1

    .line 2847
    :goto_4
    if-nez v15, :cond_6

    .line 2850
    :cond_8
    if-eqz v8, :cond_9

    .line 2851
    const/16 v18, 0x1

    .line 2852
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    .line 2854
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2801
    .end local v8    # "convoChanged":Z
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v12    # "id":J
    .end local v16    # "last_activity":J
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .end local v21    # "read":Z
    .end local v22    # "nextThreadId":J
    .end local v24    # "size":I
    .end local v25    # "summary":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :goto_5
    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2863
    .end local v15    # "isValid":Z
    :catchall_1
    move-exception v2

    .line 2864
    if-eqz v14, :cond_a

    .line 2865
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2863
    :cond_a
    throw v2

    .line 2821
    .restart local v8    # "convoChanged":Z
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v12    # "id":J
    .restart local v15    # "isValid":Z
    .restart local v16    # "last_activity":J
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .restart local v24    # "size":I
    .restart local v25    # "summary":Ljava/lang/String;
    :cond_b
    const/16 v21, 0x0

    .restart local v21    # "read":Z
    goto/16 :goto_1

    .line 2834
    :cond_c
    const/4 v8, 0x1

    .line 2835
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 2839
    :cond_d
    const/4 v8, 0x1

    .line 2840
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    .line 2848
    .restart local v22    # "nextThreadId":J
    :cond_e
    const/4 v15, 0x0

    goto :goto_4

    .line 2857
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v12    # "id":J
    .end local v16    # "last_activity":J
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "read":Z
    .end local v22    # "nextThreadId":J
    .end local v25    # "summary":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2858
    const/16 v18, 0x1

    .line 2860
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setImEmailConvoList(Ljava/util/HashMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2864
    .end local v8    # "convoChanged":Z
    .end local v15    # "isValid":Z
    .end local v20    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .end local v24    # "size":I
    :cond_11
    if-eqz v14, :cond_12

    .line 2865
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2869
    :cond_12
    if-eqz v18, :cond_13

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 2872
    :cond_13
    return v18

    .line 2801
    .restart local v8    # "convoChanged":Z
    .restart local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v12    # "id":J
    .restart local v15    # "isValid":Z
    .restart local v20    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .restart local v24    # "size":I
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    goto :goto_5
.end method

.method refreshSmsMmsConvoVersions()Z
    .locals 22

    .prologue
    .line 2694
    const/16 v16, 0x0

    .line 2695
    .local v16, "listChangeDetected":Z
    const/4 v11, 0x0

    .line 2696
    .local v11, "cursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2697
    const-string/jumbo v4, "simple"

    const-string/jumbo v5, "true"

    .line 2696
    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2698
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    .line 2699
    const-string/jumbo v7, "date DESC"

    .line 2698
    const/4 v5, 0x0

    .line 2699
    const/4 v6, 0x0

    .line 2698
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2701
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 2703
    :try_start_0
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2704
    const-string/jumbo v5, " sms/mms conversations."

    .line 2703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const/4 v9, 0x0

    .line 2706
    .local v9, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2708
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2710
    .local v19, "size":I
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2711
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v17, "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2714
    const/4 v8, 0x0

    .line 2715
    .local v8, "convoChanged":Z
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2716
    .local v12, "id":Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-object v9, v0

    .line 2717
    .local v9, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    if-nez v9, :cond_0

    .line 2719
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2720
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .local v10, "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 2721
    const/16 v16, 0x1

    .line 2722
    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v10

    .line 2727
    .end local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    :cond_0
    :try_start_3
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2728
    .local v14, "last_activity":J
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 2729
    const/16 v18, 0x1

    .line 2731
    .local v18, "read":Z
    :goto_1
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v6

    cmp-long v2, v14, v6

    if-eqz v2, :cond_1

    .line 2732
    const/4 v8, 0x1

    .line 2733
    invoke-virtual {v9, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 2736
    :cond_1
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v2

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 2737
    const/4 v8, 0x1

    .line 2738
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 2741
    :cond_2
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2742
    .local v13, "idsStr":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSmsMmsContacts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2745
    const/16 v16, 0x1

    .line 2746
    invoke-virtual {v9, v13}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSmsMmsContacts(Ljava/lang/String;)V

    .line 2749
    :cond_3
    if-eqz v8, :cond_4

    .line 2750
    const/16 v16, 0x1

    .line 2751
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    .line 2753
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2707
    .end local v8    # "convoChanged":Z
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v12    # "id":Ljava/lang/Long;
    .end local v13    # "idsStr":Ljava/lang/String;
    .end local v14    # "last_activity":J
    .end local v17    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .end local v18    # "read":Z
    .end local v19    # "size":I
    :catchall_0
    move-exception v2

    :goto_2
    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2766
    :catchall_1
    move-exception v2

    .line 2767
    if-eqz v11, :cond_5

    .line 2768
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2766
    :cond_5
    throw v2

    .line 2729
    .restart local v8    # "convoChanged":Z
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v12    # "id":Ljava/lang/Long;
    .restart local v14    # "last_activity":J
    .restart local v17    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .restart local v19    # "size":I
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "read":Z
    goto :goto_1

    .line 2756
    .end local v8    # "convoChanged":Z
    .end local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .end local v12    # "id":Ljava/lang/Long;
    .end local v14    # "last_activity":J
    .end local v18    # "read":Z
    :cond_7
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2757
    const/16 v16, 0x1

    .line 2759
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSmsMmsConvoList(Ljava/util/HashMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4

    .line 2762
    if-eqz v16, :cond_9

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2767
    .end local v17    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .end local v19    # "size":I
    :cond_9
    if-eqz v11, :cond_a

    .line 2768
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2771
    :cond_a
    return v16

    .line 2707
    .restart local v8    # "convoChanged":Z
    .restart local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v12    # "id":Ljava/lang/Long;
    .restart local v17    # "newList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    .restart local v19    # "size":I
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .restart local v9    # "convoElement":Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    goto :goto_2
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4025
    .local p1, "imEmailConvoList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setImEmailConvoList(Ljava/util/HashMap;)V

    .line 4024
    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 2
    .param p1, "featureMask"    # I

    .prologue
    .line 3999
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    .line 4000
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "setRemoteFeatureMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    and-int/lit16 v0, v0, 0x200

    .line 4002
    const/16 v1, 0x200

    .line 4001
    if-ne v0, v1, :cond_2

    .line 4003
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "setRemoteFeatureMask MAP_MESSAGE_LISTING_FORMAT_V11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    :cond_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    .line 3998
    :cond_2
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4017
    .local p1, "smsMmsConvoList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setSmsMmsConvoList(Ljava/util/HashMap;)V

    .line 4016
    return-void
.end method
