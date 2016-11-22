.class public Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;
.super Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.source "BluetoothMapContentObserverEmail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$1;
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

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MSG_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserverEmail"

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAuthority:Ljava/lang/String;

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

.field private final mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mTransmitEvents:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->handleMsgListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 87
    const-string/jumbo v0, "BluetoothMap"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    .line 176
    new-array v0, v6, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 178
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v5

    .line 179
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 176
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 183
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 184
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v5

    .line 185
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 186
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 187
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v7

    .line 188
    const-string/jumbo v1, "from_list"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "high_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 182
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 192
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 194
    const-string/jumbo v1, "folder_id"

    aput-object v1, v0, v5

    .line 195
    const-string/jumbo v1, "flag_read"

    aput-object v1, v0, v3

    .line 196
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 197
    const-string/jumbo v1, "subject"

    aput-object v1, v0, v7

    .line 198
    const-string/jumbo v1, "from_list"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "high_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "thread_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 192
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    .line 124
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 126
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 128
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mEnableSmsMms:Z

    .line 129
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserverRegistered:Z

    .line 131
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    .line 134
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 136
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 139
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v1, "DUMMY"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 138
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 140
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    .line 141
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContactUri:Landroid/net/Uri;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mTransmitEvents:Z

    .line 151
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mEventFilter:J

    .line 203
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mInitialized:Z

    .line 323
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$1;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserver:Landroid/database/ContentObserver;

    .line 349
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMsgListMsg:Ljava/util/Map;

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 840
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mPushMsgList:Ljava/util/Map;

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContext:Landroid/content/Context;

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    .line 213
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 214
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasId:I

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 217
    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapContentObserverEmail: Supported features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 220
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 222
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 225
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 227
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 230
    :cond_1
    if-eqz p4, :cond_4

    .line 231
    iget-object v0, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    .line 232
    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_2

    .line 235
    const-string/jumbo v0, "com.android.email.provider"

    .line 234
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    .line 237
    :cond_2
    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_3

    .line 241
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to acquire provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 244
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMsg()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMsgListMsg:Ljava/util/Map;

    .line 245
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMsgListMsg:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->setMsgListMsg(Ljava/util/Map;Z)V

    .line 247
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->initMsgList()V

    .line 250
    :cond_4
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mEnableSmsMms:Z

    .line 251
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 209
    return-void
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
    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method private handleMsgListChanges(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    const-string/jumbo v1, "BluetoothMapContentObserverEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMsgListChanges: account type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 711
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 711
    const-string/jumbo v3, "account Id: "

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 712
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v4

    .line 710
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 712
    const-string/jumbo v3, "masID: "

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 712
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasId:I

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 716
    const-string/jumbo v1, "BluetoothMapContentObserverEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasId:I

    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    const-string/jumbo v3, " restaring ObexServerSession"

    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgListChangesMsg(Landroid/net/Uri;)V
    .locals 53
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v49, "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-nez v4, :cond_0

    .line 505
    return-void

    .line 508
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v12

    .line 508
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, "where":Ljava/lang/String;
    const/16 v47, 0x0

    .line 511
    .local v47, "listChanged":Z
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg Email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 512
    const-string/jumbo v6, "mMapSupportedFeatures Email: "

    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 512
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v52

    monitor-enter v52

    .line 516
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 518
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 517
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 526
    .local v43, "c":Landroid/database/Cursor;
    :goto_0
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg where: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_3
    if-eqz v43, :cond_6

    :try_start_1
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 532
    :cond_4
    const-string/jumbo v4, "_id"

    .line 531
    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 534
    .local v10, "id":J
    const-string/jumbo v4, "mailboxKey"

    .line 533
    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 535
    .local v46, "folderId":I
    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 537
    .local v14, "readFlag":I
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 538
    .local v8, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move/from16 v0, v46

    int-to-long v12, v0

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v45

    .line 540
    .local v45, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v45, :cond_d

    .line 541
    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v20

    .line 548
    .local v20, "newFolder":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_f

    .line 549
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "folderId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    const-string/jumbo v6, " newFolder: "

    .line 549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_5
    const/16 v47, 0x1

    .line 553
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move/from16 v0, v46

    int-to-long v12, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 554
    .restart local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_e

    .line 559
    const-string/jumbo v4, "timeStamp"

    .line 558
    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v22

    .line 562
    .local v22, "date":Ljava/lang/String;
    const-string/jumbo v4, "subject"

    .line 561
    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 564
    .local v23, "subject":Ljava/lang/String;
    const-string/jumbo v4, "fromList"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 563
    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 566
    .local v24, "address":Ljava/lang/String;
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    const-string/jumbo v25, "no"

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    .line 566
    invoke-direct/range {v15 .. v25}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v22    # "date":Ljava/lang/String;
    .end local v23    # "subject":Ljava/lang/String;
    .end local v24    # "address":Ljava/lang/String;
    .local v15, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 660
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_3
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 663
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v10    # "id":J
    .end local v14    # "readFlag":I
    .end local v20    # "newFolder":Ljava/lang/String;
    .end local v45    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v46    # "folderId":I
    :cond_6
    if-eqz v43, :cond_7

    :try_start_2
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "msg$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 667
    .restart local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v50

    .line 669
    .local v50, "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/16 v47, 0x1

    .line 670
    if-eqz v50, :cond_1f

    .line 671
    invoke-virtual/range {v50 .. v50}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v30

    .line 679
    .local v30, "oldFolder":Ljava/lang/String;
    :goto_5
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v4, :cond_a

    .line 680
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 682
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v4, :cond_9

    .line 683
    const/16 v30, 0x0

    .line 684
    .end local v30    # "oldFolder":Ljava/lang/String;
    :cond_9
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "SendingSuccess"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v38, v0

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v42

    .line 684
    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-object/from16 v40, v30

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 686
    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 691
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_a
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-nez v4, :cond_8

    .line 692
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    if-nez v4, :cond_20

    .line 694
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v38, v0

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v42

    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-object/from16 v40, v30

    .line 694
    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 696
    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 514
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v43    # "c":Landroid/database/Cursor;
    .end local v48    # "msg$iterator":Ljava/util/Iterator;
    .end local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_0
    move-exception v4

    monitor-exit v52

    throw v4

    .line 519
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_c

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 521
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 520
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .restart local v43    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 523
    .end local v43    # "c":Landroid/database/Cursor;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 524
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 523
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v43

    .restart local v43    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 544
    .restart local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v10    # "id":J
    .restart local v14    # "readFlag":I
    .restart local v45    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v46    # "folderId":I
    :cond_d
    :try_start_4
    const-string/jumbo v20, "unknown"

    .restart local v20    # "newFolder":Ljava/lang/String;
    goto/16 :goto_1

    .line 569
    :cond_e
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "NewMessage"

    sget-object v32, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v31, 0x0

    move-object/from16 v25, v15

    move-object/from16 v26, p0

    move-wide/from16 v28, v10

    move-object/from16 v30, v20

    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    goto/16 :goto_2

    .line 573
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_f
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "folderId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, " newFolder: "

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, "oldFolder: "

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 575
    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 573
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_10
    move/from16 v0, v46

    int-to-long v4, v0

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_12

    iget-wide v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    const-wide/16 v12, -0x1

    cmp-long v4, v4, v12

    if-eqz v4, :cond_12

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v50

    .line 581
    .restart local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const/16 v47, 0x1

    .line 582
    if-eqz v50, :cond_15

    .line 583
    invoke-virtual/range {v50 .. v50}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v30

    .line 589
    .restart local v30    # "oldFolder":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 590
    const-string/jumbo v5, "DELETED"

    .line 589
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v44

    .line 592
    .local v44, "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 593
    const-string/jumbo v5, "SENT"

    .line 592
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v51

    .line 599
    .local v51, "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v44, :cond_18

    invoke-virtual/range {v44 .. v44}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    .line 600
    move/from16 v0, v46

    int-to-long v12, v0

    .line 599
    cmp-long v4, v4, v12

    if-nez v4, :cond_18

    .line 601
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    if-nez v4, :cond_16

    .line 603
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v27, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v28, v0

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v32

    const/16 v31, 0x0

    move-object/from16 v25, v15

    move-object/from16 v26, p0

    .line 603
    invoke-direct/range {v25 .. v32}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 605
    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 639
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_11
    :goto_7
    move/from16 v0, v46

    int-to-long v4, v0

    iput-wide v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 641
    .end local v30    # "oldFolder":Ljava/lang/String;
    .end local v44    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v51    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_12
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v14, v4, :cond_13

    .line 642
    const/16 v47, 0x1

    .line 644
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 645
    const/16 v5, 0xa

    .line 644
    if-le v4, v5, :cond_13

    .line 646
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedReadStatus:Z

    if-nez v4, :cond_1d

    .line 647
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "ReadStatusChanged"

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    .line 647
    invoke-direct/range {v15 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 649
    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 654
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :goto_8
    iput v14, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 658
    :cond_13
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 662
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v10    # "id":J
    .end local v14    # "readFlag":I
    .end local v20    # "newFolder":Ljava/lang/String;
    .end local v45    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v46    # "folderId":I
    :catchall_1
    move-exception v4

    .line 663
    if-eqz v43, :cond_14

    :try_start_5
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_14
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 586
    .restart local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v10    # "id":J
    .restart local v14    # "readFlag":I
    .restart local v20    # "newFolder":Ljava/lang/String;
    .restart local v45    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v46    # "folderId":I
    .restart local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_15
    :try_start_6
    const-string/jumbo v30, "unknown"

    .restart local v30    # "oldFolder":Ljava/lang/String;
    goto/16 :goto_6

    .line 607
    .restart local v44    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v51    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_16
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    const-string/jumbo v5, " Ignore MCE initiated Shift/Delete"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_17
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    goto :goto_7

    .line 610
    :cond_18
    if-eqz v51, :cond_1a

    .line 611
    invoke-virtual/range {v51 .. v51}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    move/from16 v0, v46

    int-to-long v12, v0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1a

    .line 612
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v4, :cond_1a

    .line 613
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v4, :cond_19

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 616
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 614
    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    .line 618
    :cond_19
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 620
    new-instance v31, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageShift"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v34, v0

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v38

    move-object/from16 v32, p0

    move-object/from16 v36, v20

    move-object/from16 v37, v30

    .line 620
    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 622
    .local v31, "evt_shift":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 623
    new-instance v33, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v35, "SendingSuccess"

    .line 624
    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v40

    const/16 v39, 0x0

    move-object/from16 v34, p0

    move-object/from16 v38, v20

    .line 623
    invoke-direct/range {v33 .. v40}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 625
    .local v33, "evt_send":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_7

    .line 628
    .end local v31    # "evt_shift":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v33    # "evt_send":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1a
    const-string/jumbo v4, "root"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 629
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    if-nez v4, :cond_1b

    .line 630
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "MessageShift"

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v42

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-wide/from16 v38, v10

    move-object/from16 v40, v20

    move-object/from16 v41, v30

    .line 630
    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 632
    .restart local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_7

    .line 634
    .end local v15    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1b
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    const-string/jumbo v5, " Ignore MCE initiated shift"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1c
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    goto/16 :goto_7

    .line 651
    .end local v30    # "oldFolder":Ljava/lang/String;
    .end local v44    # "deletedFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v51    # "sentFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_1d
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    const-string/jumbo v5, " Ignore MCE initiated ReadStatus change"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1e
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedReadStatus:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_8

    .line 673
    .end local v10    # "id":J
    .end local v14    # "readFlag":I
    .end local v20    # "newFolder":Ljava/lang/String;
    .end local v45    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v46    # "folderId":I
    .restart local v48    # "msg$iterator":Ljava/util/Iterator;
    .restart local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_1f
    :try_start_7
    const-string/jumbo v30, "unknown"

    .restart local v30    # "oldFolder":Ljava/lang/String;
    goto/16 :goto_5

    .line 698
    .end local v30    # "oldFolder":Ljava/lang/String;
    :cond_20
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v4, :cond_21

    const-string/jumbo v4, "BluetoothMapContentObserverEmail"

    const-string/jumbo v5, " Ignore MCE initiated shift/delete"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_21
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    goto/16 :goto_4

    .line 703
    .end local v8    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v50    # "oldFolderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v52

    .line 499
    return-void
.end method

.method private initMsgList()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    const-string/jumbo v4, "initMsgList"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v2, :cond_4

    .line 468
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v14, "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    .line 470
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accountKey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v16

    .line 470
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->BT_EMAIL_MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 473
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 472
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 476
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_2

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    :cond_1
    const-string/jumbo v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 481
    .local v8, "id":J
    const-string/jumbo v2, "mailboxKey"

    .line 480
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    .line 483
    .local v10, "folderId":J
    const-string/jumbo v2, "flagRead"

    .line 482
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 484
    .local v12, "readFlag":I
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 485
    .local v6, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 489
    .end local v6    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v8    # "id":J
    .end local v10    # "folderId":J
    .end local v12    # "readFlag":I
    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 493
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 464
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "where":Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :cond_4
    return-void

    .line 488
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "msgList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    :catchall_0
    move-exception v2

    .line 489
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_5
    throw v2

    .line 492
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 8
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 389
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mTransmitEvents:Z

    if-nez v3, :cond_1

    .line 390
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    const-string/jumbo v4, "mTransmitEvents == false - don\'t send event."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    return-void

    .line 394
    :cond_1
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 395
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, " "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, " "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, " "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    const-string/jumbo v5, " "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    const-string/jumbo v5, " "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    :cond_2
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    const-string/jumbo v4, "sendEvent: No MNS client registered or connected- don\'t send event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 404
    :cond_3
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mEventFilter:J

    .line 409
    .local v0, "eventFilter":J
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "NewMessage"

    if-ne v3, v4, :cond_4

    .line 410
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventNewMessage(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 411
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 412
    return-void

    .line 414
    :cond_4
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageDeleted"

    if-ne v3, v4, :cond_5

    .line 415
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventMessageDeleted(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 416
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 417
    return-void

    .line 419
    :cond_5
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageRemoved"

    if-ne v3, v4, :cond_6

    .line 420
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventMessageRemoved(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 421
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 422
    return-void

    .line 424
    :cond_6
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageShift"

    if-ne v3, v4, :cond_7

    .line 425
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventMessageShift(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 426
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 427
    return-void

    .line 429
    :cond_7
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliverySuccess"

    if-ne v3, v4, :cond_8

    .line 430
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventDeliverySuccess(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 431
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 432
    return-void

    .line 434
    :cond_8
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingSuccess"

    if-ne v3, v4, :cond_9

    .line 435
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventSendingSuccess(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 436
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 437
    return-void

    .line 439
    :cond_9
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingFailure"

    if-ne v3, v4, :cond_a

    .line 440
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventSendingFailed(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 441
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 442
    return-void

    .line 444
    :cond_a
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliveryFailure"

    if-ne v3, v4, :cond_b

    .line 445
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventDeliveryFailed(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 446
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 447
    return-void

    .line 449
    :cond_b
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ReadStatusChanged"

    if-ne v3, v4, :cond_c

    .line 450
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->sendEventReadStatusChanged(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 451
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

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

    .line 452
    return-void

    .line 457
    :cond_c
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v2

    .line 460
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    const-string/jumbo v4, "Exception - should not happen: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendEventDeliveryFailed(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 312
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
    .line 308
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
    .line 292
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
    .line 320
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
    .line 296
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
    .line 288
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

.method private static sendEventReadStatusChanged(J)Z
    .locals 4
    .param p0, "eventFilter"    # J

    .prologue
    .line 316
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
    .line 304
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
    .line 300
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
    .line 259
    .local p1, "msgListMsg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMsgListMsg:Ljava/util/Map;

    .line 260
    if-eqz p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMsg(Ljava/util/Map;)V

    .line 258
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mInitialized:Z

    .line 977
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->unregisterObserver()V

    .line 975
    return-void
.end method

.method public getObserverRemoteFeatureMask()I
    .locals 3

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getObserverRemoteFeatureMask Email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v2, " mMapSupportedFeatures Email: "

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mInitialized:Z

    .line 971
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)J
    .locals 39
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
    .line 846
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "pushMessage emailBaseUri: "

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v22

    .line 848
    .local v22, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getOriginators()Ljava/util/ArrayList;

    move-result-object v19

    .line 849
    .local v19, "originatorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 850
    const/16 v29, 0x0

    .line 851
    .local v29, "transparent":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v23

    .line 852
    .local v23, "retry":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v12

    .line 853
    .local v12, "charset":I
    const-wide/16 v4, -0x1

    .line 854
    .local v4, "handle":J
    const-wide/16 v6, -0x1

    .line 855
    .local v6, "folderId":J
    if-nez v22, :cond_1

    .line 856
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    const-string/jumbo v8, "empty recipient list"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-wide/16 v36, -0x1

    return-wide v36

    .line 850
    .end local v4    # "handle":J
    .end local v6    # "folderId":J
    .end local v12    # "charset":I
    .end local v23    # "retry":I
    .end local v29    # "transparent":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v29

    .restart local v29    # "transparent":I
    goto :goto_0

    .line 859
    .restart local v4    # "handle":J
    .restart local v6    # "folderId":J
    .restart local v12    # "charset":I
    .restart local v23    # "retry":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 860
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 861
    .local v14, "folder":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string/jumbo v3, "OUTBOX"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 862
    const-string/jumbo v3, "DRAFTS"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 861
    if-nez v3, :cond_2

    .line 863
    const-string/jumbo v3, "DRAFT"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 861
    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v3, p1

    .line 869
    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v18

    .line 870
    .local v18, "msgBody":Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v3, :cond_4

    .line 871
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v16

    .line 872
    .local v16, "length":I
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "pushMessage: message string length = "

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string/jumbo v3, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 874
    .local v17, "messages":[Ljava/lang/String;
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "pushMessage: messages count="

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v15, v3, :cond_4

    .line 876
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "part "

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v35, ":"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v35, v17, v15

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 865
    .end local v15    # "i":I
    .end local v16    # "length":I
    .end local v17    # "messages":[Ljava/lang/String;
    .end local v18    # "msgBody":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Cannot push message to other folders than outbox/draft"

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 879
    .restart local v18    # "msgBody":Ljava/lang/String;
    :cond_4
    const/16 v28, 0x0

    .line 880
    .local v28, "toAddress":[Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v28    # "toAddress":[Ljava/lang/String;
    .local v21, "recipient$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 881
    .local v20, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v3

    if-nez v3, :cond_5

    .line 882
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEmailAddresses()[Ljava/lang/String;

    move-result-object v28

    .line 884
    :cond_5
    const-string/jumbo v3, "com.android.email.provider"

    .line 883
    invoke-static {v3}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 885
    .local v30, "uriInsert":Landroid/net/Uri;
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "pushMessage - uriInsert= "

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 886
    const-string/jumbo v35, ", intoFolder id="

    .line 885
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v36

    .line 885
    move-wide/from16 v0, v36

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v35

    monitor-enter v35

    .line 889
    :try_start_0
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 890
    .local v33, "values":Landroid/content/ContentValues;
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 891
    .local v27, "timeObj":Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 892
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    .line 893
    const-string/jumbo v3, "mailboxKey"

    .line 894
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 893
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 896
    const-string/jumbo v8, "subject"

    .line 897
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageExtEmail;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 896
    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :goto_3
    const-string/jumbo v3, "syncServerTimeStamp"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const-string/jumbo v3, "syncServerId"

    const-string/jumbo v8, "5:65"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v3, "timeStamp"

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 904
    const-string/jumbo v3, "flagLoaded"

    const-string/jumbo v8, "1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v3, "flagFavorite"

    const-string/jumbo v8, "0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v3, "flagAttachment"

    const-string/jumbo v8, "0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "DRAFT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 908
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 909
    const-string/jumbo v8, "DRAFTS"

    .line 908
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 907
    if-eqz v3, :cond_8

    .line 910
    :cond_6
    const-string/jumbo v3, "flags"

    const-string/jumbo v8, "1179648"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_4
    const-string/jumbo v3, "/"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 914
    .local v25, "splitStr":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v8, v0

    :goto_5
    if-ge v3, v8, :cond_9

    aget-object v26, v25, v3

    .line 915
    .local v26, "str":Ljava/lang/String;
    const-string/jumbo v36, "BluetoothMapContentObserverEmail"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "seg for mBaseUri: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 899
    .end local v25    # "splitStr":[Ljava/lang/String;
    .end local v26    # "str":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "subject"

    const-string/jumbo v8, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 887
    .end local v27    # "timeObj":Landroid/text/format/Time;
    .end local v33    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v35

    throw v3

    .line 912
    .restart local v27    # "timeObj":Landroid/text/format/Time;
    .restart local v33    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_1
    const-string/jumbo v3, "flags"

    const-string/jumbo v8, "0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 916
    .restart local v25    # "splitStr":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_a

    .line 917
    const-string/jumbo v3, "accountKey"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    const-string/jumbo v3, "displayName"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string/jumbo v3, "fromList"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_a
    const-string/jumbo v3, "mailboxKey"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 922
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .local v9, "address":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    array-length v8, v0

    :goto_6
    if-ge v3, v8, :cond_b

    aget-object v24, v28, v3

    .line 924
    .local v24, "s":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string/jumbo v36, ";"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 927
    .end local v24    # "s":Ljava/lang/String;
    :cond_b
    const-string/jumbo v3, "toList"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string/jumbo v3, "flagRead"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 930
    .local v32, "uriNew":Landroid/net/Uri;
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "pushMessage - uriNew= "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 932
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v3, :cond_c

    .line 933
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, " NEW HANDLE "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_c
    const-wide/16 v36, -0x1

    cmp-long v3, v4, v36

    if-nez v3, :cond_d

    .line 936
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    const-string/jumbo v8, " Inavlid Handle "

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    const-wide/16 v36, -0x1

    monitor-exit v35

    return-wide v36

    .line 940
    :cond_d
    :try_start_2
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .local v34, "valuesBody":Landroid/content/ContentValues;
    const-string/jumbo v3, "messageKey"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string/jumbo v3, "textContent"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v3, "com.android.email.provider"

    .line 943
    invoke-static {v3}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailMessageBodyUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 945
    .local v31, "uriMsgBdyInsert":Landroid/net/Uri;
    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "pushMessage - uriMsgBdyInsert = "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 950
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 951
    .local v2, "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 952
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 954
    const-string/jumbo v3, "OUTBOX"

    .line 953
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v36

    cmp-long v3, v6, v36

    if-nez v3, :cond_f

    .line 956
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 957
    .local v13, "emailIn":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v10

    .line 958
    .local v10, "accountId":J
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "BluetoothMapContentObserverEmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "sendIntent SEND: "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v36, "accounId: "

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_e
    const-string/jumbo v3, "org.codeaurora.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string/jumbo v3, "org.codeaurora.email.intent.extra.ACCOUNT"

    invoke-virtual {v13, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    .end local v10    # "accountId":J
    .end local v13    # "emailIn":Landroid/content/Intent;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v35

    goto/16 :goto_2

    .line 951
    :cond_10
    const/4 v3, 0x0

    goto :goto_7

    .line 968
    .end local v2    # "newMsg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v9    # "address":Ljava/lang/StringBuilder;
    .end local v14    # "folder":Ljava/lang/String;
    .end local v18    # "msgBody":Ljava/lang/String;
    .end local v20    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v21    # "recipient$iterator":Ljava/util/Iterator;
    .end local v25    # "splitStr":[Ljava/lang/String;
    .end local v27    # "timeObj":Landroid/text/format/Time;
    .end local v30    # "uriInsert":Landroid/net/Uri;
    .end local v31    # "uriMsgBdyInsert":Landroid/net/Uri;
    .end local v32    # "uriNew":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    .end local v34    # "valuesBody":Landroid/content/ContentValues;
    :cond_11
    return-wide v4
.end method

.method public registerObserver()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    const-string/jumbo v3, "registerObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserverRegistered:Z

    if-eqz v2, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    .line 360
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-static {v2, v3}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailContract;->buildEmailAccountUriWithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 361
    .local v0, "EMAIL_URI":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerObserver EMAIL_URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v2, v3, :cond_4

    .line 363
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 364
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_3

    .line 365
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to acquire provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 368
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->initMsgList()V

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserverRegistered:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_4
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLite exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 0
    .param p1, "folderStructure"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 346
    return-void
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "mCurrentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .param p5, "uriStr"    # Ljava/lang/String;
    .param p6, "statusValue"    # I

    .prologue
    .line 734
    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageStatusDeleted: EMAIL handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    const-string/jumbo v5, " type "

    .line 734
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    const-string/jumbo v5, " value "

    .line 734
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    const-string/jumbo v5, " URI: "

    .line 734
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v16, 0x0

    .line 737
    .local v16, "res":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v8

    .line 738
    .local v8, "accountId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMessageUri:Landroid/net/Uri;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 739
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URI print: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 742
    .local v10, "crEmail":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 743
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageStatusDeleted: EMAIL handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 744
    const-string/jumbo v5, " type "

    .line 743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 744
    const-string/jumbo v5, " value "

    .line 743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 744
    const-string/jumbo v5, "accountId: "

    .line 743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v11, "emailIn":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 747
    .local v15, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 748
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    check-cast v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v15, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    monitor-exit v4

    .line 750
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_4

    .line 751
    const-string/jumbo v2, "org.codeaurora.email.intent.action.MAIL_SERVICE_DELETE_MESSAGE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    :goto_0
    const-string/jumbo v2, "org.codeaurora.email.intent.extra.ACCOUNT"

    invoke-virtual {v11, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 762
    const-string/jumbo v2, "org.codeaurora.email.intent.extra.MESSAGE_ID"

    move-wide/from16 v0, p1

    invoke-virtual {v11, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    const/16 v16, 0x1

    .line 766
    if-eqz v15, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    .line 770
    .end local v11    # "emailIn":Landroid/content/Intent;
    .end local v15    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 771
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_2
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " END setMessageStatusDeleted: EMAIL handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 774
    const-string/jumbo v5, " value "

    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 774
    const-string/jumbo v5, "accountId: "

    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_3
    return v16

    .line 747
    .restart local v11    # "emailIn":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 753
    .restart local v15    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_4
    const-string/jumbo v2, "org.codeaurora.email.intent.action.MAIL_SERVICE_MOVE_MESSAGE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-wide/16 v12, -0x1

    .line 757
    .local v12, "folderId":J
    const-string/jumbo v2, "INBOX"

    .line 756
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v14

    .line 758
    .local v14, "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-wide/16 v12, 0x0

    .line 759
    const-string/jumbo v2, "org.codeaurora.email.intent.extra.MESSAGE_INFO"

    invoke-virtual {v11, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 768
    .end local v11    # "emailIn":Landroid/content/Intent;
    .end local v12    # "folderId":J
    .end local v14    # "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v15    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentObserverEmail"

    const-string/jumbo v4, "Returning from setMessage Status Deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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
    .line 789
    const/4 v4, 0x1

    .line 791
    .local v4, "res":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v2, "emailIn":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v0

    .line 793
    .local v0, "accountId":J
    const/4 v3, 0x0

    .line 794
    .local v3, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 795
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->getMsgListMsg()Ljava/util/Map;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    monitor-exit v6

    .line 797
    const-string/jumbo v5, "BluetoothMapContentObserverEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMessageStatusRead: EMAIL handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 798
    const-string/jumbo v7, " type "

    .line 797
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 798
    const-string/jumbo v7, " value "

    .line 797
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 798
    const-string/jumbo v7, "accounId: "

    .line 797
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string/jumbo v5, "org.codeaurora.email.intent.action.MAIL_SERVICE_MESSAGE_READ"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string/jumbo v5, "org.codeaurora.email.intent.extra.MESSAGE_INFO"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    const-string/jumbo v5, "org.codeaurora.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 802
    const-string/jumbo v5, "org.codeaurora.email.intent.extra.MESSAGE_ID"

    invoke-virtual {v2, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 804
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedReadStatus:Z

    .line 805
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    return v4

    .line 794
    .end local v3    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setObserverRemoteFeatureMask(I)V
    .locals 3
    .param p1, "remoteSupportedFeatures"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 275
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 274
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 276
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 280
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 279
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 281
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    .line 283
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObserverRemoteFeatureMask Email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string/jumbo v2, " mMapSupportedFeatures Email: "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mMapSupportedFeatures:I

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserverEmail"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mObserverRegistered:Z

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 383
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 377
    :cond_1
    return-void
.end method
