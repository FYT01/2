.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;
    }
.end annotation


# static fields
.field private static final ACTION_MESSAGE_DELIVERY:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

.field static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final CONVERT_MMS_TO_SMS_PART_COUNT:I = 0xa

.field private static final D:Z = true

.field public static final DELETED_THREAD_ID:I = -0x1

.field private static final EVENT_FILTER_CONVERSATION_CHANGED:J = 0x400L

.field private static final EVENT_FILTER_DELIVERY_FAILED:J = 0x40L

.field private static final EVENT_FILTER_DELIVERY_SUCCESS:J = 0x20L

.field private static final EVENT_FILTER_MEMORY_AVAILABLE:J = 0x100L

.field private static final EVENT_FILTER_MEMORY_FULL:J = 0x80L

.field private static final EVENT_FILTER_MESSAGE_DELETED:J = 0x2L

.field private static final EVENT_FILTER_MESSAGE_REMOVED:J = 0x2000L

.field private static final EVENT_FILTER_MESSAGE_SHIFT:J = 0x4L

.field private static final EVENT_FILTER_NEW_MESSAGE:J = 0x1L

.field private static final EVENT_FILTER_PARTICIPANT_CHATSTATE_CHANGED:J = 0x1000L

.field private static final EVENT_FILTER_PARTICIPANT_PRESENCE_CHANGED:J = 0x800L

.field private static final EVENT_FILTER_READ_STATUS_CHANGED:J = 0x200L

.field private static final EVENT_FILTER_SENDING_FAILED:J = 0x10L

.field private static final EVENT_FILTER_SENDING_SUCCESS:J = 0x8L

.field private static final EVENT_TYPE_CHAT_STATE:Ljava/lang/String; = "ParticipantChatStateChanged"

.field private static final EVENT_TYPE_CONVERSATION:Ljava/lang/String; = "ConversationChanged"

.field private static final EVENT_TYPE_DELETE:Ljava/lang/String; = "MessageDeleted"

.field private static final EVENT_TYPE_DELEVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field private static final EVENT_TYPE_DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field private static final EVENT_TYPE_NEW:Ljava/lang/String; = "NewMessage"

.field private static final EVENT_TYPE_PRESENCE:Ljava/lang/String; = "ParticipantPresenceChanged"

.field private static final EVENT_TYPE_READ_STATUS:Ljava/lang/String; = "ReadStatusChanged"

.field private static final EVENT_TYPE_REMOVED:Ljava/lang/String; = "MessageRemoved"

.field private static final EVENT_TYPE_SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field private static final EVENT_TYPE_SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field private static final EVENT_TYPE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final EXTRA_MESSAGE_SENT_HANDLE:Ljava/lang/String; = "HANDLE"

.field public static final EXTRA_MESSAGE_SENT_MSG_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_MESSAGE_SENT_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_MESSAGE_SENT_RETRY:Ljava/lang/String; = "retry"

.field public static final EXTRA_MESSAGE_SENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_MESSAGE_SENT_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final EXTRA_MESSAGE_SENT_URI:Ljava/lang/String; = "uri"

.field private static final FOLDER_MMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOLDER_SMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserver"

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAuthority:Ljava/lang/String;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEnableSmsMms:Z

.field private volatile mEventFilter:J

.field private mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mInitialized:Z

.field private mMapEventReportVersion:I

.field private mMapSupportedFeatures:I

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageUri:Landroid/net/Uri;

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mTransmitEvents:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 0
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 86
    const-string/jumbo v0, "BluetoothMap"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    .line 180
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 182
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 183
    const-string/jumbo v1, "address"

    aput-object v1, v0, v3

    .line 184
    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    .line 185
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 186
    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "locked"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "error_code"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 180
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    .line 193
    new-array v0, v6, [Ljava/lang/String;

    .line 194
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 195
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 196
    const-string/jumbo v1, "type"

    aput-object v1, v0, v3

    .line 197
    const-string/jumbo v1, "read"

    aput-object v1, v0, v5

    .line 193
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 200
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 202
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 203
    const-string/jumbo v1, "address"

    aput-object v1, v0, v3

    .line 204
    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    .line 205
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 206
    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 200
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 212
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 213
    const-string/jumbo v1, "m_type"

    aput-object v1, v0, v3

    .line 214
    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v5

    .line 215
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 210
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 218
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 219
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 220
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v4

    .line 221
    const-string/jumbo v1, "m_type"

    aput-object v1, v0, v3

    .line 222
    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v5

    .line 223
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 224
    const-string/jumbo v1, "date"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "sub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "pri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 218
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 229
    new-array v0, v5, [Ljava/lang/String;

    .line 230
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 231
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v4

    .line 232
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 229
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 235
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 236
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 237
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v4

    .line 238
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 239
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 240
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    .line 241
    const-string/jumbo v1, "from_list"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "high_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 235
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 245
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 246
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    .line 247
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v4

    .line 248
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 249
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 250
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    .line 251
    const-string/jumbo v1, "from_list"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "high_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "thread_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 245
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    .line 497
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "INBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SENT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "DRAFT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    .line 518
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "INBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SENT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "DRAFT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mnsClient"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p3, "masInstance"    # Lcom/android/bluetooth/map/BluetoothMapMasInstance;
    .param p4, "account"    # Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .param p5, "enableSmsMms"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 125
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 127
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 128
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 130
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 133
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 135
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 138
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v2, "DUMMY"

    invoke-direct {v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 137
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 139
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 140
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 150
    const-wide v2, 0xffffffffL

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 175
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    .line 177
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 472
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    .line 878
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 880
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 882
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 884
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 2433
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 2432
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    .line 3394
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 262
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 264
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 265
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 266
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 268
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 269
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothMapContentObserver: Supported features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 272
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 274
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 278
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 277
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 279
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 282
    :cond_1
    if-eqz p4, :cond_4

    .line 283
    iget-object v1, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 285
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string/jumbo v2, "ConvoContact"

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 291
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_3

    .line 292
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getContactList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 296
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 297
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V

    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initContactsList()V

    .line 301
    :cond_4
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 302
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 303
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListSms()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "doInit":Z
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_6

    .line 308
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMms()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V

    .line 315
    const/4 v0, 0x1

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_7

    .line 319
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMsg()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    if-nez v1, :cond_7

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V

    .line 322
    const/4 v0, 0x1

    .line 325
    :cond_7
    if-eqz v0, :cond_8

    .line 326
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 261
    :cond_8
    return-void
.end method

.method public static actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # I

    .prologue
    .line 3261
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3260
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    .line 3262
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    .line 3263
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    .line 3259
    :goto_0
    return-void

    .line 3265
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "mmsMsgList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 3217
    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "actionMmsSent()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    const-string/jumbo v6, "transparent"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3219
    .local v4, "transparent":I
    const-string/jumbo v6, "HANDLE"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3220
    .local v0, "handle":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 3221
    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Intent received for an invalid handle"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    return-void

    .line 3224
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3225
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 3232
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 3234
    .local v5, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 3235
    monitor-enter p3

    .line 3236
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    .line 3240
    :cond_1
    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Transparent in use - delete"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    invoke-virtual {v3, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3207
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 3235
    .restart local v5    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v6

    monitor-exit p3

    throw v6

    .line 3242
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    .line 3244
    const/4 v6, 0x2

    invoke-static {v0, v1, v3, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    goto :goto_0

    .line 3246
    :cond_3
    if-eqz p3, :cond_5

    .line 3247
    monitor-enter p3

    .line 3248
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 3249
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v2, :cond_4

    .line 3250
    const/4 v6, 0x4

    iput v6, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit p3

    .line 3255
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_5
    invoke-static {v0, v1, v3, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    goto :goto_0

    .line 3247
    :catchall_1
    move-exception v6

    monitor-exit p3

    throw v6
.end method

.method public static actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3271
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 3272
    const-string/jumbo v5, "android.Manifest.permission.WRITE_SMS"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 3274
    :cond_0
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v6, "actionSmsSentDisconnected: Not allowed to delete SMS/MMS messages"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "b/22343270"

    aput-object v6, v5, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, ""

    aput-object v6, v5, v9

    const v6, 0x534e4554

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3276
    return-void

    .line 3279
    :cond_1
    const/4 v0, 0x0

    .line 3281
    .local v0, "delete":Z
    const-string/jumbo v5, "transparent"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3282
    .local v2, "transparent":I
    const-string/jumbo v5, "uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3283
    .local v4, "uriString":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 3285
    return-void

    .line 3287
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3289
    .local v3, "uri":Landroid/net/Uri;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    .line 3290
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v6, "actionMessageSentDisconnected: result OK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    if-nez v2, :cond_5

    .line 3292
    invoke-static {p0, v3, v9, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3294
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to SENT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 3317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3318
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_8

    .line 3319
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3269
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    :goto_1
    return-void

    .line 3297
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 3304
    :cond_6
    if-nez v2, :cond_7

    .line 3306
    const/4 v5, 0x5

    .line 3305
    invoke-static {p0, v3, v5, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3307
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3310
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 3321
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v6, "Unable to get resolver"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteMessageMms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 2139
    const/4 v8, 0x0

    .line 2140
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2141
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2143
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2145
    const-string/jumbo v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2146
    .local v9, "threadId":I
    if-eq v9, v10, :cond_4

    .line 2148
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2149
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2150
    .local v7, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v7, :cond_0

    .line 2151
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2

    .line 2154
    const-string/jumbo v0, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2163
    .end local v7    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :goto_0
    const/4 v8, 0x1

    .line 2166
    .end local v9    # "threadId":I
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2169
    :cond_2
    return v8

    .line 2148
    .restart local v9    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2165
    .end local v9    # "threadId":I
    :catchall_1
    move-exception v0

    .line 2166
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2165
    :cond_3
    throw v0

    .line 2157
    .restart local v9    # "threadId":I
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2158
    :try_start_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v2

    .line 2161
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2157
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private deleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 2222
    const/4 v8, 0x0

    .line 2223
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2224
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2226
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2228
    const-string/jumbo v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2229
    .local v9, "threadId":I
    if-eq v9, v10, :cond_4

    .line 2230
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2231
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2232
    .local v7, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v7, :cond_0

    .line 2233
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2

    .line 2237
    const-string/jumbo v0, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2246
    .end local v7    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :goto_0
    const/4 v8, 0x1

    .line 2249
    .end local v9    # "threadId":I
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2251
    :cond_2
    return v8

    .line 2230
    .restart local v9    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2248
    .end local v9    # "threadId":I
    :catchall_1
    move-exception v0

    .line 2249
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2248
    :cond_3
    throw v0

    .line 2240
    .restart local v9    # "threadId":I
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2241
    :try_start_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v2

    .line 2244
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2240
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private failPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 3366
    const-string/jumbo v3, "type = 4"

    .line 3367
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3370
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3372
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3373
    .local v8, "id":J
    const-string/jumbo v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3374
    .local v7, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3375
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_4

    .line 3380
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3383
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3364
    :cond_3
    return-void

    .line 3378
    .restart local v7    # "msgBody":Ljava/lang/String;
    .restart local v8    # "id":J
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    .line 3379
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 3378
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3382
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :catchall_0
    move-exception v0

    .line 3383
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3382
    :cond_5
    throw v0
.end method

.method private getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method private static getMmsFolderName(I)Ljava/lang/String;
    .locals 3
    .param p0, "mailbox"    # I

    .prologue
    .line 525
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 527
    return-object v0

    .line 529
    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "New MMS mailboxes have been introduced, without an update in BT..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method private getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method private static getSmsFolderName(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 506
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    return-object v0

    .line 510
    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "New SMS mailbox types have been introduced, without an update in BT..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 461
    const-string/jumbo v3, "phone"

    .line 460
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 463
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 464
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 469
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :goto_0
    return-object v0

    .line 466
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    goto :goto_0
.end method

.method private handleContactListChanges(Landroid/net/Uri;)V
    .locals 38
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1822
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1824
    :try_start_0
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v17, :cond_0

    const-string/jumbo v17, "BluetoothMapContentObserver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "handleContactListChanges uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    :cond_0
    const/4 v15, 0x0

    .line 1826
    .local v15, "c":Landroid/database/Cursor;
    const/16 v36, 0x0

    .line 1828
    .local v36, "listChanged":Z
    :try_start_1
    new-instance v30, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;)V

    .line 1830
    .local v30, "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 1831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 1834
    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 1836
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1832
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1837
    .local v15, "c":Landroid/database/Cursor;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    .line 1845
    new-instance v31, Ljava/util/HashMap;

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    .line 1845
    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1848
    .local v31, "contactList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v37

    monitor-enter v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1849
    if-eqz v15, :cond_3

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1851
    :cond_1
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1852
    .local v5, "uci":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1853
    .local v24, "convoId":J
    const-wide/16 v18, 0x0

    cmp-long v17, v24, v18

    if-nez v17, :cond_8

    .line 2016
    :cond_2
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 2018
    .end local v5    # "uci":Ljava/lang/String;
    .end local v24    # "convoId":J
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 2021
    const/16 v36, 0x1

    .line 2023
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v37
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2026
    if-eqz v15, :cond_5

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1821
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v30    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .end local v31    # "contactList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    .end local v36    # "listChanged":Z
    :cond_5
    :goto_1
    return-void

    .line 1839
    .local v15, "c":Landroid/database/Cursor;
    .restart local v30    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .restart local v36    # "listChanged":Z
    :cond_6
    :try_start_5
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v17, :cond_7

    const-string/jumbo v17, "BluetoothMapContentObserver"

    const-string/jumbo v18, "handleContactListChanges MAP version does notsupport convocontact notifications"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1841
    :cond_7
    return-void

    .line 1856
    .restart local v5    # "uci":Ljava/lang/String;
    .local v15, "c":Landroid/database/Cursor;
    .restart local v24    # "convoId":J
    .restart local v31    # "contactList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    :cond_8
    :try_start_6
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v17, :cond_9

    invoke-static {v15}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 1859
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .line 1867
    .local v4, "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    if-nez v4, :cond_b

    .line 1868
    const/16 v36, 0x1

    .line 1873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    .line 1874
    const/16 v18, 0xa

    .line 1873
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    .line 1876
    const/16 v18, 0xb

    .line 1875
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1879
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    move/from16 v17, v0

    .line 1878
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1881
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    move/from16 v17, v0

    .line 1880
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1883
    .local v7, "displayName":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    move/from16 v17, v0

    .line 1882
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1885
    .local v8, "presenceStatus":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    move/from16 v17, v0

    .line 1884
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1887
    .local v9, "presenceState":I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    move/from16 v17, v0

    .line 1886
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1889
    .local v10, "lastActivity":J
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    move/from16 v17, v0

    .line 1888
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1891
    .local v12, "chatState":I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    move/from16 v17, v0

    .line 1890
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1893
    .local v13, "priority":I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    move/from16 v17, v0

    .line 1892
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1909
    .local v14, "btUid":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1917
    .local v26, "convoName":Ljava/lang/String;
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .end local v4    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    invoke-direct/range {v4 .. v14}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    .line 1923
    .restart local v4    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .line 1926
    const-string/jumbo v18, "ConversationChanged"

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    .line 1930
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 1931
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v27, v9

    move-object/from16 v28, v8

    move/from16 v29, v12

    .line 1925
    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    .line 1937
    .local v16, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1848
    .end local v4    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .end local v5    # "uci":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "presenceStatus":Ljava/lang/String;
    .end local v9    # "presenceState":I
    .end local v10    # "lastActivity":J
    .end local v12    # "chatState":I
    .end local v13    # "priority":I
    .end local v14    # "btUid":Ljava/lang/String;
    .end local v16    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v24    # "convoId":J
    .end local v26    # "convoName":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_7
    monitor-exit v37

    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2025
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v30    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .end local v31    # "contactList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    :catchall_1
    move-exception v17

    .line 2026
    if-eqz v15, :cond_a

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2025
    :cond_a
    throw v17
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2028
    .end local v36    # "listChanged":Z
    :catch_0
    move-exception v33

    .line 2029
    .local v33, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 2030
    const-string/jumbo v17, "BluetoothMapContentObserver"

    .line 2031
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    move/from16 v19, v0

    .line 2031
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2032
    const-string/jumbo v19, " restaring ObexServerSession"

    .line 2031
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2030
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1955
    .end local v33    # "e":Landroid/os/RemoteException;
    .restart local v4    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .restart local v5    # "uci":Ljava/lang/String;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v24    # "convoId":J
    .restart local v30    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .restart local v31    # "contactList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    .restart local v36    # "listChanged":Z
    :cond_b
    const/16 v26, 0x0

    .line 1963
    .restart local v26    # "convoName":Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1965
    .restart local v9    # "presenceState":I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    move/from16 v17, v0

    .line 1964
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1966
    .restart local v8    # "presenceStatus":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceStatus()Ljava/lang/String;

    move-result-object v32

    .line 1968
    .local v32, "currentPresenceStatus":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceAvailability()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_c

    .line 1969
    move-object/from16 v0, v32

    if-eq v0, v8, :cond_e

    .line 1971
    :cond_c
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    move/from16 v17, v0

    .line 1970
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1972
    .local v34, "lastOnline":J
    invoke-virtual {v4, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    .line 1973
    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 1974
    if-eqz v32, :cond_d

    .line 1975
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1979
    :cond_d
    :goto_2
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .line 1980
    const-string/jumbo v18, "ParticipantPresenceChanged"

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    .line 1983
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1984
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 1986
    invoke-static/range {v34 .. v35}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    .line 1990
    const/16 v29, 0x0

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move/from16 v27, v9

    move-object/from16 v28, v8

    .line 1979
    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    .line 1991
    .restart local v16    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1995
    .end local v16    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v34    # "lastOnline":J
    :cond_e
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1996
    .restart local v12    # "chatState":I
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getChatState()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_f

    .line 1998
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1999
    .restart local v10    # "lastActivity":J
    invoke-virtual {v4, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 2000
    invoke-virtual {v4, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    .line 2001
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .line 2002
    const-string/jumbo v18, "ParticipantChatStateChanged"

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    .line 2005
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2006
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 2008
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    .line 2010
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move/from16 v29, v12

    .line 2001
    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    .line 2012
    .restart local v16    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 2014
    .end local v10    # "lastActivity":J
    .end local v16    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_f
    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1977
    .end local v12    # "chatState":I
    .restart local v34    # "lastOnline":J
    :cond_10
    invoke-virtual {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method

.method private handleMsgListChanges(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1802
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1804
    :try_start_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMsgListChanges: account type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1805
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1804
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_1

    .line 1816
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 1817
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 1801
    :cond_1
    return-void

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 1809
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1810
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 1809
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1810
    const-string/jumbo v3, " restaring ObexServerSession"

    .line 1809
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgListChangesMms()V
    .locals 38

    .prologue
    .line 1464
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v12, "handleMsgListChangesMms"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 1467
    .local v34, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    const/16 v32, 0x0

    .line 1469
    .local v32, "listChanged":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v37

    monitor-enter v37

    .line 1470
    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-ne v5, v12, :cond_4

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1472
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1471
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v31

    .line 1479
    .local v31, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v31, :cond_2

    :try_start_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1481
    :cond_1
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1482
    .local v6, "id":J
    const-string/jumbo v5, "msg_box"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1483
    .local v8, "type":I
    const-string/jumbo v5, "m_type"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1484
    .local v35, "mtype":I
    const-string/jumbo v5, "thread_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1487
    .local v9, "threadId":I
    const-string/jumbo v5, "read"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1489
    .local v10, "read":I
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1495
    .local v4, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v4, :cond_c

    .line 1497
    const/16 v32, 0x1

    .line 1498
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    .line 1499
    const-string/jumbo v12, "INBOX"

    .line 1498
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1500
    const/16 v5, 0x84

    move/from16 v0, v35

    if-eq v0, v5, :cond_5

    .line 1600
    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1604
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    .end local v35    # "mtype":I
    :cond_2
    if-eqz v31, :cond_3

    :try_start_2
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "msg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1608
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v26, v0

    .line 1609
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    .line 1608
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1610
    .local v11, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1611
    const/16 v32, 0x1

    goto :goto_2

    .line 1474
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v31    # "c":Landroid/database/Cursor;
    .end local v33    # "msg$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1475
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1474
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v31

    .restart local v31    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1503
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "type":I
    .restart local v9    # "threadId":I
    .restart local v10    # "read":I
    .restart local v35    # "mtype":I
    :cond_5
    :try_start_3
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1504
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v5, :cond_b

    .line 1507
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1508
    const/16 v12, 0xa

    .line 1507
    if-eq v5, v12, :cond_b

    .line 1510
    const-string/jumbo v5, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1509
    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18

    .line 1511
    .local v18, "date":Ljava/lang/String;
    const-string/jumbo v5, "sub"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1512
    .local v19, "subject":Ljava/lang/String;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1514
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v19

    .line 1516
    :cond_7
    const-string/jumbo v5, "pri"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1517
    .local v36, "tmpPri":I
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "TEMP handleMsgListChangesMms, newMessage \'read\' state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1519
    const-string/jumbo v13, "priority: "

    .line 1517
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v12, 0x89

    .line 1521
    invoke-static {v5, v6, v7, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v20

    .line 1523
    .local v20, "address":Ljava/lang/String;
    const-string/jumbo v21, "no"

    .line 1524
    .local v21, "priority":Ljava/lang/String;
    const/16 v5, 0x82

    move/from16 v0, v36

    if-ne v0, v5, :cond_8

    .line 1525
    const-string/jumbo v21, "yes"

    .line 1528
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1529
    const/16 v12, 0xb

    .line 1528
    if-ne v5, v12, :cond_a

    .line 1530
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    .line 1531
    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1530
    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .end local v36    # "tmpPri":I
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1603
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v35    # "mtype":I
    :catchall_0
    move-exception v5

    .line 1604
    if-eqz v31, :cond_9

    :try_start_4
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1603
    :cond_9
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1469
    .end local v31    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    monitor-exit v37

    throw v5

    .line 1533
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "type":I
    .restart local v9    # "threadId":I
    .restart local v10    # "read":I
    .restart local v18    # "date":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "priority":Ljava/lang/String;
    .restart local v31    # "c":Landroid/database/Cursor;
    .restart local v35    # "mtype":I
    .restart local v36    # "tmpPri":I
    :cond_a
    :try_start_5
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    .line 1534
    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 1535
    int-to-long v0, v9

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1533
    invoke-direct/range {v11 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto :goto_3

    .line 1540
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .end local v36    # "tmpPri":I
    :cond_b
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    .line 1541
    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1540
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto :goto_3

    .line 1547
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_c
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v8, v5, :cond_10

    .line 1548
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/16 v32, 0x1

    .line 1551
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v5, :cond_d

    .line 1553
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageShift"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    .line 1554
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1553
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1555
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1557
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_d
    iput v8, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1559
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    .line 1560
    const-string/jumbo v12, "SENT"

    .line 1559
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1561
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v5, :cond_e

    .line 1563
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1564
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "SendingSuccess"

    .line 1565
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1564
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1566
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1588
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_e
    :goto_4
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v10, v5, :cond_f

    .line 1589
    const/16 v32, 0x1

    .line 1590
    iput v10, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1591
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1592
    const/16 v12, 0xa

    .line 1591
    if-le v5, v12, :cond_f

    .line 1593
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "ReadStatusChanged"

    .line 1594
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1593
    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1595
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1598
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1568
    :cond_10
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v9, v5, :cond_e

    .line 1569
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Message delete change: type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1570
    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1571
    const-string/jumbo v13, "\n    threadId: "

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1571
    const-string/jumbo v13, " old threadId: "

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1572
    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/16 v32, 0x1

    .line 1574
    const/4 v5, -0x1

    if-ne v9, v5, :cond_11

    .line 1576
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageDeleted"

    .line 1577
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1576
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1578
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1579
    iput v9, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    goto/16 :goto_4

    .line 1581
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_11
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageShift"

    .line 1582
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    .line 1583
    const-string/jumbo v29, "DELETED"

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1581
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1584
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1585
    iput v9, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 1613
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v35    # "mtype":I
    .restart local v33    # "msg$iterator":Ljava/util/Iterator;
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v37

    .line 1463
    return-void
.end method

.method private handleMsgListChangesMsg(Landroid/net/Uri;)V
    .locals 48
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1618
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleMsgListChangesMsg uri: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 1624
    .local v44, "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    const/16 v42, 0x0

    .line 1625
    .local v42, "listChanged":Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v9, 0xa

    if-ne v5, v9, :cond_8

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1632
    .local v39, "c":Landroid/database/Cursor;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v47

    monitor-enter v47

    .line 1634
    if-eqz v39, :cond_3

    :try_start_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1637
    :cond_1
    const-string/jumbo v5, "_id"

    .line 1636
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1639
    .local v6, "id":J
    const-string/jumbo v5, "folder_id"

    .line 1638
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1641
    .local v8, "folderId":I
    const-string/jumbo v5, "flag_read"

    .line 1640
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1642
    .local v10, "readFlag":I
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1643
    .local v4, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    int-to-long v12, v8

    invoke-virtual {v5, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v41

    .line 1645
    .local v41, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v41, :cond_a

    .line 1646
    invoke-virtual/range {v41 .. v41}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v16

    .line 1653
    .local v16, "newFolder":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_d

    .line 1654
    const/16 v42, 0x1

    .line 1656
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1657
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v9, 0xa

    if-eq v5, v9, :cond_c

    .line 1663
    const-string/jumbo v5, "date"

    .line 1662
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1661
    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18

    .line 1665
    .local v18, "date":Ljava/lang/String;
    const-string/jumbo v5, "subject"

    .line 1664
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1667
    .local v19, "subject":Ljava/lang/String;
    const-string/jumbo v5, "from_list"

    .line 1666
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1668
    .local v20, "address":Ljava/lang/String;
    const-string/jumbo v21, "no"

    .line 1670
    .local v21, "priority":Ljava/lang/String;
    const-string/jumbo v5, "high_priority"

    .line 1669
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1671
    const/4 v9, 0x1

    .line 1669
    if-ne v5, v9, :cond_2

    .line 1672
    const-string/jumbo v21, "yes"

    .line 1673
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1674
    const/16 v9, 0xb

    .line 1673
    if-ne v5, v9, :cond_b

    .line 1675
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    .line 1676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v17

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1675
    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .local v11, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1758
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 1761
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "folderId":I
    .end local v10    # "readFlag":I
    .end local v16    # "newFolder":Ljava/lang/String;
    .end local v41    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_3
    if-eqz v39, :cond_4

    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1764
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .local v43, "msg$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1765
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v5, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v45

    .line 1767
    .local v45, "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/16 v42, 0x1

    .line 1768
    if-eqz v45, :cond_16

    .line 1769
    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v30

    .line 1777
    .local v30, "oldFolder":Ljava/lang/String;
    :goto_5
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v5, :cond_7

    .line 1778
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1780
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v5, :cond_6

    .line 1781
    const/16 v30, 0x0

    .line 1782
    .end local v30    # "oldFolder":Ljava/lang/String;
    :cond_6
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "SendingSuccess"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v28, v0

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v32

    .line 1782
    const/16 v31, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1784
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1789
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_7
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-nez v5, :cond_5

    .line 1792
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v28, v0

    .line 1793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v32

    const/16 v31, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    .line 1792
    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1794
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1632
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v43    # "msg$iterator":Ljava/util/Iterator;
    .end local v45    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_0
    move-exception v5

    monitor-exit v47

    throw v5

    .line 1627
    .end local v39    # "c":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v9, 0xb

    if-ne v5, v9, :cond_9

    .line 1628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .restart local v39    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1630
    .end local v39    # "c":Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .restart local v39    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1649
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "folderId":I
    .restart local v10    # "readFlag":I
    .restart local v41    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_a
    :try_start_2
    const-string/jumbo v16, "unknown"

    .restart local v16    # "newFolder":Ljava/lang/String;
    goto/16 :goto_1

    .line 1679
    .restart local v18    # "date":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "priority":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "thread_id"

    .line 1678
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1681
    .local v22, "thread_id":J
    const-string/jumbo v5, "thread_name"

    .line 1680
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1682
    .local v24, "thread_name":Ljava/lang/String;
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    .line 1683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v17

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1682
    invoke-direct/range {v11 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto/16 :goto_2

    .line 1687
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .end local v22    # "thread_id":J
    .end local v24    # "thread_name":Ljava/lang/String;
    :cond_c
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "NewMessage"

    sget-object v32, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v31, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-wide/from16 v28, v6

    move-object/from16 v30, v16

    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto/16 :goto_2

    .line 1692
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_d
    int-to-long v12, v8

    iget-wide v14, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    cmp-long v5, v12, v14

    if-eqz v5, :cond_f

    iget-wide v12, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-eqz v5, :cond_f

    .line 1693
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "new folderId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, " old folderId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1694
    iget-wide v12, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 1693
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v5, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v45

    .line 1698
    .restart local v45    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/16 v42, 0x1

    .line 1699
    if-eqz v45, :cond_12

    .line 1700
    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v30

    .line 1706
    .restart local v30    # "oldFolder":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 1707
    const-string/jumbo v9, "DELETED"

    .line 1706
    invoke-virtual {v5, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v40

    .line 1709
    .local v40, "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 1710
    const-string/jumbo v9, "SENT"

    .line 1709
    invoke-virtual {v5, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v46

    .line 1716
    .local v46, "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v40, :cond_13

    invoke-virtual/range {v40 .. v40}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v12

    .line 1717
    int-to-long v14, v8

    .line 1716
    cmp-long v5, v12, v14

    if-nez v5, :cond_13

    .line 1719
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v28, v0

    .line 1720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v32

    const/16 v31, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    .line 1719
    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1721
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1742
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_e
    :goto_7
    int-to-long v12, v8

    iput-wide v12, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 1744
    .end local v30    # "oldFolder":Ljava/lang/String;
    .end local v40    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v45    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v46    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_f
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v10, v5, :cond_10

    .line 1745
    const/16 v42, 0x1

    .line 1747
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1748
    const/16 v9, 0xa

    .line 1747
    if-le v5, v9, :cond_10

    .line 1749
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "ReadStatusChanged"

    .line 1750
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v17

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1749
    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1751
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1752
    iput v10, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1756
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    .line 1760
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "folderId":I
    .end local v10    # "readFlag":I
    .end local v16    # "newFolder":Ljava/lang/String;
    .end local v41    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_1
    move-exception v5

    .line 1761
    if-eqz v39, :cond_11

    :try_start_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1760
    :cond_11
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1703
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "folderId":I
    .restart local v10    # "readFlag":I
    .restart local v16    # "newFolder":Ljava/lang/String;
    .restart local v41    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v45    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_12
    :try_start_4
    const-string/jumbo v30, "unknown"

    .restart local v30    # "oldFolder":Ljava/lang/String;
    goto :goto_6

    .line 1722
    .restart local v40    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v46    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_13
    if-eqz v46, :cond_15

    .line 1723
    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v12

    int-to-long v14, v8

    cmp-long v5, v12, v14

    if-nez v5, :cond_15

    .line 1724
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v5, :cond_15

    .line 1725
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v5, :cond_14

    .line 1726
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1727
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1728
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1726
    invoke-virtual {v5, v9, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    .line 1730
    :cond_14
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1731
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "SendingSuccess"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v28, v0

    .line 1732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v32

    const/16 v31, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    .line 1731
    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1733
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_7

    .line 1736
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_15
    const-string/jumbo v5, "root"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1737
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageShift"

    .line 1738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v38

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    move-wide/from16 v34, v6

    move-object/from16 v36, v16

    move-object/from16 v37, v30

    .line 1737
    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1739
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_7

    .line 1771
    .end local v6    # "id":J
    .end local v8    # "folderId":I
    .end local v10    # "readFlag":I
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v16    # "newFolder":Ljava/lang/String;
    .end local v30    # "oldFolder":Ljava/lang/String;
    .end local v40    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v41    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v46    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v43    # "msg$iterator":Ljava/util/Iterator;
    :cond_16
    :try_start_5
    const-string/jumbo v30, "unknown"

    .restart local v30    # "oldFolder":Ljava/lang/String;
    goto/16 :goto_5

    .line 1797
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v30    # "oldFolder":Ljava/lang/String;
    .end local v45    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v47

    .line 1617
    return-void
.end method

.method private handleMsgListChangesSms()V
    .locals 47

    .prologue
    .line 1314
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v12, "handleMsgListChangesSms"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v42, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    const/16 v40, 0x0

    .line 1320
    .local v40, "listChanged":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v46

    monitor-enter v46

    .line 1321
    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-ne v5, v12, :cond_6

    .line 1322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1323
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1322
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v39

    .line 1329
    .local v39, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v39, :cond_4

    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1331
    :cond_1
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1332
    .local v6, "id":J
    const-string/jumbo v5, "type"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1333
    .local v8, "type":I
    const-string/jumbo v5, "thread_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1334
    .local v9, "threadId":I
    const-string/jumbo v5, "read"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1336
    .local v10, "read":I
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1341
    .local v4, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v4, :cond_d

    .line 1343
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1344
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const/16 v40, 0x1

    .line 1347
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v5, :cond_c

    .line 1348
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1349
    const/16 v12, 0xa

    .line 1348
    if-le v5, v12, :cond_c

    .line 1351
    const-string/jumbo v5, "date"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1350
    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18

    .line 1352
    .local v18, "date":Ljava/lang/String;
    const-string/jumbo v5, "body"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1353
    .local v19, "subject":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 1354
    .local v20, "name":Ljava/lang/String;
    const-string/jumbo v44, ""

    .line 1355
    .local v44, "phone":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v8, v5, :cond_9

    .line 1356
    const-string/jumbo v5, "address"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1357
    if-eqz v44, :cond_2

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1364
    :cond_2
    move-object/from16 v20, v44

    .line 1378
    :cond_3
    :goto_1
    const-string/jumbo v21, "no"

    .line 1380
    .local v21, "priority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1381
    const/16 v12, 0xb

    .line 1380
    if-ne v5, v12, :cond_b

    .line 1382
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1382
    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .end local v44    # "phone":Ljava/lang/String;
    .local v11, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1445
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1448
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    :cond_4
    if-eqz v39, :cond_5

    :try_start_2
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1451
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "msg$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1453
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v34, v0

    .line 1454
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v38, v0

    const/16 v37, 0x0

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    .line 1453
    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1455
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1456
    const/16 v40, 0x1

    goto :goto_4

    .line 1325
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v39    # "c":Landroid/database/Cursor;
    .end local v41    # "msg$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1326
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1325
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v39

    .restart local v39    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1359
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "type":I
    .restart local v9    # "threadId":I
    .restart local v10    # "read":I
    .restart local v18    # "date":Ljava/lang/String;
    .restart local v19    # "subject":Ljava/lang/String;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v44    # "phone":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1358
    move-object/from16 v0, v44

    invoke-static {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    .line 1360
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1361
    :cond_8
    move-object/from16 v20, v44

    goto/16 :goto_1

    .line 1368
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 1369
    const-string/jumbo v12, "phone"

    .line 1368
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/telephony/TelephonyManager;

    .line 1370
    .local v45, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v45, :cond_3

    .line 1371
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v44

    .line 1372
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 1373
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1374
    :cond_a
    move-object/from16 v20, v44

    goto/16 :goto_1

    .line 1385
    .end local v45    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v21    # "priority":Ljava/lang/String;
    :cond_b
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    .line 1387
    int-to-long v0, v9

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1385
    invoke-direct/range {v11 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto/16 :goto_2

    .line 1391
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v18    # "date":Ljava/lang/String;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "priority":Ljava/lang/String;
    .end local v44    # "phone":Ljava/lang/String;
    :cond_c
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1391
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto/16 :goto_2

    .line 1397
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_d
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v8, v5, :cond_12

    .line 1398
    const/16 v40, 0x1

    .line 1399
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v29

    .line 1401
    .local v29, "oldFolder":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v43

    .line 1403
    .local v43, "newFolder":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1404
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageShift"

    .line 1405
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v30, v0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    .line 1404
    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1406
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1408
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_e
    iput v8, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1433
    .end local v29    # "oldFolder":Ljava/lang/String;
    .end local v43    # "newFolder":Ljava/lang/String;
    :cond_f
    :goto_5
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v10, v5, :cond_10

    .line 1434
    const/16 v40, 0x1

    .line 1435
    iput v10, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1436
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 1437
    const/16 v12, 0xa

    .line 1436
    if-le v5, v12, :cond_10

    .line 1438
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "ReadStatusChanged"

    .line 1439
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move-wide v14, v6

    .line 1438
    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1440
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1443
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1447
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    :catchall_0
    move-exception v5

    .line 1448
    if-eqz v39, :cond_11

    :try_start_4
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1447
    :cond_11
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1320
    .end local v39    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    monitor-exit v46

    throw v5

    .line 1409
    .restart local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v6    # "id":J
    .restart local v8    # "type":I
    .restart local v9    # "threadId":I
    .restart local v10    # "read":I
    .restart local v39    # "c":Landroid/database/Cursor;
    :cond_12
    :try_start_5
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v9, v5, :cond_f

    .line 1410
    const/16 v40, 0x1

    .line 1411
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Message delete change: type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1412
    const-string/jumbo v13, " old type: "

    .line 1411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1412
    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1413
    const-string/jumbo v13, "\n    threadId: "

    .line 1411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1414
    const-string/jumbo v13, " old threadId: "

    .line 1411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1414
    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v5, -0x1

    if-ne v9, v5, :cond_13

    .line 1421
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageDeleted"

    .line 1422
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v38, v0

    const/16 v37, 0x0

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    move-wide/from16 v34, v6

    .line 1421
    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1423
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1424
    iput v9, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    goto/16 :goto_5

    .line 1426
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_13
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageShift"

    .line 1427
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v36

    .line 1428
    const-string/jumbo v37, "DELETED"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v38, v0

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    move-wide/from16 v34, v6

    .line 1426
    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1429
    .restart local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1430
    iput v9, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 1459
    .end local v4    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v6    # "id":J
    .end local v8    # "type":I
    .end local v9    # "threadId":I
    .end local v10    # "read":I
    .end local v11    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .restart local v41    # "msg$iterator":Ljava/util/Iterator;
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v46

    .line 1313
    return-void
.end method

.method private initContactsList()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v20, "initContactsList"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 1270
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v20, "initContactsList() no mContactUri - nothing to init"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-void

    .line 1273
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 1274
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1275
    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 1276
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1274
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1278
    .local v15, "c":Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1280
    .local v17, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    if-eqz v15, :cond_3

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;)V

    .line 1282
    .local v16, "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    .line 1284
    :cond_2
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1285
    .local v18, "convoId":J
    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-nez v2, :cond_5

    .line 1302
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1305
    .end local v16    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .end local v18    # "convoId":J
    :cond_3
    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1307
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v20

    monitor-enter v20

    .line 1308
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1309
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v20

    .line 1267
    return-void

    .line 1287
    .restart local v16    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .restart local v18    # "convoId":J
    :cond_5
    :try_start_2
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v2, :cond_6

    invoke-static {v15}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 1288
    :cond_6
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1289
    .local v5, "uci":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1290
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, "displayName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1292
    .local v8, "presenceStatus":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1293
    .local v9, "presenceState":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1294
    .local v10, "lastActivity":J
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1295
    .local v12, "chatState":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1296
    .local v13, "priority":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1298
    .local v14, "btUid":Ljava/lang/String;
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct/range {v4 .. v14}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    .line 1301
    .local v4, "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    move-object/from16 v0, v17

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1304
    .end local v4    # "contact":Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .end local v5    # "uci":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "presenceStatus":Ljava/lang/String;
    .end local v9    # "presenceState":I
    .end local v10    # "lastActivity":J
    .end local v12    # "chatState":I
    .end local v13    # "priority":I
    .end local v14    # "btUid":Ljava/lang/String;
    .end local v16    # "cInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    .end local v18    # "convoId":J
    :catchall_0
    move-exception v2

    .line 1305
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1304
    :cond_7
    throw v2

    .line 1307
    :catchall_1
    move-exception v2

    monitor-exit v20

    throw v2
.end method

.method private initMsgList()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1185
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "initMsgList"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v3, :cond_7

    .line 1189
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1191
    .local v22, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1192
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1191
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1194
    .local v19, "c":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1196
    :cond_1
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1197
    .local v4, "id":J
    const-string/jumbo v3, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1198
    .local v6, "type":I
    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1199
    .local v7, "threadId":I
    const-string/jumbo v3, "read"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1201
    .local v8, "read":I
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1202
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1206
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v8    # "read":I
    :cond_2
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1209
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 1210
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1211
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v9

    .line 1214
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1216
    .local v21, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1218
    if-eqz v19, :cond_5

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1220
    :cond_4
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1221
    .restart local v4    # "id":J
    const-string/jumbo v3, "msg_box"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1222
    .restart local v6    # "type":I
    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1223
    .restart local v7    # "threadId":I
    const-string/jumbo v3, "read"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1225
    .restart local v8    # "read":I
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1226
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_4

    .line 1230
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v6    # "type":I
    .end local v7    # "threadId":I
    .end local v8    # "read":I
    :cond_5
    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 1234
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1235
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v9

    .line 1239
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v21    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .end local v22    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_b

    .line 1240
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1241
    .local v20, "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 1242
    .local v10, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1245
    .restart local v19    # "c":Landroid/database/Cursor;
    if-eqz v19, :cond_9

    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1247
    :cond_8
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1249
    .restart local v4    # "id":J
    const-string/jumbo v3, "folder_id"

    .line 1248
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 1251
    .local v16, "folderId":J
    const-string/jumbo v3, "flag_read"

    .line 1250
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1252
    .local v18, "readFlag":I
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v12, v2

    move-object/from16 v13, p0

    move-wide v14, v4

    invoke-direct/range {v12 .. v18}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 1253
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v3

    if-nez v3, :cond_8

    .line 1257
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v4    # "id":J
    .end local v16    # "folderId":J
    .end local v18    # "readFlag":I
    :cond_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1260
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 1261
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1262
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit v9

    .line 1184
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v20    # "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_b
    return-void

    .line 1205
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v22    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_0
    move-exception v3

    .line 1206
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_c
    throw v3

    .line 1209
    :catchall_1
    move-exception v3

    monitor-exit v9

    throw v3

    .line 1229
    .restart local v21    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_2
    move-exception v3

    .line 1230
    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1229
    :cond_d
    throw v3

    .line 1233
    :catchall_3
    move-exception v3

    monitor-exit v9

    throw v3

    .line 1256
    .end local v21    # "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .end local v22    # "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v20    # "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_4
    move-exception v3

    .line 1257
    if-eqz v19, :cond_e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1256
    :cond_e
    throw v3

    .line 1260
    :catchall_5
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method private moveDraftToOutbox(J)V
    .locals 3
    .param p1, "handle"    # J

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    .line 2671
    return-void
.end method

.method private static moveMmsToFolder(JLandroid/content/ContentResolver;I)V
    .locals 8
    .param p0, "handle"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "folder"    # I

    .prologue
    const/4 v2, 0x0

    .line 2683
    const-wide/16 v4, -0x1

    cmp-long v0, p0, v4

    if-eqz v0, :cond_1

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " _id= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2685
    .local v3, "whereClause":Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    .line 2686
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2688
    .local v7, "queryResult":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 2689
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2690
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2691
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2693
    .local v6, "data":Landroid/content/ContentValues;
    const-string/jumbo v0, "msg_box"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2694
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v6, v3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2695
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moved MMS message to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    .end local v6    # "data":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2681
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v7    # "queryResult":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 2698
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v7    # "queryResult":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not move MMS message to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2700
    :catchall_0
    move-exception v0

    .line 2701
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2700
    :cond_3
    throw v0
.end method

.method private pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;)J
    .locals 26
    .param p1, "folder"    # I
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .prologue
    .line 2714
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2715
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "msg_box"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2716
    const-string/jumbo v4, "read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2717
    const-string/jumbo v4, "seen"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2718
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2719
    const-string/jumbo v4, "sub"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2725
    const-string/jumbo v4, "sub_cs"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2727
    :cond_0
    const-string/jumbo v4, "ct_t"

    const-string/jumbo v7, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    const-string/jumbo v4, "exp"

    const v7, 0x93a80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2729
    const-string/jumbo v4, "m_cls"

    const-string/jumbo v7, "personal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const-string/jumbo v4, "m_type"

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2731
    const-string/jumbo v4, "v"

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2732
    const-string/jumbo v4, "pri"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2733
    const-string/jumbo v4, "rr"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2734
    const-string/jumbo v4, "tr_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "T"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    const-string/jumbo v4, "d_rpt"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2736
    const-string/jumbo v4, "locked"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2737
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2738
    const-string/jumbo v4, "text_only"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2739
    :cond_1
    const-string/jumbo v4, "m_size"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2742
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 2743
    .local v21, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2744
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2745
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2747
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v23

    monitor-enter v23

    .line 2749
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 2751
    if-nez v5, :cond_3

    .line 2753
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unabled to insert MMS "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, "Uri: "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2754
    const-wide/16 v24, -0x1

    monitor-exit v23

    return-wide v24

    .line 2721
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v21    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v4, "sub"

    const-string/jumbo v7, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2759
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v21    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 2761
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2762
    const-string/jumbo v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2763
    .local v8, "id":J
    const-string/jumbo v4, "msg_box"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2764
    .local v10, "type":I
    const-string/jumbo v4, "thread_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2765
    .local v11, "threadId":I
    const-string/jumbo v4, "read"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2770
    .local v12, "readStatus":I
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 2771
    .local v6, "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 2772
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2776
    .end local v6    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v8    # "id":J
    .end local v10    # "type":I
    .end local v11    # "threadId":I
    .end local v12    # "readStatus":I
    :cond_4
    if-eqz v13, :cond_5

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    monitor-exit v23

    .line 2780
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 2781
    .local v18, "handle":J
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " NEW URI "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_6
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_b

    .line 2787
    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "No MMS parts present..."

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2876
    :cond_7
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 2877
    const-string/jumbo v4, "contact_id"

    const-string/jumbo v7, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string/jumbo v4, "address"

    const-string/jumbo v7, "insert-address-token"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string/jumbo v4, "type"

    const/16 v7, 0x89

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2880
    const-string/jumbo v4, "charset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/addr"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 2884
    if-eqz v5, :cond_8

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_8

    .line 2885
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " NEW URI "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 2889
    const-string/jumbo v4, "contact_id"

    const-string/jumbo v7, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    const-string/jumbo v4, "address"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const-string/jumbo v4, "type"

    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2892
    const-string/jumbo v4, "charset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/addr"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 2896
    if-eqz v5, :cond_9

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_9

    .line 2897
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " NEW URI "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_9
    return-wide v18

    .line 2775
    .end local v18    # "handle":J
    :catchall_0
    move-exception v4

    .line 2776
    if-eqz v13, :cond_a

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2775
    :cond_a
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2747
    .end local v13    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    monitor-exit v23

    throw v4

    .line 2789
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v18    # "handle":J
    :cond_b
    :try_start_6
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Adding "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2790
    const-string/jumbo v23, " parts to the data base."

    .line 2789
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "part$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 2793
    .local v17, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    const/4 v14, 0x1

    .line 2794
    .local v14, "count":I
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 2795
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 2796
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "TEXT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 2795
    if-eqz v4, :cond_15

    .line 2797
    const-string/jumbo v4, "ct"

    const-string/jumbo v7, "text/plain"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    const-string/jumbo v4, "chset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2799
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 2800
    const-string/jumbo v4, "fn"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const-string/jumbo v4, "name"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    :goto_3
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 2808
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    :goto_4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 2818
    const-string/jumbo v4, "cl"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    :goto_5
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2828
    const-string/jumbo v4, "cd"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    :cond_e
    const-string/jumbo v4, "text"

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->getDataAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/part"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 2833
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added TEXT part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_f
    :goto_6
    if-eqz v5, :cond_d

    .line 2865
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Added part with content-type: "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2866
    const-string/jumbo v23, " to Uri: "

    .line 2865
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2866
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2865
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 2870
    .end local v14    # "count":I
    .end local v17    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v20    # "part$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v16

    .line 2871
    .local v16, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "BluetoothMapContentObserver"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2803
    .end local v16    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v14    # "count":I
    .restart local v17    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v20    # "part$iterator":Ljava/util/Iterator;
    :cond_10
    :try_start_7
    const-string/jumbo v4, "fn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "text_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ".txt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string/jumbo v4, "name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "text_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ".txt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 2872
    .end local v14    # "count":I
    .end local v17    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .end local v20    # "part$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v15

    .line 2873
    .local v15, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BluetoothMapContentObserver"

    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2810
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v14    # "count":I
    .restart local v17    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .restart local v20    # "part$iterator":Ljava/util/Iterator;
    :cond_11
    :try_start_8
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 2811
    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ">"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2813
    :cond_12
    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<text_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ">"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2820
    :cond_13
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 2821
    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ".txt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2823
    :cond_14
    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "text_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ".txt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2835
    :cond_15
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 2836
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "SMIL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 2835
    if-eqz v4, :cond_19

    .line 2837
    const-string/jumbo v4, "seq"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2838
    const-string/jumbo v4, "ct"

    const-string/jumbo v7, "application/smil"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 2840
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    :goto_7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 2845
    const-string/jumbo v4, "cl"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :goto_8
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 2851
    const-string/jumbo v4, "cd"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    :cond_16
    const-string/jumbo v4, "fn"

    const-string/jumbo v7, "smil.xml"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string/jumbo v4, "name"

    const-string/jumbo v7, "smil.xml"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const-string/jumbo v4, "text"

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    move-object/from16 v23, v0

    const-string/jumbo v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/part"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 2858
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added SMIL part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2842
    :cond_17
    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<smil_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ">"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2847
    :cond_18
    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "smil_"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v23, ".xml"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2861
    :cond_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V

    .line 2862
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added OTHER part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 3327
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3328
    const-string/jumbo v2, "phone"

    .line 3327
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3329
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3326
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 4

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 3391
    const-string/jumbo v2, "thread_id = -1"

    const/4 v3, 0x0

    .line 3390
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3388
    return-void
.end method

.method private resendPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 3340
    const-string/jumbo v3, "type = 4"

    .line 3341
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3344
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3346
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3347
    .local v8, "id":J
    const-string/jumbo v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3348
    .local v7, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3349
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_4

    .line 3355
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3358
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3338
    :cond_3
    return-void

    .line 3350
    .restart local v7    # "msgBody":Ljava/lang/String;
    .restart local v8    # "id":J
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_4
    :try_start_1
    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    if-nez v0, :cond_1

    .line 3353
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3354
    invoke-virtual {p0, v10, v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3357
    .end local v7    # "msgBody":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :catchall_0
    move-exception v0

    .line 3358
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3357
    :cond_5
    throw v0
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 8
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 1094
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-nez v3, :cond_1

    .line 1095
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "mTransmitEvents == false - don\'t send event."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    return-void

    .line 1099
    :cond_1
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    const-string/jumbo v5, " "

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    const-string/jumbo v5, " "

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    const-string/jumbo v5, " "

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    const-string/jumbo v5, " "

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    const-string/jumbo v5, " "

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1104
    :cond_2
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "sendEvent: No MNS client registered or connected- don\'t send event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1109
    :cond_3
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 1114
    .local v0, "eventFilter":J
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "NewMessage"

    if-ne v3, v4, :cond_4

    .line 1115
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventNewMessage(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1116
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void

    .line 1119
    :cond_4
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageDeleted"

    if-ne v3, v4, :cond_5

    .line 1120
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageDeleted(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1121
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1124
    :cond_5
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageRemoved"

    if-ne v3, v4, :cond_6

    .line 1125
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageRemoved(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1126
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1129
    :cond_6
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageShift"

    if-ne v3, v4, :cond_7

    .line 1130
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageShift(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1131
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void

    .line 1134
    :cond_7
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliverySuccess"

    if-ne v3, v4, :cond_8

    .line 1135
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliverySuccess(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1136
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void

    .line 1139
    :cond_8
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingSuccess"

    if-ne v3, v4, :cond_9

    .line 1140
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingSuccess(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1141
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-void

    .line 1144
    :cond_9
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingFailure"

    if-ne v3, v4, :cond_a

    .line 1145
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingFailed(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1146
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1149
    :cond_a
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliveryFailure"

    if-ne v3, v4, :cond_b

    .line 1150
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliveryFailed(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1151
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1154
    :cond_b
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ReadStatusChanged"

    if-ne v3, v4, :cond_c

    .line 1155
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventReadStatusChanged(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1156
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void

    .line 1159
    :cond_c
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ConversationChanged"

    if-ne v3, v4, :cond_d

    .line 1160
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1161
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void

    .line 1164
    :cond_d
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ParticipantPresenceChanged"

    if-ne v3, v4, :cond_e

    .line 1165
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1166
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 1169
    :cond_e
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ParticipantChatStateChanged"

    if-ne v3, v4, :cond_f

    .line 1170
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1171
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 1177
    :cond_f
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v2

    .line 1180
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Exception - should not happen: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendEventConversationChanged(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 443
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventDeliveryFailed(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 435
    const-wide/16 v0, 0x40

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventDeliverySuccess(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 431
    const-wide/16 v0, 0x20

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageDeleted(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 415
    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageRemoved(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 455
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageShift(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 419
    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventNewMessage(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 411
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventParticipantChatstateChanged(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 451
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventParticipantPresenceChanged(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 447
    const-wide/16 v0, 0x800

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventReadStatusChanged(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 439
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventSendingFailed(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 427
    const-wide/16 v0, 0x10

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventSendingSuccess(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 423
    const-wide/16 v0, 0x8

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setContactList(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "changesDetected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setContactList(Ljava/util/Map;)V

    .line 402
    return-void
.end method

.method private setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z
    .locals 23
    .param p1, "mCurrentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p2, "uriStr"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "status"    # I

    .prologue
    .line 2041
    const/4 v12, 0x0

    .line 2042
    .local v12, "res":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "Message"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 2044
    .local v14, "uri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 2045
    .local v13, "updateCount":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2046
    .local v4, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 2047
    const-string/jumbo v16, "DELETED"

    .line 2046
    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 2048
    .local v5, "deleteFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string/jumbo v15, "_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2049
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v16

    monitor-enter v16

    .line 2050
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v15

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2051
    .local v11, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v15, 0x1

    move/from16 v0, p5

    if-ne v0, v15, :cond_7

    .line 2053
    const-wide/16 v8, -0x1

    .line 2054
    .local v8, "folderId":J
    if-eqz v5, :cond_0

    .line 2055
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v8

    .line 2057
    :cond_0
    const-string/jumbo v15, "folder_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v14, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2061
    if-lez v13, :cond_6

    .line 2062
    const/4 v12, 0x1

    .line 2063
    if-eqz v11, :cond_1

    .line 2064
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 2067
    iput-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 2069
    :cond_1
    const-string/jumbo v15, "BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Deleted MSG: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " from folderId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    .end local v8    # "folderId":J
    :cond_2
    :goto_0
    sget-boolean v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v15, :cond_4

    .line 2115
    const-string/jumbo v7, "unknown"

    .line 2116
    .local v7, "folderName":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 2117
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v6

    .line 2118
    .local v6, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v6, :cond_3

    .line 2119
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2122
    .end local v6    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_3
    const-string/jumbo v15, "BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setEmailMessageStatusDelete: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2123
    const-string/jumbo v18, " status: "

    .line 2122
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "folderName":Ljava/lang/String;
    :cond_4
    monitor-exit v16

    .line 2126
    if-nez v12, :cond_5

    .line 2127
    const-string/jumbo v15, "BluetoothMapContentObserver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Set delete status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " failed."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_5
    return v12

    .line 2071
    .restart local v8    # "folderId":J
    :cond_6
    :try_start_1
    const-string/jumbo v15, "BluetoothMapContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Msg: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " - Set delete status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2072
    const-string/jumbo v18, " failed for folderId "

    .line 2071
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2049
    .end local v8    # "folderId":J
    .end local v11    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 2074
    .restart local v11    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_7
    if-nez p5, :cond_2

    .line 2077
    if-eqz v11, :cond_2

    if-eqz v5, :cond_2

    .line 2078
    :try_start_2
    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move-wide/from16 v18, v0

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-nez v15, :cond_2

    .line 2080
    const-wide/16 v8, -0x1

    .line 2082
    .restart local v8    # "folderId":J
    const-string/jumbo v15, "INBOX"

    .line 2081
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v10

    .line 2083
    .local v10, "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v11, :cond_8

    iget-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v15, v18, v20

    if-eqz v15, :cond_8

    .line 2084
    iget-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 2092
    :goto_1
    const-string/jumbo v15, "folder_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v14, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2094
    if-lez v13, :cond_b

    .line 2095
    const/4 v12, 0x1

    .line 2102
    if-eqz v10, :cond_a

    .line 2103
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    goto/16 :goto_0

    .line 2086
    :cond_8
    if-eqz v10, :cond_9

    .line 2087
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v8

    .line 2089
    :cond_9
    const-string/jumbo v15, "BluetoothMapContentObserver"

    const-string/jumbo v17, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2105
    :cond_a
    iput-wide v8, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    goto/16 :goto_0

    .line 2108
    :cond_b
    const-string/jumbo v15, "BluetoothMapContentObserver"

    const-string/jumbo v17, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private setMsgListMms(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "changesDetected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "msgListMms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 371
    if-eqz p2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMms(Ljava/util/Map;)V

    .line 369
    return-void
.end method

.method private setMsgListMsg(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "changesDetected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "msgListMsg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMsg(Ljava/util/Map;)V

    .line 383
    return-void
.end method

.method private setMsgListSms(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "changesDetected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "msgListSms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 357
    if-eqz p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListSms(Ljava/util/Map;)V

    .line 355
    return-void
.end method

.method private unDeleteMessageMms(J)Z
    .locals 19
    .param p1, "handle"    # J

    .prologue
    .line 2173
    const/16 v16, 0x0

    .line 2174
    .local v16, "res":Z
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2175
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2177
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2178
    const-string/jumbo v2, "thread_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 2179
    .local v17, "threadId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 2183
    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2184
    .local v10, "id":J
    const-string/jumbo v2, "msg_box"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2185
    .local v13, "msgBox":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_3

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 2187
    const/16 v4, 0x89

    .line 2186
    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .line 2192
    .local v8, "address":Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 2193
    .local v15, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2195
    .local v14, "oldThreadId":Ljava/lang/Long;
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2196
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2197
    .local v12, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v12, :cond_0

    .line 2198
    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2205
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v4

    .line 2208
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2213
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v13    # "msgBox":I
    .end local v14    # "oldThreadId":Ljava/lang/Long;
    .end local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const/16 v16, 0x1

    .line 2216
    .end local v17    # "threadId":I
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2218
    :cond_2
    return v16

    .line 2189
    .restart local v10    # "id":J
    .restart local v13    # "msgBox":I
    .restart local v17    # "threadId":I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 2190
    const/16 v4, 0x97

    .line 2189
    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "address":Ljava/lang/String;
    goto :goto_0

    .line 2195
    .restart local v14    # "oldThreadId":Ljava/lang/Long;
    .restart local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2215
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v13    # "msgBox":I
    .end local v14    # "oldThreadId":Ljava/lang/Long;
    .end local v15    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "threadId":I
    :catchall_1
    move-exception v2

    .line 2216
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2215
    :cond_4
    throw v2

    .line 2210
    .restart local v17    # "threadId":I
    :cond_5
    :try_start_4
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message not in deleted folder: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2211
    const-string/jumbo v5, " threadId "

    .line 2210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method private unDeleteMessageSms(J)Z
    .locals 13
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 2255
    const/4 v11, 0x0

    .line 2256
    .local v11, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2257
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2259
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2260
    const-string/jumbo v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2261
    .local v12, "threadId":I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_4

    .line 2262
    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2263
    .local v6, "address":Ljava/lang/String;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2264
    .local v10, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2265
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2266
    .local v9, "oldThreadId":Ljava/lang/Long;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2267
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2268
    .local v8, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v8, :cond_0

    .line 2269
    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2282
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2

    .line 2285
    const-string/jumbo v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2290
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v9    # "oldThreadId":Ljava/lang/Long;
    .end local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/4 v11, 0x1

    .line 2293
    .end local v12    # "threadId":I
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2295
    :cond_2
    return v11

    .line 2266
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v9    # "oldThreadId":Ljava/lang/Long;
    .restart local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "threadId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2292
    .end local v6    # "address":Ljava/lang/String;
    .end local v9    # "oldThreadId":Ljava/lang/Long;
    .end local v10    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "threadId":I
    :catchall_1
    move-exception v0

    .line 2293
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2292
    :cond_3
    throw v0

    .line 2287
    .restart local v12    # "threadId":I
    :cond_4
    :try_start_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2288
    const-string/jumbo v3, " threadId "

    .line 2287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 3333
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3334
    const-string/jumbo v2, "phone"

    .line 3333
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3335
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3332
    return-void
.end method

.method private updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "valueString"    # Ljava/lang/String;
    .param p3, "threadId"    # J

    .prologue
    const/4 v2, 0x0

    .line 2133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2134
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2135
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2132
    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V
    .locals 7
    .param p1, "handle"    # J
    .param p3, "part"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2904
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2905
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "mid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2906
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2907
    const-string/jumbo v4, "ct"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    :goto_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2912
    const-string/jumbo v4, "cid"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    :goto_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2922
    const-string/jumbo v4, "cl"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    :goto_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2931
    const-string/jumbo v4, "cd"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    :cond_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2933
    const-string/jumbo v4, "fn"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    const-string/jumbo v4, "name"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2941
    .local v1, "partUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2944
    .local v2, "res":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 2945
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2946
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2903
    return-void

    .line 2909
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "partUri":Landroid/net/Uri;
    .end local v2    # "res":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MMS has no CONTENT_TYPE for part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2914
    :cond_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2915
    const-string/jumbo v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2917
    :cond_3
    const-string/jumbo v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2924
    :cond_4
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2925
    const-string/jumbo v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2927
    :cond_5
    const-string/jumbo v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2937
    :cond_6
    const-string/jumbo v4, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    const-string/jumbo v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 3413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 3414
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 3415
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    .line 3418
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    .line 3419
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    .line 3420
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    .line 3412
    return-void
.end method

.method eventMaskContainsContacts(J)Z
    .locals 1
    .param p1, "mask"    # J

    .prologue
    .line 934
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result v0

    return v0
.end method

.method eventMaskContainsCovo(J)Z
    .locals 1
    .param p1, "mask"    # J

    .prologue
    .line 938
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result v0

    .line 938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getObserverRemoteFeatureMask()I
    .locals 3

    .prologue
    .line 331
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getObserverRemoteFeatureMask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    const-string/jumbo v2, " mMapSupportedFeatures: "

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    return v0
.end method

.method public handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 3438
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "handleMmsSendIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3441
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "MNS not connected - use static handling"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    return v6

    .line 3444
    :cond_0
    const-string/jumbo v2, "HANDLE"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3445
    .local v4, "handle":J
    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3446
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    .line 3447
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 3448
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "Intent received for an invalid handle"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    return v12

    .line 3451
    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 3452
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v2, :cond_2

    .line 3453
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v3, "SendingFailure"

    .line 3454
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v2, p0

    .line 3453
    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3455
    .local v1, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3467
    .end local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_2
    :goto_0
    return v12

    .line 3458
    :cond_3
    const-string/jumbo v2, "transparent"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3459
    .local v9, "transparent":I
    if-eqz v9, :cond_2

    .line 3460
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v2, :cond_2

    .line 3461
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v3, "SendingSuccess"

    .line 3462
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v2, p0

    .line 3461
    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3463
    .restart local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3425
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3424
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    .line 3426
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    .line 3427
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 3429
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 3430
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3431
    const/4 v1, 0x1

    return v1

    .line 3434
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public init()V
    .locals 1

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    .line 3408
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    .line 3409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 3404
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)J
    .locals 62
    .param p1, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "folderElement"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "emailBaseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2438
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v10, "pushMessage"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v56

    .line 2440
    .local v56, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_0

    .line 2441
    const/4 v14, 0x0

    .line 2442
    .local v14, "transparent":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v15

    .line 2443
    .local v15, "retry":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v42

    .line 2444
    .local v42, "charset":I
    const-wide/16 v6, -0x1

    .line 2445
    .local v6, "handle":J
    const-wide/16 v8, -0x1

    .line 2447
    .local v8, "folderId":J
    if-nez v56, :cond_1

    .line 2448
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v10, "empty recipient list"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-wide/16 v20, -0x1

    return-wide v20

    .line 2441
    .end local v6    # "handle":J
    .end local v8    # "folderId":J
    .end local v14    # "transparent":I
    .end local v15    # "retry":I
    .end local v42    # "charset":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v14

    .restart local v14    # "transparent":I
    goto :goto_0

    .line 2452
    .restart local v6    # "handle":J
    .restart local v8    # "folderId":J
    .restart local v15    # "retry":I
    .restart local v42    # "charset":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2454
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    .end local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v19

    .line 2455
    .local v19, "msgBody":Ljava/lang/String;
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_2

    .line 2456
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v49

    .line 2457
    .local v49, "length":I
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pushMessage: message string length = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const-string/jumbo v5, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 2459
    .local v50, "messages":[Ljava/lang/String;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pushMessage: messages count="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v50

    array-length v13, v0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/16 v48, 0x0

    .local v48, "i":I
    :goto_1
    move-object/from16 v0, v50

    array-length v5, v0

    move/from16 v0, v48

    if-ge v0, v5, :cond_2

    .line 2461
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "part "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, ":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v50, v48

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    add-int/lit8 v48, v48, 0x1

    goto :goto_1

    .line 2464
    .end local v48    # "i":I
    .end local v49    # "length":I
    .end local v50    # "messages":[Ljava/lang/String;
    :cond_2
    const/16 v51, 0x0

    .line 2465
    .local v51, "os":Ljava/io/FileOutputStream;
    const/16 v47, 0x0

    .line 2466
    .local v47, "fdOut":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "Message"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v59

    .line 2467
    .local v59, "uriInsert":Landroid/net/Uri;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pushMessage - uriInsert= "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v59 .. v59}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2468
    const-string/jumbo v13, ", intoFolder id="

    .line 2467
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2468
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v20

    .line 2467
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    .line 2472
    :try_start_0
    new-instance v61, Landroid/content/ContentValues;

    invoke-direct/range {v61 .. v61}, Landroid/content/ContentValues;-><init>()V

    .line 2473
    .local v61, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v8

    .line 2474
    const-string/jumbo v5, "folder_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v61

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v60

    .line 2476
    .local v60, "uriNew":Landroid/net/Uri;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage - uriNew= "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v60 .. v60}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-virtual/range {v60 .. v60}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-wide v6

    .line 2480
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string/jumbo v10, "w"

    move-object/from16 v0, v60

    invoke-virtual {v5, v0, v10}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v47

    .line 2481
    .local v47, "fdOut":Landroid/os/ParcelFileDescriptor;
    new-instance v52, Ljava/io/FileOutputStream;

    invoke-virtual/range {v47 .. v47}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2483
    .end local v51    # "os":Ljava/io/FileOutputStream;
    .local v52, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    const/16 v16, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2492
    if-eqz v52, :cond_3

    .line 2493
    :try_start_3
    invoke-virtual/range {v52 .. v52}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2496
    :cond_3
    :goto_2
    if-eqz v47, :cond_4

    .line 2497
    :try_start_4
    invoke-virtual/range {v47 .. v47}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2504
    :cond_4
    :goto_3
    :try_start_5
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 2505
    .local v4, "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 2507
    const-string/jumbo v5, "OUTBOX"

    .line 2506
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v20

    cmp-long v5, v8, v20

    if-nez v5, :cond_5

    .line 2508
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 2510
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v13

    .line 2624
    .end local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v52    # "os":Ljava/io/FileOutputStream;
    .end local v59    # "uriInsert":Landroid/net/Uri;
    .end local v60    # "uriNew":Landroid/net/Uri;
    .end local v61    # "values":Landroid/content/ContentValues;
    :cond_6
    return-wide v6

    .line 2494
    .restart local v19    # "msgBody":Ljava/lang/String;
    .restart local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v59    # "uriInsert":Landroid/net/Uri;
    .restart local v60    # "uriNew":Landroid/net/Uri;
    .restart local v61    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v44

    .local v44, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v5, "BluetoothMapContentObserver"

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 2470
    .end local v44    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object/from16 v51, v52

    .end local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v52    # "os":Ljava/io/FileOutputStream;
    .end local v60    # "uriNew":Landroid/net/Uri;
    .end local v61    # "values":Landroid/content/ContentValues;
    :goto_5
    monitor-exit v13

    throw v5

    .line 2498
    .restart local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v60    # "uriNew":Landroid/net/Uri;
    .restart local v61    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v44

    .restart local v44    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "BluetoothMapContentObserver"

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 2487
    .end local v44    # "e":Ljava/io/IOException;
    .end local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v51    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v45

    .line 2488
    .end local v51    # "os":Ljava/io/FileOutputStream;
    .local v45, "e":Ljava/lang/NullPointerException;
    :goto_6
    :try_start_8
    const-string/jumbo v5, "BluetoothMapContentObserver"

    move-object/from16 v0, v45

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2489
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Unable to parse message."

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2490
    .end local v45    # "e":Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v5

    .line 2492
    :goto_7
    if-eqz v51, :cond_7

    .line 2493
    :try_start_9
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2496
    :cond_7
    :goto_8
    if-eqz v47, :cond_8

    .line 2497
    :try_start_a
    invoke-virtual/range {v47 .. v47}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2490
    :cond_8
    :goto_9
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2470
    .end local v60    # "uriNew":Landroid/net/Uri;
    .end local v61    # "values":Landroid/content/ContentValues;
    :catchall_2
    move-exception v5

    goto :goto_5

    .line 2484
    .restart local v51    # "os":Ljava/io/FileOutputStream;
    .restart local v60    # "uriNew":Landroid/net/Uri;
    .restart local v61    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v43

    .line 2485
    .end local v51    # "os":Ljava/io/FileOutputStream;
    .local v43, "e":Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_c
    const-string/jumbo v5, "BluetoothMapContentObserver"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v10, "Unable to open file stream"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2494
    .end local v43    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v44

    .restart local v44    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v10, "BluetoothMapContentObserver"

    move-object/from16 v0, v44

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2498
    .end local v44    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v44

    .restart local v44    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "BluetoothMapContentObserver"

    move-object/from16 v0, v44

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_9

    .line 2505
    .end local v44    # "e":Ljava/io/IOException;
    .restart local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 2513
    .end local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .end local v52    # "os":Ljava/io/FileOutputStream;
    .end local v59    # "uriInsert":Landroid/net/Uri;
    .end local v60    # "uriNew":Landroid/net/Uri;
    .end local v61    # "values":Landroid/content/ContentValues;
    .restart local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    :cond_a
    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .local v55, "recipient$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 2515
    .local v54, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual/range {v54 .. v54}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v5

    if-nez v5, :cond_b

    .line 2518
    invoke-virtual/range {v54 .. v54}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v12

    .line 2519
    .local v12, "phone":Ljava/lang/String;
    invoke-virtual/range {v54 .. v54}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v46

    .line 2520
    .local v46, "email":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2521
    .local v11, "folder":Ljava/lang/String;
    const/16 v22, 0x0

    .line 2522
    .local v22, "read":Z
    const/16 v23, 0x1

    .line 2523
    .local v23, "deliveryReport":Z
    const/16 v19, 0x0

    .line 2528
    .local v19, "msgBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v5, p1

    .line 2529
    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v5, p1

    .line 2530
    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMessageAsText()Ljava/lang/String;

    move-result-object v19

    .line 2531
    .local v19, "msgBody":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v57

    .line 2532
    .local v57, "smsMng":Landroid/telephony/SmsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v53

    .line 2533
    .local v53, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v58

    .line 2534
    .local v58, "smsParts":I
    const/16 v5, 0xa

    move/from16 v0, v58

    if-gt v0, v5, :cond_d

    .line 2535
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pushMessage - converting MMS to SMS, sms parts="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v58

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 2546
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v53    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v57    # "smsMng":Landroid/telephony/SmsManager;
    .end local v58    # "smsParts":I
    :cond_c
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v13, p1

    .line 2548
    check-cast v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;II)J

    move-result-wide v6

    goto/16 :goto_b

    .line 2539
    .restart local v19    # "msgBody":Ljava/lang/String;
    .restart local v53    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v57    # "smsMng":Landroid/telephony/SmsManager;
    .restart local v58    # "smsParts":I
    :cond_d
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v10, "pushMessage - MMS text only but to big to convert to SMS"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const/16 v19, 0x0

    .local v19, "msgBody":Ljava/lang/String;
    goto :goto_c

    .line 2550
    .end local v19    # "msgBody":Ljava/lang/String;
    .end local v53    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v57    # "smsMng":Landroid/telephony/SmsManager;
    .end local v58    # "smsParts":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2551
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2550
    if-eqz v5, :cond_1a

    .line 2553
    :cond_f
    if-nez v19, :cond_10

    move-object/from16 v5, p1

    .line 2554
    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v19

    .line 2556
    :cond_10
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2557
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v10, "PushMsg: Empty msgBody "

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "push EMPTY message: Invalid Body"

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2563
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 2565
    .local v17, "contentUri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v10

    monitor-enter v10

    .line 2566
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    .line 2567
    const-string/jumbo v20, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v18, v12

    .line 2566
    invoke-static/range {v16 .. v23}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v25

    .line 2569
    .local v25, "uri":Landroid/net/Uri;
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_12

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Sms.addMessageToUri() returned: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_12
    if-nez v25, :cond_13

    .line 2571
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pushMessage - failure on add to uri "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2573
    const-wide/16 v20, -0x1

    monitor-exit v10

    return-wide v20

    .line 2575
    :cond_13
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    sget-object v26, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result-object v33

    .line 2580
    .local v33, "c":Landroid/database/Cursor;
    if-eqz v33, :cond_17

    :try_start_10
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2581
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 2582
    .local v28, "id":J
    const-string/jumbo v5, "type"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2583
    .local v30, "type":I
    const-string/jumbo v5, "thread_id"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2584
    .local v31, "threadId":I
    const-string/jumbo v5, "read"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 2585
    .local v32, "readFlag":I
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_14

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "add message with id="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2586
    const-string/jumbo v16, " type="

    .line 2585
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2586
    const-string/jumbo v16, " threadId="

    .line 2585
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2587
    const-string/jumbo v16, " readFlag="

    .line 2585
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2587
    const-string/jumbo v16, "to mMsgListSms"

    .line 2585
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_14
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 2589
    .restart local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v5, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2598
    if-eqz v33, :cond_15

    :try_start_11
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2601
    :cond_15
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2604
    const-string/jumbo v5, "OUTBOX"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2605
    new-instance v34, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object/from16 v35, p0

    move-wide/from16 v36, v6

    move/from16 v38, v14

    move/from16 v39, v15

    move-object/from16 v40, v12

    move-object/from16 v41, v25

    invoke-direct/range {v34 .. v41}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    .line 2607
    .local v34, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, v34

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    .line 2609
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_16

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v13, "sendMessage returned..."

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .end local v34    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_16
    monitor-exit v10

    goto/16 :goto_b

    .line 2592
    .end local v4    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v28    # "id":J
    .end local v30    # "type":I
    .end local v31    # "threadId":I
    .end local v32    # "readFlag":I
    :cond_17
    :try_start_12
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Message: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " no longer exist!"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 2598
    if-eqz v33, :cond_18

    :try_start_13
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2595
    :cond_18
    const-wide/16 v20, -0x1

    monitor-exit v10

    return-wide v20

    .line 2597
    :catchall_3
    move-exception v5

    .line 2598
    if-eqz v33, :cond_19

    :try_start_14
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2597
    :cond_19
    throw v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 2565
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v33    # "c":Landroid/database/Cursor;
    :catchall_4
    move-exception v5

    monitor-exit v10

    throw v5

    .line 2616
    .end local v17    # "contentUri":Landroid/net/Uri;
    :cond_1a
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v10, "pushMessage - failure on type "

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const-wide/16 v20, -0x1

    return-wide v20

    .line 2490
    .end local v11    # "folder":Ljava/lang/String;
    .end local v12    # "phone":Ljava/lang/String;
    .end local v22    # "read":Z
    .end local v23    # "deliveryReport":Z
    .end local v46    # "email":Ljava/lang/String;
    .end local v54    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v55    # "recipient$iterator":Ljava/util/Iterator;
    .end local p1    # "msg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .local v19, "msgBody":Ljava/lang/String;
    .restart local v47    # "fdOut":Landroid/os/ParcelFileDescriptor;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v59    # "uriInsert":Landroid/net/Uri;
    .restart local v60    # "uriNew":Landroid/net/Uri;
    .restart local v61    # "values":Landroid/content/ContentValues;
    :catchall_5
    move-exception v5

    move-object/from16 v51, v52

    .end local v52    # "os":Ljava/io/FileOutputStream;
    .local v51, "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 2484
    .end local v51    # "os":Ljava/io/FileOutputStream;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v43

    .restart local v43    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v51, v52

    .end local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v51    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 2487
    .end local v43    # "e":Ljava/io/FileNotFoundException;
    .end local v51    # "os":Ljava/io/FileOutputStream;
    .restart local v52    # "os":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v45

    .restart local v45    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v51, v52

    .end local v52    # "os":Ljava/io/FileOutputStream;
    .restart local v51    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method

.method refreshConvoListVersionCounter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1072
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 1074
    return-void

    .line 1081
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :cond_1
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1071
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    .line 1088
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1086
    throw v0
.end method

.method refreshFolderVersionCounter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1042
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 1044
    return-void

    .line 1051
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1053
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_1

    .line 1054
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 1055
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 1057
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1059
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1041
    return-void

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "Unable to update FolderVersionCounter. - Not fatal, but can cause undesirable user experience!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1065
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1067
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1065
    throw v1
.end method

.method public registerObserver()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 965
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "registerObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v1, :cond_1

    .line 968
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_3

    .line 972
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 973
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_2

    .line 974
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 980
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_3

    .line 982
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initContactsList()V

    .line 987
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 990
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_4

    .line 992
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 993
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 996
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_6

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    const-string/jumbo v2, "Message"

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1000
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1006
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1009
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_5

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1012
    const-string/jumbo v2, "ConvoContact"

    .line 1011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ConvoContact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1019
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering observer for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    :cond_5
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 964
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_6
    return-void
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    .locals 16
    .param p1, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 2952
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 2953
    .local v2, "smsMng":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2954
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    .line 2956
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    .line 2957
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 2958
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 2960
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2961
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2970
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2971
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v8, v3, :cond_0

    .line 2974
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2979
    .local v9, "intentDelivery":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2980
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    .line 2979
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2981
    const-string/jumbo v3, "HANDLE"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v9, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2982
    const-string/jumbo v3, "timestamp"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v9, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 2984
    const/high16 v13, 0x8000000

    .line 2983
    invoke-static {v3, v4, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 2986
    .local v11, "pendingIntentDelivery":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2991
    .local v10, "intentSent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2992
    const-string/jumbo v3, "HANDLE"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v10, v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2993
    const-string/jumbo v3, "uri"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2994
    const-string/jumbo v3, "retry"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2995
    const-string/jumbo v3, "transparent"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 2998
    const/high16 v13, 0x8000000

    .line 2997
    invoke-static {v3, v4, v10, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 3001
    .local v12, "pendingIntentSent":Landroid/app/PendingIntent;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3002
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2971
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 3005
    .end local v9    # "intentDelivery":Landroid/content/Intent;
    .end local v10    # "intentSent":Landroid/content/Intent;
    .end local v11    # "pendingIntentDelivery":Landroid/app/PendingIntent;
    .end local v12    # "pendingIntentSent":Landroid/app/PendingIntent;
    :cond_0
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendMessage to "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2950
    .end local v8    # "i":I
    :cond_1
    return-void
.end method

.method public sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;II)J
    .locals 9
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
    .param p4, "transparent"    # I
    .param p5, "retry"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2640
    if-eqz p1, :cond_2

    const-string/jumbo v0, "OUTBOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2641
    const-string/jumbo v0, "DRAFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2640
    if-eqz v0, :cond_2

    .line 2642
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;)J

    move-result-wide v6

    .line 2645
    .local v6, "handle":J
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 2646
    const-string/jumbo v0, "OUTBOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2645
    if-eqz v0, :cond_1

    .line 2647
    sget-object v0, Lcom/android/bluetooth/map/MmsFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2648
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2647
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2649
    .local v2, "btMmsUri":Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2651
    .local v8, "sentIntent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "message/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2652
    const-string/jumbo v0, "type"

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2653
    const-string/jumbo v0, "HANDLE"

    invoke-virtual {v8, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2654
    const-string/jumbo v0, "transparent"

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2655
    const-string/jumbo v0, "retry"

    invoke-virtual {v8, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2657
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2659
    .local v5, "pendingSendIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 2663
    .end local v2    # "btMmsUri":Landroid/net/Uri;
    .end local v5    # "pendingSendIntent":Landroid/app/PendingIntent;
    .end local v8    # "sentIntent":Landroid/content/Intent;
    :cond_1
    return-wide v6

    .line 2666
    .end local v6    # "handle":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot push message to other folders than outbox/draft"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 0
    .param p1, "folderStructure"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 537
    return-void
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "mCurrentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p5, "uriStr"    # Ljava/lang/String;
    .param p6, "statusValue"    # I

    .prologue
    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, "res":Z
    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMessageStatusDeleted: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2311
    const-string/jumbo v3, " type "

    .line 2310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2311
    const-string/jumbo v3, " value "

    .line 2310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move v6, p6

    .line 2314
    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z

    move-result v0

    .line 2333
    .end local v0    # "res":Z
    :cond_0
    :goto_0
    return v0

    .line 2315
    .restart local v0    # "res":Z
    :cond_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_2

    .line 2317
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "setMessageStatusDeleted: IM not handled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2319
    :cond_2
    const/4 v1, 0x1

    if-ne p6, v1, :cond_5

    .line 2320
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_4

    .line 2321
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result v0

    .local v0, "res":Z
    goto :goto_0

    .line 2322
    .local v0, "res":Z
    :cond_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_0

    .line 2323
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result v0

    .local v0, "res":Z
    goto :goto_0

    .line 2325
    .local v0, "res":Z
    :cond_5
    if-nez p6, :cond_0

    .line 2326
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_6

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_7

    .line 2327
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result v0

    .local v0, "res":Z
    goto :goto_0

    .line 2328
    .local v0, "res":Z
    :cond_7
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_0

    .line 2329
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result v0

    .local v0, "res":Z
    goto :goto_0
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "uriStr"    # Ljava/lang/String;
    .param p5, "statusValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2346
    const/4 v1, 0x0

    .line 2348
    .local v1, "count":I
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMessageStatusRead: handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2349
    const-string/jumbo v8, " type "

    .line 2348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2349
    const-string/jumbo v8, " value "

    .line 2348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v6, :cond_0

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v6, :cond_3

    .line 2354
    :cond_0
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 2355
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2356
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2357
    const-string/jumbo v6, "seen"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2359
    .local v5, "where":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2360
    .local v4, "values":Ljava/lang/String;
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> SMS Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2361
    const-string/jumbo v8, " Where "

    .line 2360
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2361
    const-string/jumbo v8, " values "

    .line 2360
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 2363
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2364
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v2, :cond_1

    .line 2365
    iput p5, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    .line 2368
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2369
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " rows updated!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_2
    :goto_0
    if-lez v1, :cond_8

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 2362
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "values":Ljava/lang/String;
    .restart local v5    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2371
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v6, :cond_5

    .line 2372
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2373
    .restart local v3    # "uri":Landroid/net/Uri;
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> MMS Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2375
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2376
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 2377
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2378
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v2, :cond_4

    .line 2379
    iput p5, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v7

    .line 2382
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2383
    const-string/jumbo v6, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " rows updated!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2376
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2384
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v6, :cond_6

    .line 2385
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v6, :cond_2

    .line 2386
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 2387
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2388
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "flag_read"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2389
    const-string/jumbo v6, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2390
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 2391
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2392
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-eqz v2, :cond_7

    .line 2393
    iput p5, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    monitor-exit v7

    .line 2396
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v0, v7, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 2390
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2399
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method declared-synchronized setNotificationFilter(J)V
    .locals 3
    .param p1, "newFilter"    # J

    .prologue
    monitor-enter p0

    .line 946
    :try_start_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 947
    .local v0, "oldFilter":J
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 949
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    move-result v2

    .line 949
    if-eqz v2, :cond_0

    .line 956
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 956
    if-eqz v2, :cond_1

    :cond_1
    monitor-exit p0

    .line 945
    return-void

    .end local v0    # "oldFilter":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNotificationRegistration(I)I
    .locals 6
    .param p1, "notificationStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd3

    const/4 v4, 0x1

    .line 888
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "setNotificationRegistration() enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v2, :cond_0

    .line 890
    return v5

    .line 892
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    .line 893
    .local v0, "mns":Landroid/os/Handler;
    if-eqz v0, :cond_4

    .line 894
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 895
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 896
    iput v4, v1, Landroid/os/Message;->what:I

    .line 919
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 920
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 921
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 924
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNotificationRegistration() send : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to MNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v2, 0xa0

    return v2

    .line 899
    :cond_2
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 900
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->getIsSearchProgress()Z

    move-result v2

    .line 900
    if-eqz v2, :cond_1

    .line 908
    if-ne p1, v4, :cond_3

    .line 909
    return v5

    .line 915
    :cond_3
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 928
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "setNotificationRegistration() Unable to send registration request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return v5
.end method

.method public setObserverRemoteFeatureMask(I)V
    .locals 3
    .param p1, "remoteSupportedFeatures"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 339
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 338
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 340
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 344
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 343
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 345
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 347
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObserverRemoteFeatureMask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, " mMapSupportedFeatures : "

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1028
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 1031
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1033
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1027
    :cond_1
    return-void
.end method
